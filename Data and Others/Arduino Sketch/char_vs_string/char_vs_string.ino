//String lorem_ipsum="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec neque arcu, consectetur et vehicula in, lacinia at nibh. Duis purus sem, vehicula quis enim vel, lobortis vehicula massa. Proin et consectetur sapien. Etiam maximus congue sapien. Donec quis condimentum erat, vel fringilla turpis. Morbi eu est augue. Phasellus placerat maximus arcu quis porta. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque eu sapien vulputate ipsum semper gravida quis nec lorem. Praesent vestibulum magna nulla, sed mattis elit imperdiet nec. Aliquam id ligula venenatis libero lobortis lacinia sit amet nec felis.";
//String lorem_ipsum="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque non iaculis nisi. Vivamus et placerat lectus, et scelerisque lorem. Phasellus in aliquet nisi. Sed eu fermentum ante. Sed sit amet ligula tincidunt, condimentum nulla quis, hendrerit  .";
//String lorem_ipsum="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque non iaculis nisi. Vivamus et placerat lectus, et        .";
String lorem_ipsum="Lorem ipsum dolor sit amet, consectetur adipiscing elit. abcdef";

String new_string;

char char_arr[2000];
String copied_string;

unsigned long c_time;
unsigned long p_time;
unsigned long delta;
void setup() {
  Serial.begin(115200);

  
}

void loop() {
  
  p_time=micros();
  for (int i = 0; i < lorem_ipsum.length(); i++) {
    new_string=new_string+lorem_ipsum[i];
  }
  delta=micros()-p_time;
  Serial.println("difference for String is");
  Serial.println(delta);
  Serial.println("String is");
  Serial.println(new_string);
  new_string="";

  p_time=micros();
  for (int i = 0; i < lorem_ipsum.length(); i++) {
    char_arr[i]=lorem_ipsum[i];
  }
  copied_string=String(char_arr);
  delta=micros()-p_time;
  Serial.println("difference for char arr is");
  Serial.println(delta);
  Serial.println("String is");
  Serial.println(copied_string);
  memset(char_arr, 0, sizeof(char_arr));
  copied_string="";
  
  delay(2000);
}
