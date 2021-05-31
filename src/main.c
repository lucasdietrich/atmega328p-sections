#include <avr/io.h>
#include <util/delay.h>
#include <avr/pgmspace.h>

#include "led.h"
#include "ledc.h"
#include "uart.h"

/*___________________________________________________________________________*/

// use symbols defined in linker script
extern uint8_t __noinit_start;
extern uint8_t __noinit_end;

// __init ?
uint16_t init_flag __attribute__ ((section (".noinit"))); // no init symbol

// naked remove "ret" instruction, compile as pure instructions
 __attribute__((used, naked, section(".init1"))) void __init(void) 
{
    init_flag = 0x0123;
}

/*___________________________________________________________________________*/

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

/*___________________________________________________________________________*/

// do things on noinit variable
uint16_t noinit_flag __attribute__ ((section (".noinit"))); // no init symbol

void init_anyway_haha(void) __attribute__ ((naked, used, section(".init8")));

void init_anyway_haha(void) 
{
    noinit_flag = 0xADEC;
}

/*___________________________________________________________________________*/

// convert with https://tomeko.net/online_tools/cpp_text_escape.php?lang=en
const uint8_t prog_mem_reference[] PROGMEM = {
    #include "small.txt"
};

/*___________________________________________________________________________*/

// convert with https://tomeko.net/online_tools/cpp_text_escape.php?lang=en
// .rodata in ram
static const uint8_t rodata[] __attribute__ ((section (".rodata"))) = "RODATA\n";

/*___________________________________________________________________________*/

// https://www.avrfreaks.net/comment/935518#comment-935518
__attribute__((used, section(".mycrc"))) uint16_t crc = 0x1234;

#if __SECTION_DEMO_COLLISION__

// try collision here
__attribute__((used, section(".mycrc_col"))) uint16_t crc_collision = 0xAAAA;

#endif

/*___________________________________________________________________________*/

// define known sized structures
// size = 3B
typedef struct {
    uint8_t a;
    uint16_t b;
} mys_t;

// section .customramsection must be 3*3B = 9B long
// use of linker script 
mys_t A __attribute__ ((section (".customramsection")));
mys_t B __attribute__ ((section (".customramsection")));
mys_t C __attribute__ ((section (".customramsection")));

extern uint8_t __customramsection_start;
extern uint8_t __customramsection_end;

/*___________________________________________________________________________*/

// const char binary_data[8] PROGMEM = {0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88};

extern const char _binary_bin_binary_bin_start[8];

/*___________________________________________________________________________*/

// with rename
// https://stackoverflow.com/questions/15594988/objcopy-prepends-directory-pathname-to-symbol-name

extern const char stringtxt;

/*___________________________________________________________________________*/

// in prog memory
extern const char myconfig_start[8];

// in prog memory
extern const char myconfig_addr[8];


/*___________________________________________________________________________*/

void usart_printf(const char * const text)
{
    usart_send(text, strlen(text));
}

int main(void)
{
    usart_init();

/*___________________________________________________________________________*/

    char var;

    for (uint_fast16_t i = 0; i < sizeof(prog_mem_reference) - 1; i++)
    {
        var = pgm_read_byte(&prog_mem_reference[i]);

        usart_transmit(var);

        // this does not work !
        // usart_transmit(prog_mem_reference[i]);
    }

/*___________________________________________________________________________*/

    for (uint_fast16_t i = 0; i < sizeof(rodata) - 1; i++)
    {
        usart_transmit(rodata[i]);
    }

    usart_printf("\n__customramsection_start : ");
    usart_hex16((uint16_t) &__customramsection_start);

    usart_printf("\n__customramsection_end : ");
    usart_hex16((uint16_t) &__customramsection_end);

    usart_printf("\n.customramsection size : ");
    usart_hex16((uint16_t) &__customramsection_end - (uint16_t) &__customramsection_start);

/*___________________________________________________________________________*/

    usart_printf("\n__noinit_start : ");
    usart_hex16((uint16_t) &__noinit_start);

    usart_printf("\n__noinit_end : ");
    usart_hex16((uint16_t) &__noinit_end);

    usart_printf("\n.noinit size : ");
    usart_hex16((uint16_t) &__noinit_end - (uint16_t) &__noinit_start);

/*___________________________________________________________________________*/

    usart_printf("\ninit_anyway_haha > noinit_flag : "); 
    usart_hex16(noinit_flag);

/*___________________________________________________________________________*/

    uint16_t crc_copy = pgm_read_word(&crc);
    uint16_t crc_copy2 = pgm_read_word((uint16_t *) 0x1BFE);
    usart_printf("\n rc_copy at adress 0x1BFE = 0x"); 
    usart_hex16((uint16_t) &crc);

    usart_printf("\n");
    usart_hex16(crc_copy);
    usart_printf(" = ");
    usart_hex16(crc_copy2);

#if __SECTION_DEMO_COLLISION__
    crc_copy = pgm_read_word(&crc_collision);
    crc_copy2 = pgm_read_word((uint16_t *) 0x1BFF);
    usart_printf("\n rc_copy at adress 0x1BFF = 0x"); 
    usart_hex16((uint16_t) &crc);

    usart_printf("\n");
    usart_hex16(crc_copy);
    usart_printf(" = ");
    usart_hex16(crc_copy2);
#endif

/*___________________________________________________________________________*/

    usart_printf("\nA, B, C addr : ");
    usart_hex16((uint16_t) &A);
    usart_transmit(' ');
    usart_hex16((uint16_t) &B);
    usart_transmit(' ');
    usart_hex16((uint16_t) &C);
    usart_transmit(' ');

/*___________________________________________________________________________*/

    usart_printf("\n_binary_bin_binary_bin_start = ");

    for(uint_fast8_t i = 0; i < 8; i++)
    {
        usart_hex(_binary_bin_binary_bin_start[i]);
    }

    usart_printf("\nstringtxt = ");

    usart_print_p(&stringtxt);

    usart_printf("\n PROGMEM section .myconfig 'myconfig_start' = ");

    for(uint_fast8_t i = 0; i < 8; i++)
    {
        usart_hex(pgm_read_byte(&myconfig_start[i]));
    }

    usart_printf("\n PROGMEM section .myconfig_addr 'myconfig_addr' = ");

    for(uint_fast8_t i = 0; i < 8; i++)
    {
        usart_hex(pgm_read_byte(&myconfig_addr[i]));
    }

    usart_transmit('\n');

    

/*___________________________________________________________________________*/

    _delay_ms(2000);

    while (1)
    {
        _delay_ms(1000);

        toggle_led();        
    }
}