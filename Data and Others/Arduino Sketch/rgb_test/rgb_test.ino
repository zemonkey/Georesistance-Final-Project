#define R_pin 25
#define G_pin 14
#define B_pin 13

void setup() {
  // put your setup code here, to run once:
  pinMode(R_pin,OUTPUT);
  pinMode(G_pin,OUTPUT);
  pinMode(B_pin,OUTPUT);
}

void loop() {
  digitalWrite(R_pin,LOW);
  digitalWrite(G_pin,HIGH);
  digitalWrite(B_pin,HIGH);
}
