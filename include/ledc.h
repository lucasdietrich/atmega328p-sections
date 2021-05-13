#ifndef _LEDC_H
#define _LEDC_H

#include <avr/io.h>

// init sections
// https://www.nongnu.org/avr-libc/user-manual/mem_sections.html
void init_led(void) __attribute__ ((section (".init1")));


#endif