// prints status information from buttons, knob, joystick, to display
// plots bar

#include <Wire.h>
#include <Encoder.h>
#include <Adafruit_GFX.h>
#include "Adafruit_LEDBackpack.h"
#include <Adafruit_SSD1306.h>

// global variables for displays
#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64
Adafruit_24bargraph bar = Adafruit_24bargraph();
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire1, -1);

// --- global variables for inputs ---

// encoder
#define ENCA 30
#define ENCB 31
#define SELSW 41
#define NEXTSW 37

// d-pad
#define LSW 15
#define RSW 14
#define USW 36
#define DSW 35
#define CSW 40

// joystick
#define XAX A9
#define YAX A8

// voltage
#define VMON5 A7
#define VMON10 A6
#define VMON33 A5

// global variables for encoder
Encoder enc(ENCA, ENCB);


void setup() {
  // --- serial and display setup
  Serial.begin(9600);
  Serial.println("OpenSTM Control Board V0.2 Initialization...");
  bar.begin(0x70);
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

  Serial.println("->Bar graph init complete");

  if(!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) {
    Serial.println("->SSD1306 init failed");
  }

  display.clearDisplay();
  display.setTextSize(1);
  display.setTextColor(SSD1306_WHITE);
  display.setCursor(0,0);
  display.println("init complete");
  display.display();
  delay(1000);


  Serial.println("->Display init complete");


  // declaring IO

  pinMode(SELSW, INPUT);
  pinMode(NEXTSW, INPUT);
  pinMode(LSW, INPUT);
  pinMode(RSW, INPUT);
  pinMode(USW, INPUT);
  pinMode(DSW, INPUT);
  pinMode(CSW, INPUT);

}

#define MAINDISPOFFSET 20

String overallStatus = "init complete";

void updateDisplay() {
  // fetching values
  long encoderPos = enc.read();
  int joyX = analogRead(XAX);
  int joyY = analogRead(YAX);
  int sel  = digitalRead(SELSW);
  int next = digitalRead(NEXTSW);
  int left = digitalRead(LSW);
  int right = digitalRead(RSW);
  int up = digitalRead(USW);
  int down = digitalRead(DSW);
  int center = digitalRead(CSW);
  float v5mon = (float) analogRead(VMON5) * 3.0 / 1024.0 * 3.3;
  float v10mon = (float) analogRead(VMON10) * 5.7 / 1024.0 * 3.3;
  float v33mon = (float) analogRead(VMON33) * 2.0 / 1024.0 * 3.3;

  String encoderStr = "NA";
  if (sel == 0) encoderStr = "SEL";
  else if (next == 0) encoderStr = "NXT";
  else encoderStr = "NA";

  String dpadStr = "NA";
  if (left == 0) dpadStr = "LFT";
  else if (right == 0) dpadStr = "RHT";
  else if (up == 0) dpadStr = "UP";
  else if (down == 0) dpadStr = "DWN";
  else if (center == 0) dpadStr = "CTR";
  else dpadStr = "NA";
  
  // fetches relevant quantities and prints on display
  display.clearDisplay();
  display.setTextSize(1);
  display.setTextColor(SSD1306_WHITE);
  display.setCursor(0, 0);
  display.println(overallStatus);

  // encoder
  display.setCursor(0, MAINDISPOFFSET);
  display.println("POS");
  display.setCursor(30, MAINDISPOFFSET);
  display.println(encoderPos);
  display.setCursor(60, MAINDISPOFFSET);
  display.println(encoderStr);

  // joystick
  display.setCursor(0, MAINDISPOFFSET+15);
  display.println("JOY");
  display.setCursor(30, MAINDISPOFFSET+15);
  display.println(joyX);
  display.setCursor(60, MAINDISPOFFSET+15);
  display.println(joyY);
  display.setCursor(90, MAINDISPOFFSET+15);
  display.println(dpadStr);

  // voltage
  display.setCursor(0, MAINDISPOFFSET+30);
  display.println("VLT");
  display.setCursor(30, MAINDISPOFFSET+30);
  display.println(v33mon, 2);
  display.setCursor(60, MAINDISPOFFSET+30);
  display.println(v5mon, 2);
  display.setCursor(90, MAINDISPOFFSET+30);
  display.println(v10mon, 2);
  
  display.display();

  // drawing to bar
  int encoderPosDraw = encoderPos / 2;
  if (encoderPosDraw > 23) encoderPosDraw = 23;
  if (encoderPosDraw < 0) encoderPosDraw = 0;
    
  for (int b = 0; b < encoderPosDraw; b++) {
    bar.setBar(24-b, LED_GREEN);
  }
  for (int b = encoderPosDraw; b < 25; b++) {
    bar.setBar(24-b, LED_OFF);
  }
  bar.writeDisplay();

}

void loop() {
  // put your main code here, to run repeatedly:
  updateDisplay();
  delay(10);

}
