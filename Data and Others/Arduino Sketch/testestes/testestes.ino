#include <driver/pcnt.h>
    pcnt_config_t pcnt_config = {
        .pulse_gpio_num = 1,
        .ctrl_gpio_num = -1,
        .channel = PCNT_CHANNEL_0,
        .unit = PCNT_UNIT_ROTATION,
        .pos_mode = PCNT_COUNT_INC, // Count up on the positive edge
        .neg_mode = PCNT_COUNT_DIS, // Keep the counter value on the negative edge
    };
void setup() {
  // put your setup code here, to run once:
  pcnt_unit_config(myconfig)
}

void loop() {
  // put your main code here, to run repeatedly:

}
