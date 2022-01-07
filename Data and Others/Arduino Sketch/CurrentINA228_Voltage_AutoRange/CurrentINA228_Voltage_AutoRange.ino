#include <Adafruit_ADS1X15.h>

Adafruit_ADS1115 ads;

int TwentyFive_mohm = PB15;
int PointFour_ohm = PB13;
int SixPointTwo_ohm = PB14;

int button_pin = PA9;

int counter = 0;
const int max_sum = 10;
bool full = false;
int sum_array[max_sum];
long sum;

const bool debug = true;


const float adc_LSB[6] = {0.1875F, 0.125F, 0.0625F, 0.03125F, 0.015625F, 0.0078125F};
// ADC gain by default set to one
int adc_gain_var = 0;
bool remeasure;
//y=mx+b


unsigned long I_Time = 0;    
const unsigned int I_Delay = 250; 

int VBus_value = 0;
float Current = 0;

int reading = 0; //note that int is 32-bit or 4-bytes on ESP-32. This is Different compared to ATMEGA328 2 bytes int

const int INA228_Addr = 64;

//register addresses
const int SOVL_Reg = 0x0C;
const int SUVL_Reg = 0x0D; 
const int BOVL_Reg = 0x0E;
const int BUVL_Reg = 0x0F;

const int VBUS_Reg = 0x04;
const int CON_Reg = 0x00;
const int ADCCON_Reg = 0x01;
const int Device_Reg = 0x3F;
const int Vendor_Reg = 0x3E;

//calculation based on examples on INA228 Datasheet
const int SOVL_Val = 0x2BC0;
const int SUVL_Val = 0xFFEC;
const int BOVL_Val = 0x44C0;
const int BUVL_Val = 0x4240;

const int Reset_Command = 0x8000;
const int Device_ID = 0x2281;
const int Vendor_ID = 0x5449;

int ADC_Config = 0xFFFA;
//seems terrible with no benefit
//int ADC_Config = 0xFFFF;

int Shunt_Val = 150;

//Write into a 2 bytes (16 bits) register
void write_16b_register(int Reg_Addr, int Data) {
  //Divide the Data per byte
  int LSB_Data= Data & 0xFF;
  int MSB_Data= Data >> 8;
  Wire.beginTransmission(INA228_Addr);
  Wire.write(byte(Reg_Addr));

  //Wire.write works by transferring the register data, byte per byte. from the Most significant one
  Wire.write(byte(MSB_Data));
  Wire.write(byte(LSB_Data));
        
  Wire.endTransmission();
}

//Set Current register
void set_register(int Reg_Addr) {
  Wire.beginTransmission(INA228_Addr);
  Wire.write(byte(Reg_Addr));   
  Wire.endTransmission();
}

//Read from a 20 bits MSB Register
int read_20b_register(int Reg_Addr) {
  set_register(Reg_Addr);
  Wire.requestFrom(INA228_Addr, 3);
  if (3 <= Wire.available()) {
    int value = Wire.read();
    value = value << 8;
    value |= Wire.read();
    value = value << 4;
    value |= Wire.read();
    return value;
}
}

//Read from a 16 bits MSB Register
int read_16b_register(int Reg_Addr) {
  set_register(Reg_Addr);
  Wire.requestFrom(INA228_Addr, 2);
  if (2 <= Wire.available()) {
    int value = Wire.read();
    value = value << 8;
    value |= Wire.read();
    return value;
}
}

//check if device at the address is actually INA228
void Check_Device() {
    int Device_Reg_Val = 0;
    int Vendor_Val = 0;
    while (true) {
      Device_Reg_Val = read_16b_register(Device_Reg);
      Vendor_Val = read_16b_register(Vendor_Reg);
      if ((Device_Reg_Val == Device_ID) && (Vendor_Val == Vendor_ID)) {
        break;
      }
      Serial.println("Error device isn't INA228");
      delay(1000);
    }
    Serial.println("INA228 Detected");
}

void reset_INA228(){
  write_16b_register(CON_Reg,Reset_Command);
  delay(10);
}

//CURRENT SENSING
//slope and intercepts only for gain 2-16
const float m_6R2[6] = {0, 0, 0.024752514756573453F, 0.026945355298954372F, 0.03530913796111518F, 0.029174896323891444F};
const float b_6R2[6] = {0, 0, -1.557088705010358F, 1.5838729569280119F, -5.69417804694308F, -4.169697893371396F};
const int i_6R2_min = 2;
const int i_6R2_max = 5;

//slope and intercepts only for gain 1-8
const float m_R40[6] = {0, 0.5627572747185379F, 0.3829082417293114F, 0.41289526813846006F, 0.45797643005462374F, 0};
const float b_R40[6] = {0, -294.5419692528976F, -35.71868100754F, 8.127347522120658F, -68.35364366115296F, 0};
const int i_R40_min = 2;
const int i_R40_max = 4;


