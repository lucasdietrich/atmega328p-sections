#include <avr/io.h>
#include <util/delay.h>
#include <avr/pgmspace.h>

#include "led.h"
#include "ledc.h"
#include "uart.h"

// use variables defined in linker script
extern uint8_t __noinit_start;
extern uint8_t __noinit_end;


// __init section

uint16_t init_flag __attribute__ ((section (".noinit"))); // no init symbol

// naked remove "ret" instruction, compile as pure instructions
 __attribute__((used, naked, section(".init1"))) void __init(void) 
{
    init_flag = 0x0123;
}

// used is required
void k_thread_sp_init(void) __attribute__ ((naked, used, section(".init2")));

void k_thread_sp_init(void)
{

	asm(
		"ldi r28, 0x3F"			"\n\t"
		"ldi r29, 0x08"			"\n\t"
		"out __SP_L__, r28"		"\n\t"
		"out __SP_H__, r29"		"\n\t"
	);
}

// do things ono noinit variable
uint16_t noinit_flag __attribute__ ((section (".noinit"))); // no init symbol

void init_anyway_haha(void) __attribute__ ((naked, used, section(".init8")));

void init_anyway_haha(void) 
{
    noinit_flag = 0xADEC;
}

// convert with https://tomeko.net/online_tools/cpp_text_escape.php?lang=en
static const uint8_t prog_mem_reference[] PROGMEM = {
    #include "small.txt"
};

// convert with https://tomeko.net/online_tools/cpp_text_escape.php?lang=en
static const uint8_t rodata[] __attribute__ ((section (".rodata"))) = "RODATA\n";

int main(void)
{
    usart_init();

    char var;

    for (uint_fast16_t i = 0; i < sizeof(prog_mem_reference) - 1; i++)
    {
        var = pgm_read_byte(&prog_mem_reference[i]);

        usart_transmit(var);

        // this does not work !
        // usart_transmit(prog_mem_reference[i]);
    }

    for (uint_fast16_t i = 0; i < sizeof(rodata) - 1; i++)
    {
        usart_transmit(rodata[i]);
    }

    usart_send("\n__noinit_start : ", strlen("\n__noinit_start : "));
    usart_hex16((uint16_t) &__noinit_start);

    usart_send("\n__noinit_end : ", strlen("\n__noinit_end : "));
    usart_hex16((uint16_t) &__noinit_end);

    usart_send("\n__noinit size : ", strlen("\n__noinit size : "));
    usart_hex16((uint16_t) &__noinit_end - (uint16_t) &__noinit_start);

    usart_send("\ninit_anyway_haha > noinit_flag : ", strlen("\ninit_anyway_haha > noinit_flag : "));
    usart_hex16(noinit_flag);

    _delay_ms(2000);

    while (1)
    {
        _delay_ms(1000);

        toggle_led();        
    }
}