int counter = 0;
const int max_sum = 13;
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

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  float averaged;
  int16_t results;
  results = random(10000,20000);
  averaged = moving_avg(results);
  float tes2 = float(sum) / float (max_sum);
  Serial.println(tes2);
  delay(1000);
}
