#include <SPI.h>
#include <Stepper.h>
#include <Wire.h>
#include <Encoder.h>
#include <Adafruit_GFX.h>
#include "Adafruit_LEDBackpack.h"
#include <Adafruit_SSD1306.h>
#include <math.h>
#include "displaydata.h"


// Interface Definitions (Device)
// ---PIEZO---
// on SPI0
#define PIEZO_CS 10

// ---TIA---
// on SPI1
#define TIA_CS 34 // Tied to CONVST
#define TIA_DIN 38 // Hold this HIGH

// ---STEPPER1---
#define STEPPER0_A 5
#define STEPPER0_B 4
#define STEPPER0_C 3
#define STEPPER0_D 2

// ---STEPPER2---
#define STEPPER1_A 9
#define STEPPER1_B 8
#define STEPPER1_C 7
#define STEPPER1_D 6

// ---STEPPER3---
#define STEPPER2_A 32
#define STEPPER2_B 33
#define STEPPER2_C 25
#define STEPPER2_D 24

// Interface Definitions (UI)

// ---encoder---
#define ENCA 30
#define ENCB 31
#define SELSW 41
#define NEXTSW 37

// ---d-pad---
#define LSW 15
#define RSW 14
#define USW 36
#define DSW 35
#define CSW 40

// ---joystick---
#define XAX A9
#define YAX A8

// ---voltage---
#define VMON5 A7
#define VMON10 A6
#define VMON33 A5

// ---displays---
#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64


// Global variables

// Device
const int stepsPerRevolution = 4096;
Stepper stepper0(stepsPerRevolution, STEPPER0_A, STEPPER0_B, STEPPER0_C, STEPPER0_D);
Stepper stepper1(stepsPerRevolution, STEPPER1_A, STEPPER1_B, STEPPER1_C, STEPPER1_D);
Stepper stepper2(stepsPerRevolution, STEPPER2_A, STEPPER2_B, STEPPER2_C, STEPPER2_D);

// UI
Encoder enc(ENCA, ENCB);
Adafruit_24bargraph bar = Adafruit_24bargraph();
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire1, -1);

// Software Settings

// Hardware monitors

#define ALLOWEDRAILVARIANCE 50 // steps, 10-bit
#define VMON5EXPECTED 517 // 10-bit
#define VMON10EXPECTED 544 // 10-bit
#define VMON33EXPECTED 465 // 10-bit


// TIA: note 0.3V bias on V+, 1e8 transimpedance gain, 16 bit ADC @ 3.3V reference

#define DESIREDCURRENT 11915 // 3nA
#define OVERCURRENT 45677 // 20nA
#define LOWCURRENT  6156 // 0.1nA
#define HIGHCURRENT 25817 // 10nA

void setupTIA() {
    pinMode(TIA_CS, OUTPUT);
    SPI1.begin();
    SPI1.beginTransaction(SPISettings(100000, MSBFIRST, SPI_MODE3));
    delay(10);
}

void setupPiezo() {
    pinMode(PIEZO_CS, OUTPUT);
    SPI.begin();
    SPI.beginTransaction(SPISettings(1000000, MSBFIRST, SPI_MODE1));
    // turning all channels on
    digitalWrite(PIEZO_CS, LOW);
    SPI.transfer(0b00000100);
    SPI.transfer(0b00000000);
    SPI.transfer(0b00000000);
    SPI.transfer(0b11111111);
    digitalWrite(PIEZO_CS, HIGH);
    // setting int reference
    digitalWrite(PIEZO_CS, LOW);
    SPI.transfer(0b00001000);
    SPI.transfer(0b00000000);
    SPI.transfer(0b00000000);
    SPI.transfer(0b00000001);
    digitalWrite(PIEZO_CS, HIGH);
    delay(10);
}

void setupUI() {

    pinMode(SELSW, INPUT);
    pinMode(NEXTSW, INPUT);
    pinMode(LSW, INPUT);
    pinMode(RSW, INPUT);
    pinMode(USW, INPUT);
    pinMode(DSW, INPUT);
    pinMode(CSW, INPUT);

    bar.begin(0x70);
    display.begin(SSD1306_SWITCHCAPVCC, 0x3C);

    // fun bar graphics
    for (int i = 0; i < 25; i++) {
        for (int b = 0; b < i; b++) {
        bar.setBar(24-b, LED_GREEN);
        }
        for (int b = i; b < 25; b++) {
        bar.setBar(24-b, LED_OFF);
        }
        bar.writeDisplay();
        delay(100);
    }
    
    delay(100);
    for (int b = 0; b < 24; b++) {
        bar.setBar(b, LED_OFF);
    }

    bar.writeDisplay();

    display.clearDisplay();
    display.setTextSize(1);
    display.setTextColor(SSD1306_WHITE);
    display.setCursor(0,0);
    display.println("UI init complete");
    display.display();

    delay(100);
}

void setupSteppers() {
    stepper0.setSpeed(2);
    stepper1.setSpeed(2);
    stepper2.setSpeed(2);
}

