#include <Adafruit_ADS1X15.h>

Adafruit_ADS1115 ads;   /* Use this for the 16-bit version */
//Adafruit_ADS1015 ads;     /* Use this for the 12-bit version */

int TwentyFive_Mohm = PB15;
int PointFour_ohm = PB13;
int SixPointTwo_Ohm = PB14;

int counter = 0;
const int max_sum = 10;
bool full = false;
int sum_array[max_sum];
long sum;

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


void setup(void)
{
  Serial.begin(9600);
  Serial.println("Hello!");
  pinMode(TwentyFive_Mohm, OUTPUT_OPEN_DRAIN);
  digitalWrite(TwentyFive_Mohm, LOW);
  pinMode(PointFour_ohm, OUTPUT_OPEN_DRAIN);
  digitalWrite(PointFour_ohm, LOW);
  pinMode(SixPointTwo_Ohm, OUTPUT_OPEN_DRAIN);
  digitalWrite(SixPointTwo_Ohm, LOW);


  Wire.setSDA(PB9);
  Wire.setSCL(PB8);
  Wire.begin();
  Serial.begin(9600);
  Serial.println("Hello!");

  Serial.println("Getting single-ended readings from AIN0..3");
  Serial.println("ADC Range: +/- 6.144V (1 bit = 3mV/ADS1015, 0.1875mV/ADS1115)");

  // The ADC input range (or gain) can be changed via the following
  // functions, but be careful never to exceed VDD +0.3V max, or to
  // exceed the upper and lower limits if you adjust the input range!
  // Setting these values incorrectly may destroy your ADC!
  //                                                                ADS1015  ADS1115
  //                                                                -------  -------
  // ads.setGain(GAIN_TWOTHIRDS);  // 2/3x gain +/- 6.144V  1 bit = 3mV      0.1875mV (default)
  ads.setGain(GAIN_ONE);        // 1x gain   +/- 4.096V  1 bit = 2mV      0.125mV
  // ads.setGain(GAIN_TWO);        // 2x gain   +/- 2.048V  1 bit = 1mV      0.0625mV
  // ads.setGain(GAIN_FOUR);       // 4x gain   +/- 1.024V  1 bit = 0.5mV    0.03125mV
  // ads.setGain(GAIN_EIGHT);      // 8x gain   +/- 0.512V  1 bit = 0.25mV   0.015625mV
  // ads.setGain(GAIN_SIXTEEN);    // 16x gain  +/- 0.256V  1 bit = 0.125mV  0.0078125mV
  ads.setDataRate(RATE_ADS1115_8SPS);
  if (!ads.begin(0x48, &Wire)) {
    Serial.println("Failed to initialize ADS.");
    while (1);
  }
}

void loop(void)
{
  int16_t adc0, adc1, adc2, adc3;
  float volts0, volts1, volts2, volts3,averaged;

  //adc0 = ads.readADC_SingleEnded(0);
  //adc1 = ads.readADC_SingleEnded(1);
  //adc2 = ads.readADC_SingleEnded(2);
  adc3 = ads.readADC_SingleEnded(3);
  averaged = moving_avg(adc3);
  //volts0 = ads.computeVolts(adc0);
  //volts1 = ads.computeVolts(adc1);
  //volts2 = ads.computeVolts(adc2);
  //volts3 = ads.computeVolts(adc3);
  //volts3 = averaged*0.125F;
  //  Serial.print(adc0);
  //  Serial.print(",");
  //  Serial.print(adc1);
  //  Serial.print(",");
  //  Serial.print(adc2);
  //  Serial.println("");
  // Serial.print(adc3);
  // Serial.println("");
  
  //Serial.println("-----------------------------------------------------------");
  //Serial.print("AIN0: "); Serial.print(adc0); Serial.print("  "); Serial.print(volts0); Serial.println("V");
  //Serial.print("AIN1: "); Serial.print(adc1); Serial.print("  "); Serial.print(volts1); Serial.println("V");
  //Serial.print("AIN2: "); Serial.print(adc2); Serial.print("  "); Serial.print(volts2); Serial.println("V");
  //Serial.print("AIN3: "); Serial.print(averaged); Serial.print("  "); Serial.print(volts3); Serial.println("V");
  Serial.println(averaged);

  delay(500);

}