//DIFFERENTIAL VOLTAGE SENSING
//Old Value
//slope and intercepts for gain 2/3-16 (voltage)
//const float m_V = 20.83207335914647F;
//converting to array to reduce multiplication
//m_V*adc_LSB
//const float m_V[6] = {0.16275057F, 0.32550115F, 0.65100229F, 1.30200458F, 2.60400917F, 3.90601375F};
//const float m_V[6] = {3.90601375F, 2.60400917F, 1.30200458F, 0.65100229F, 0.32550115F,0.16275057F};
//const float b_V = 0.36042472845584683F;

//New Value
const float m_V[6] = {0, 0.0025976 , 0.00130257, 0.00065712, 0.00032881, 0.00016627};
const float b_V[6] = {0, 0.16158206, 0.10947509, 0.06196756, 0.0535543 , 0.01093328};

//SUPPLY VOLTAGE SENSING
const float m_Vs[6] = {0, 0.0026319 , 0.00131595, 0.00065797, 0.00032899, 0.00016449};
const float b_Vs = 0.393215530401811;


int16_t adc_read_current() {
  //current is connected with single ended on CH. 3
  return ads.readADC_SingleEnded(3);
}

int32_t adc_read_voltage() {
  //voltage is connected differentially on CH. 01
  return ads.readADC_Differential_0_1();
}

int16_t adc_read_voltage_supply() {
  //voltage is connected differentially on CH. 01
  return ads.readADC_SingleEnded(2);
}

int range_int(float range) {
  return round(range * 3);
}

void set_gain(int adc_gain) {
  switch (adc_gain) {
    case 0:
      if (debug) Serial.println("Gain is 2/3");
      ads.setGain(GAIN_TWOTHIRDS);
      break;
    case 1:
      if (debug) Serial.println("Gain is 1");
      ads.setGain(GAIN_ONE);
      break;
    case 2:
      if (debug) Serial.println("Gain is 2");
      ads.setGain(GAIN_TWO);
      break;
    case 3:
      if (debug) Serial.println("Gain is 4");
      ads.setGain(GAIN_FOUR);
      break;
    case 4:
      if (debug) Serial.println("Gain is 8");
      ads.setGain(GAIN_EIGHT);
      break;
    case 5:
      if (debug) Serial.println("Gain is 16");
      ads.setGain(GAIN_SIXTEEN);
      break;
    default:
      if (debug) Serial.println("Wrong gain, set to default gain 2/3");
      ads.setGain(GAIN_TWOTHIRDS);
      break;
  }
  adc_gain_var = adc_gain;
}

float moving_avg(int input) {
  if (full) {
    if (counter == max_sum - 1) counter = 0;
    else counter++;
    sum = sum - sum_array[counter] + input;
    sum_array[counter] = input;
    return float(sum) / float(max_sum);
  }
  else {
    if (counter == max_sum - 2) full = true;
    counter++;
    sum = sum + input;
    sum_array[counter] = input;
    return float(sum) / float(counter + 1);
  }
}

//CURRENT PART

float read_current() {
  float i_mA;
  //digitalWrite(PointFour_ohm, HIGH);
  delay(100);
  VBus_value = read_20b_register(VBUS_Reg);
  //in mA
  i_mA = VBus_value*312.5/Shunt_Val/1000000;
  return i_mA;
}


//VOLTAGE PART
float adc_to_V(float adc_reading, int adc_gain) {
  return (m_V[adc_gain] * adc_reading + b_V[adc_gain])/2;
}

float voltage_auto_range() {
  int32_t v_data = 0;
  const int total_sample = 3;
  float V;
  if (debug) Serial.println("using Voltage auto-range");
  //reset gain
  set_gain(1);
  for (int i = 0; i < total_sample; i++) {
    v_data += adc_read_voltage();
  }
  float average_reading = float(v_data) / float(total_sample);
  V = adc_to_V(average_reading, adc_gain_var);
  if (V < 36) {
    set_gain(2);
    for (int i = 0; i < total_sample; i++) {
      v_data += adc_read_voltage();
    }
    float average_reading = float(v_data) / float(total_sample);
    V = adc_to_V(average_reading, adc_gain_var);
  }

  if (V < 18) {
    set_gain(3);
    for (int i = 0; i < total_sample; i++) {
      v_data += adc_read_voltage();
    }
    float average_reading = float(v_data) / float(total_sample);
    V = adc_to_V(average_reading, adc_gain_var);
  }

  if (V < 9) {
    set_gain(4);
    for (int i = 0; i < total_sample; i++) {
      v_data += adc_read_voltage();
    }
    float average_reading = float(v_data) / float(total_sample);
    V = adc_to_V(average_reading, adc_gain_var);
  }

  if (V < 4.5) {
    set_gain(5);
    for (int i = 0; i < total_sample; i++) {
      v_data += adc_read_voltage();
    }
    float average_reading = float(v_data) / float(total_sample);
    V = adc_to_V(average_reading, adc_gain_var);
  }
  return V;
}

float read_voltage() {
  float V;
  V = voltage_auto_range();
  //digitalWrite(PointFour_ohm, LOW);
  //digitalWrite(SixPointTwo_ohm, LOW);
  return V;
}

