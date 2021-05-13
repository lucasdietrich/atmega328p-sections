#ifndef _LED_H
#define _LED_H

#include <avr/io.h>


// mixing C and C++ files
// https://www.avrfreaks.net/forum/trying-mix-c-and-c-files-as6-project
// https://stackoverflow.com/questions/2796796/when-to-use-extern-c-in-simple-words
#ifdef __cplusplus
extern "C" {
#endif

void toggle_led(void);

#ifdef __cplusplus
}
#endif

#endif