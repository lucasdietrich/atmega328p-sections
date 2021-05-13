#include "led.h"


void toggle_led(void)
{
    PORTB ^= 0xFF;
}