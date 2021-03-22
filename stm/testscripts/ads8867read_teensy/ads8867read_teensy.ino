// ADS8867: clock idle low, shift out on pos edge, sample on neg edge -> SPI mode 0
// MSB FIRST
// hold DIN HIGH
// use CONVST as CS (active LOW)

#include <SPI.h>

#define CSPIN 34

void setup() {
  // put your setup code here, to run once:

  pinMode(CSPIN, OUTPUT);
  pinMode(38, OUTPUT);
  pinMode(12, OUTPUT);
  
  Serial.begin(9600);
  Serial.println("Basic DAC test with ADS8867");

  //SPI1.setCS(38)
  SPI1.setMISO(39);

  SPI1.begin();
  //SPI1.beginTransaction(SPISettings(100000, MSBFIRST, SPI_MODE3));
  SPI1.beginTransaction(SPISettings(100000, MSBFIRST, SPI_MODE3));


}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(38, HIGH);
  digitalWrite(12, HIGH);

  int meanVal = 0;
  int16_t receivedVal = 0;

  for (int i = 0; i < 5; i++) {
    digitalWrite(CSPIN, LOW);
    delayMicroseconds(1);
    digitalWrite(CSPIN, HIGH);
    delayMicroseconds(1);
    digitalWrite(CSPIN, LOW);
    int16_t receivedVal_high = (int16_t) SPI1.transfer(0xff);
    int16_t receivedVal_low  = (int16_t) SPI1.transfer(0xff);
    delayMicroseconds(1);
    digitalWrite(CSPIN, HIGH);
    delayMicroseconds(1);
    digitalWrite(CSPIN, LOW);
    receivedVal = receivedVal_high << 8 | receivedVal_low;
    meanVal += receivedVal;

  
    Serial.print(receivedVal_high);
    Serial.print(" ");
    Serial.println(receivedVal_low);
    
  }
    

  float receivedFloat = float(meanVal) * 3.3 / (float) 65536 / (float) 5.0;


  Serial.println(receivedFloat,5);

  
  digitalWrite(38, LOW);
  digitalWrite(12, LOW);
  delay(100);

}