void setDAC(int channel, int value) {
    unsigned int dacMSB = highByte(value);
    unsigned int dacLSB = lowByte(value);

    byte command = 0b00000011;
    byte addrD1  = lowByte(channel) << 4 | dacMSB >> 4;
    byte addrD2  = dacMSB << 4 | dacLSB >> 4;
    byte addrD3  = dacLSB << 4;

    digitalWrite(PIEZO_CS, LOW);
    SPI.transfer(command);
    SPI.transfer(addrD1);
    SPI.transfer(addrD2);
    SPI.transfer(addrD3);
    digitalWrite(PIEZO_CS, HIGH);
}

int readTIA() {
    int sumVal = 0;
    for (int i = 0; i < 5; i++) {
        digitalWrite(TIA_CS, LOW);
        delayMicroseconds(1);
        digitalWrite(TIA_CS, HIGH);
        delayMicroseconds(1);
        digitalWrite(TIA_CS, LOW);
        int16_t receivedVal_high = (int16_t) SPI1.transfer(0xff);
        int16_t receivedVal_low  = (int16_t) SPI1.transfer(0xff);
        delayMicroseconds(1);
        digitalWrite(TIA_CS, HIGH);
        delayMicroseconds(1);
        digitalWrite(TIA_CS, LOW);
        int receivedVal = receivedVal_high << 8 | receivedVal_low;
        sumVal += receivedVal;
    }

    return sumVal/5; // might bias results to lower val due to rounding err, but we're ok with this
}

void moveStepperSteps(int steps) {
    stepper0.step(steps);
    stepper1.step(steps);
    stepper2.step(steps);
}

void setup() {
    // Overall setup
    Serial.begin(9600);
    Serial.println("Initializing OpenSTM V0.2");
    setupTIA();
    Serial.println("Initialized TIA");
    setupPiezo();
    Serial.println("Initialized Piezo Driver");
    setupSteppers();
    Serial.println("Initialized Steppers");
    setupUI();
    Serial.println("Initialized UI");

    // Basic readouts
}

void drawDisplay(displayData data) {
    // initial setup
    display.clearDisplay();
    display.setTextSize(1);
    display.setTextColor(SSD1306_WHITE);
    display.setCursor(0, 0);
    // writing status codes
    switch (data.status) {
        case 0:
            display.println("NO ERR");
        case 1:
            display.println("10V ERR");
            break;
        case 2:
            display.println("5V ERR");
            break;
        case 3:
            display.println("3.3V ERR");
            break;
    }

    // writing piezo position
    display.setCursor(0, 20);
    display.println("POS");
    display.setCursor(30, 20);
    display.println(data.xpos);
    display.setCursor(60, 20);
    display.println(data.ypos);
    display.setCursor(90, 20);
    display.println(data.zpos);

    // writing stepper position
    display.setCursor(0,35);
    display.println("STEPPER POS");
    display.setCursor(60, 35);
    display.println(data.zposStepper);

    // writing current
    display.setCursor(0, 50);
    display.println("CURRENT");
    display.setCursor(60, 50);
    display.println(data.current);
}



int checkVoltageStatus() {
    // check from least important -> most important, returns error code
    int status = 0;

    int vmon10val = analogRead(VMON10);
    int vmon5val  = analogRead(VMON5);
    int vmon33val = analogRead(VMON33);

    if (   
           vmon10val > (VMON10EXPECTED + ALLOWEDRAILVARIANCE)
        || vmon10val < (VMON10EXPECTED - ALLOWEDRAILVARIANCE)
       ) 
       {
            status = 1;
        }
    else if (   
           vmon5val > (VMON5EXPECTED + ALLOWEDRAILVARIANCE)
        || vmon5val < (VMON5EXPECTED - ALLOWEDRAILVARIANCE)
       ) 
       {
            status = 2;
        }
    else if (   
           vmon33val > (VMON33EXPECTED + ALLOWEDRAILVARIANCE)
        || vmon33val < (VMON33EXPECTED - ALLOWEDRAILVARIANCE)
       ) 
       {
            status = 3;
        }
    
    return status;
}

void plotBarsLog(int value) {
    // Expects a 16-bit value from 5957 t0 2^16-1, maps to 24 bars
    // Changes bar color from yellow (LOWCURRENT) to green to red (HIGHCURRENT)

    int color = LED_GREEN;

    if (value < LOWCURRENT)  color = LED_YELLOW;
    if (value > HIGHCURRENT) color = LED_RED;

    int num_bars = (int) (log10 ( (double) value) - 3.7) * 22.0 ;

    if (num_bars < 1) num_bars = 1;
    if (num_bars > 23) num_bars = 23;

    // updating display
    for (int b = 0; b < num_bars; b++) bar.setBar(24-b, color);
    for (int b = num_bars; b < 25; b++) bar.setBar(24-b, LED_OFF);
    bar.writeDisplay();

}

void initialApproach() {
    /*  
        1) retract steppers one turn to prevent backlash
        2) advance steppers until current detected, then stop steppers
        3) advance piezos until reach desired current
    */
   Serial.println("Starting Initial Approach");
   displayData display;
}

void main() {
    current = readTIA();
    displayData data = {current, 0, 0, 0, 0, checkVoltageStatus()};
    plotBarsLog(current);
    drawDisplay(data);

    delay(10);
}
