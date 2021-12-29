#include <Wire.h>

const int CON_Reg = 0x01;
const int ADS1115_Addr = 0x48;

void set_register(int Reg_Addr) {
  Wire.beginTransmission(ADS1115_Addr);
  Wire.write(byte(Reg_Addr));   
  Wire.endTransmission();
}

int read_16b_register(int Reg_Addr) {
  set_register(Reg_Addr);
  Wire.requestFrom(ADS1115_Addr, 2);
  if (2 <= Wire.available()) {
    int value = Wire.read();
    value = value << 8;
    value |= Wire.read();
    return value;
}
}


void setup() {

  Serial.begin(9600);
  Wire.setSDA(PB9);
  Wire.setSCL(PB8);
  Wire.begin();
  Serial.println("\nI2C Scanner");
}

void loop() {
  Serial.println(read_16b_register(CON_Reg));
  delay(1000);
  }
