#include <SPI.h>
#define CS1 19

void writeSPI(byte b1, byte b2, byte b3, byte b4) {
  digitalWrite(CS1, LOW);
  SPI.transfer(b1);
  delay(1);
  SPI.transfer(b2);
  delay(1);
  SPI.transfer(b3);
  delay(1);
  SPI.transfer(b4);
  delay(1);
  digitalWrite(CS1, HIGH);
}

void setDAC(unsigned int channel, float val) {
  // adc is integer 0-15
  // val is float 0-2.5

  // input validation
  if (channel > 7 && channel != 15) {
    Serial.println("Input 0-7 to specify individual channels, 15 to specify all channels. Invalid input.");
    return;
  }
  if (val > 2.5) {
    Serial.println("Can supply up to 2.5V. Invalid input.");
    return;
  }

  // calculating 12 bit ADC value
  unsigned int valToAssign = (unsigned int) 65535.0 * val / 3.3;
  unsigned int dacToWrite = valToAssign;

  unsigned int dacMSB = highByte(dacToWrite);
  unsigned int dacLSB = lowByte(dacToWrite);

  byte command = 0b00000011;
  byte addrD1  = lowByte(channel) << 4 | dacMSB >> 4;
  byte addrD2  = dacMSB << 4 | dacLSB >> 4;
  byte addrD3  = dacLSB << 4;

  writeSPI(command, addrD1, addrD2, addrD3);


}

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(CS1, OUTPUT);
  SPI.begin();
  SPI.setDataMode(SPI_MODE1);
  writeSPI(0b00000100, 0b00000000, 0b00000000, 0b11111111); // turning all channels on
  writeSPI(0b00001000, 0b00000000, 0b00000000, 0b00000001); // setting int reference
  delay(10);
}

void loop() {
  for (int i = 0; i < 65535; i++) {
    setDAC(15, float(i)*3.3/65535.0);
    Serial.println(float(i)*3.3/65535.0, 5);
    delay(1000);
  }

}
