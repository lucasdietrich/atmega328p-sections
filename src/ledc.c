#include "ledc.h"

void init_led(void)
{
    DDRB = 0xFF;
    PORTB = 0x00;
}