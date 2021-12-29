#define Yes_pin 4
#define No_pin 23
#define SW_pin 15
bool Yes_button;
bool No_button;
bool SW;
void setup() {
  // put your setup code here, to run once:
  pinMode(Yes_pin,INPUT_PULLDOWN);
  pinMode(No_pin,INPUT_PULLDOWN);
  pinMode(SW_pin,INPUT_PULLDOWN);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  delay(100);
  Yes_button=digitalRead(Yes_pin);
  Serial.println(Yes_button);
  delay(100);
  No_button=digitalRead(No_pin);
  Serial.println(No_button);
  delay(100);
  SW=digitalRead(SW_pin);
  Serial.println(SW);
  
}
