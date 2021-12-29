int TwentyFive_Mohm = PB15;
int PointFour_ohm = PB13;
int SixPointTwo_Ohm = PB14;
void setup() {
  pinMode(TwentyFive_Mohm, OUTPUT_OPEN_DRAIN);
  digitalWrite(TwentyFive_Mohm, LOW);
  pinMode(PointFour_ohm, OUTPUT);
  digitalWrite(PointFour_ohm,HIGH);
  pinMode(SixPointTwo_Ohm, OUTPUT_OPEN_DRAIN);
  digitalWrite(SixPointTwo_Ohm, LOW);
}

void loop() {
  digitalWrite(TwentyFive_Mohm, LOW);
  digitalWrite(PointFour_ohm, LOW);
  digitalWrite(SixPointTwo_Ohm, LOW);
//  digitalWrite(TwentyFive_Mohm, HIGH);
//  delay(3000);
//  digitalWrite(TwentyFive_Mohm, LOW);
//  delay(3000);
//  digitalWrite(PointFour_ohm, HIGH);
//  delay(3000);
//  digitalWrite(PointFour_ohm, LOW);
//  delay(3000);
//  digitalWrite(SixPointTwo_Ohm, HIGH);
//  delay(3000);
//  digitalWrite(SixPointTwo_Ohm, LOW);
//  delay(3000);

}
