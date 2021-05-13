#include <avr/io.h>

.section .init1,"ax", @progbits
    ldi r16, 0xff
    out _SFR_IO_ADDR(PORTB), r16
    out _SFR_IO_ADDR(DDRB), r16