float adc_to_Vs(float adc_reading, int adc_gain) {
  return (m_Vs[adc_gain] * adc_reading*1000 + b_Vs)/2;
}

float voltage_supply_auto_range() {
  int32_t v_data = 0;
  const int total_sample = 3;
  float V;
  if (debug) Serial.println("using Voltage auto-range");
  //reset gain
  set_gain(1);
  for (int i = 0; i < total_sample; i++) {
    v_data += adc_read_voltage_supply();
  }
  float average_reading = float(v_data) / float(total_sample);
  V = adc_to_V(average_reading, adc_gain_var);
  if (V < 36) {
    set_gain(2);
    for (int i = 0; i < total_sample; i++) {
      v_data += adc_read_voltage_supply();
    }
    float average_reading = float(v_data) / float(total_sample);
    V = adc_to_V(average_reading, adc_gain_var);
  }

  if (V < 18) {
    set_gain(3);
    for (int i = 0; i < total_sample; i++) {
      v_data += adc_read_voltage_supply();
    }
    float average_reading = float(v_data) / float(total_sample);
    V = adc_to_V(average_reading, adc_gain_var);
  }

  if (V < 9) {
    set_gain(4);
    for (int i = 0; i < total_sample; i++) {
      v_data += adc_read_voltage_supply();
    }
    float average_reading = float(v_data) / float(total_sample);
    V = adc_to_V(average_reading, adc_gain_var);
  }

  if (V < 4.5) {
    set_gain(5);
    for (int i = 0; i < total_sample; i++) {
      v_data += adc_read_voltage_supply();
    }
    float average_reading = float(v_data) / float(total_sample);
    V = adc_to_V(average_reading, adc_gain_var);
  }
  return V;
}

float read_voltage_supply() {
  float V;
  V = voltage_supply_auto_range();
  return V;
}

TwoWire ADSWire = TwoWire(PB9,PB8);

void setup() {
  Serial.begin(9600);
  Serial.println("Testing Ahem!");

  pinMode(TwentyFive_mohm, OUTPUT_OPEN_DRAIN);
  digitalWrite(TwentyFive_mohm, LOW);
  pinMode(PointFour_ohm, OUTPUT_OPEN_DRAIN);
  digitalWrite(PointFour_ohm, HIGH);
  pinMode(SixPointTwo_ohm, OUTPUT_OPEN_DRAIN);
  digitalWrite(SixPointTwo_ohm, LOW);

  pinMode(button_pin, INPUT_PULLDOWN);

  Wire.setSDA(PB11);
  Wire.setSCL(PB10);
  Wire.begin();

  Check_Device();
  reset_INA228();

  write_16b_register(SOVL_Reg,SOVL_Val);
  write_16b_register(SUVL_Reg,SUVL_Val);
  write_16b_register(BOVL_Reg,BOVL_Val);
  write_16b_register(BUVL_Reg,BUVL_Val);
  
  write_16b_register(ADCCON_Reg,ADC_Config);
  
  //Wire.setSDA(PB9);
  //Wire.setSCL(PB8);
  //Wire.begin();

  //                                                                ADS1015  ADS1115
  //                                                                -------  -------
  // ads.setGain(GAIN_TWOTHIRDS);  // 2/3x gain +/- 6.144V  1 bit = 3mV      0.1875mV (default)
  // ads.setGain(GAIN_ONE);        // 1x gain   +/- 4.096V  1 bit = 2mV      0.125mV
  // ads.setGain(GAIN_TWO);        // 2x gain   +/- 2.048V  1 bit = 1mV      0.0625mV
  // ads.setGain(GAIN_FOUR);       // 4x gain   +/- 1.024V  1 bit = 0.5mV    0.03125mV
  // ads.setGain(GAIN_EIGHT);      // 8x gain   +/- 0.512V  1 bit = 0.25mV   0.015625mV
  // ads.setGain(GAIN_SIXTEEN);    // 16x gain  +/- 0.256V  1 bit = 0.125mV  0.0078125mV
  // set for the slowest sampling rate (for lower noise)
  ads.setDataRate(RATE_ADS1115_8SPS);
  if (!ads.begin(0x48, &ADSWire)) {
    Serial.println("Failed to initialize ADS.");
    while (1);
  }
}

void loop() {
  float current_data, voltage_data, supply_voltage_data;
  int32_t timer;
  bool button_state;
  button_state = digitalRead(button_pin);

  if (button_state) {
    timer = millis();
    current_data = read_current();
    supply_voltage_data = read_voltage_supply();
    voltage_data = read_voltage();
    
    Serial.print("Current Data is ");
    Serial.print(current_data);
    Serial.println(" mA");
    
    Serial.print("Voltage Data is ");
    Serial.print(voltage_data);
    Serial.println(" V");
    
    Serial.print("Supply Voltage Data is ");
    Serial.print(supply_voltage_data);
    Serial.println(" V");
    
    Serial.print("time it takes to measure is ");
    Serial.print(millis() - timer);
    Serial.println(" ms");
    
    //Serial.println("Button Pressed");
  }
  delay(100);
}
