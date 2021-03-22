#include <AD5668.h>

#define mosiPin 7
#define sclkPin 5
#define ssPin 14
#define clrPin 13  // unused
#define ldacPin 15 // unused

AD5668 DAC = AD5668(ssPin, clrPin, ldacPin);

int analogPin = A0;
int dacOut = 0;
unsigned int vOut = 0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  DAC.init();
  DAC.powerDAC_Normal(B11111111);
  DAC.enableInternalRef(); // Uncomment this line to turn on the internal reference.


}

void loop() {
  for (int v=0; v<=5; v++) {
    for (int chAdr=0; chAdr<=7; chAdr++) {
      if (v == 0) {
        vOut = 0;
      }
      vOut = (v * 13107);
      DAC.writeUpdateCh(chAdr, vOut);
          Serial.println(vOut);
    delay(100);
    }

  }
}
