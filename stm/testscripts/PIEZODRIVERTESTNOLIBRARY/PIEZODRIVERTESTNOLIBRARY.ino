#include <SPI.h>
#define CS1 19
#define CS2 19

void writeSPI(int adc, byte b1, byte b2, byte b3, byte b4) {
  if (adc == 0) digitalWrite(CS1, LOW);
  else digitalWrite(CS2, LOW);
  SPI.transfer(b1);
  //delay(1);
  SPI.transfer(b2);
  //delay(1);
  SPI.transfer(b3);
  //delay(1);
  SPI.transfer(b4);
  //delay(1);
  if (adc == 0) digitalWrite(CS1, HIGH);
  else digitalWrite(CS2, HIGH);
}

void setDAC(int adc, unsigned int channel, float val) {
  // adc is integer 0-15
  // val is float 0-2.5

  // input validation
  if (channel > 7 && channel != 15) {
    Serial.println("Input 0-7 to specify individual channels, 15 to specify all channels. Invalid input.");
    return;
  }
  /*
  if (val > 3.3) {
    Serial.println("Can supply up to 3.3V. Invalid input.");
    return;
  }*/

  // calculating 12 bit ADC value
  unsigned int valToAssign = (unsigned int) 65536.0 * val / 3.3;
  unsigned int dacToWrite = (unsigned int) val; //valToAssign;

  unsigned int dacMSB = highByte(dacToWrite);
  unsigned int dacLSB = lowByte(dacToWrite);

  byte command = 0b00000011;
  byte addrD1  = lowByte(channel) << 4 | dacMSB >> 4;
  byte addrD2  = dacMSB << 4 | dacLSB >> 4;
  byte addrD3  = dacLSB << 4;

  writeSPI(adc, command, addrD1, addrD2, addrD3);


}

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(CS1, OUTPUT);
  pinMode(CS2, OUTPUT);
  SPI.begin();
  //SPI.setClockDivider(255);
  //SPI.setDataMode(SPI_MODE1);
  SPI.beginTransaction(SPISettings(1000000, MSBFIRST, SPI_MODE1));
  writeSPI(0, 0b00000100, 0b00000000, 0b00000000, 0b11111111); // turning all channels on
  writeSPI(0, 0b00001000, 0b00000000, 0b00000000, 0b00000001); // setting int reference
  writeSPI(1, 0b00000100, 0b00000000, 0b00000000, 0b11111111); // turning all channels on
  writeSPI(1, 0b00001000, 0b00000000, 0b00000000, 0b00000001); // setting int reference
  delay(10);

  Serial.println("All DACs initialized to 0V. To set DAC, enter '<DAC>,<channel>,<value>;', where <DAC> selects the DAC, 0 or 1, <channel> selects DAC channel, 0-7 or 15 for all channels, and <value> is a voltage from 0-2.5V");
  Serial.println("Use command READ; to read ADC values");

}


float counter = 1000.0;
float diffval = 500.0;
  
void loop() {
  setDAC(0,15,0);
  delayMicroseconds(counter);
  setDAC(0,15,65535);
  delayMicroseconds(counter);

  counter -= counter/diffval;

  if(counter <= 1) diffval *= -1.0;
  if (counter >= 1000.0) diffval *= -1.0;

  

  /*for (int i = 0; i < 65536; i++) {
    setDAC(0, 15, i);
    Serial.println(i);
    //delay(700);
  }*/


/*
  // raster scan

  // segments are
  // 1(CH1) 2(CH3)
  // 3(CH5) 4(CH7)

  // map 4 = -1, 3 = -2

  for (int x = 32768; x < 65536; x=x+10) {
    for (int y = 32768; y < 65536; y=y+10) {
      int ch1 = x;
      int ch4 = 65536-x;
      int ch2 = y;
      int ch3 = 65536-y;

      setDAC(0,1,ch1);
      setDAC(0,3,ch2);
      setDAC(0,5,ch3);
      setDAC(0,7,ch4);

      Serial.print(ch1);
      Serial.print(" ");
      Serial.print(ch2);
      Serial.print(" ");
      Serial.print(ch3);
      Serial.print(" ");
      Serial.println(ch4);

      delayMicroseconds(5);

    }
    
  }

  */

}
