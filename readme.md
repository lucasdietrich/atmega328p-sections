# Linker tests on ATmega328p

## Description

This simple LED toggle example shows
- how to mixing C and C++ files :
    - https://www.avrfreaks.net/forum/trying-mix-c-and-c-files-as6-project
    - https://stackoverflow.com/questions/2796796/when-to-use-extern-c-in-simple-words

- how to initialize hardware in `.initN` sections :
    - works in assembler not in C ???
    - https://www.nongnu.org/avr-libc/user-manual/mem_sections.html

- Progmem (Flash):
     - https://www.nongnu.org/avr-libc/user-manual/pgmspace.html
     - trampolines : https://www.mikrocontroller.net/topic/369859

- .noinit section
    - `int flag __attribute__ ((section (".noinit")));`

- add user sections :
    - Interesting topic : https://www.avrfreaks.net/comment/1854541
    - create own linker script that contains this section, avr-gcc option example  `-Tcopyavr5.x`
    - create our own orphan section and locate it with `--section-start` : https://www.avrfreaks.net/comment/1854541#comment-185454

- add section at specific address :
    - // https://www.avrfreaks.net/comment/935518#comment-935518
    -  if collision, we have the error :

```c:/users/ldade/.platformio/packages/toolchain-atmelavr/bin/../lib/gcc/avr/7.3.0/../../../../avr/bin/ld.exe: section .mycrc_col loaded at [00001bff,00001c00] overlaps section .mycrc loaded at [00001bfe,00001bff]
collect2.exe: error: ld returned 1 exit status
*** [.pio\build\pro16MHzatmega328\firmware.elf] Error 1
```

- Link binary to program : 
    - Flash, ram, custom section, specific address, symbol from linker/obj, object manipulation
    - references + tools :
        - install Hex editor
        - `avr-objcopy` documentation : http://transit.iut2.upmf-grenoble.fr/cgi-bin/man/man2html?objcopy+1

- [Extra Linker Flags without -Wl, prefix](https://docs.platformio.org/en/latest/projectconf/
advanced_scripting.html#extra-linker-flags-without-wl-prefix)

## Output

```
Hello World!RODATA

__customramsection_start : 0292
__customramsection_end : 029B
.customramsection size : 0009
__noinit_start : 029B
__noinit_end : 029D
.noinit size : 0002
init_anyway_haha > noinit_flag : ADEC
 rc_copy at adress 0x1BFE = 0x1BFE
1234 = 1234
A, B, C addr : 0298 0295 0292
_binary_bin_binary_bin_start = ADEC101122334455
stringtxt = String
 PROGMEM section .myconfig 'myconfig_start' = ADEC101122334455
 PROGMEM section .myconfig_addr 'myconfig_addr' = ADEC101122334455
```

## Notes

In order to find linker scripts for ATmega328p goto PlatformIO AVR package and libraries for avr5 (e.g. `/mnt/c/Users/ldade/.platformio/packages/toolchain-atmelavr/avr/lib/avr5`) :

- The file `crtatmega328p.o` contains initialization vectors, stack initialization instructions, exit and main call
    - We can retrieve symbols with `avr-nm crtatmega328p.o` :
        - T : exported, U : extern, W

```
00000003 W __FUSE_REGION_LENGTH__
00000000 T __bad_interrupt
00000000 W __heap_end
00000000 W __init
000008ff W __stack
00000000 W __vector_1
00000000 W __vector_10
00000000 W __vector_11
00000000 W __vector_12
00000000 W __vector_13
00000000 W __vector_14
00000000 W __vector_15
00000000 W __vector_16
00000000 W __vector_17
00000000 W __vector_18
00000000 W __vector_19
00000000 W __vector_2
00000000 W __vector_20
00000000 W __vector_21
00000000 W __vector_22
00000000 W __vector_23
00000000 W __vector_24
00000000 W __vector_25
00000000 W __vector_3
00000000 W __vector_4
00000000 W __vector_5
00000000 W __vector_6
00000000 W __vector_7
00000000 W __vector_8
00000000 W __vector_9
00000000 W __vector_default
00000000 T __vectors
         U exit
         U main
```
    - We can disassembly it with `avr-objdump -d crtatmega328p.o`, `.init2` section for example : 

```s
Disassembly of section .init2:

00000000 <.init2>:
   0:   11 24           eor     r1, r1
   2:   1f be           out     0x3f, r1        ; 63    ; set SREG to 0
   4:   c0 e0           ldi     r28, 0x00       ; 0
   6:   d0 e0           ldi     r29, 0x00       ; 0
   8:   de bf           out     0x3e, r29       ; 62
   a:   cd bf           out     0x3d, r28       ; 61
```


- The link script is here `ldscripts/avr5.xn` for AVR5 ATmega328p.


## Commands

- Go to project directory :

```cd /mnt/c/Users/ldade/Documents/ProjetsRecherche/Embedded/ATmega328p-sections```

### Readelf:

```
avr-readelf -a .pio/build/pro16MHzatmega328/firmware.elf > readelf.txt
```

Readelf flags :

```
W (write), A (alloc), X (execute), M (merge), S (strings) I (info), L (link order), G (group), T (TLS), E (exclude), x (unknown) O (extra OS processing required) o (OS specific), p (processor specific)
```

### Disassembly:

```avr-objdump -d .pio/build/pro16MHzatmega328/firmware.elf > disassembly.s```

With `.init3` section, it returns :

```s
00000068 <__ctors_end>:
  68:	0f ef       	ldi	r16, 0xFF	; 255       ; .init3 section
  6a:	05 b9       	out	0x05, r16	; 5         ; .init3 section
  6c:	04 b9       	out	0x04, r16	; 4         ; .init3 section
  6e:	11 24       	eor	r1, r1                  ; set r1 to 0
  70:	1f be       	out	0x3f, r1	; 63    
  72:	cf ef       	ldi	r28, 0xFF	; 255       ; RAMED LOW
  74:	d8 e0       	ldi	r29, 0x08	; 8         ; RAMEND HIGH
  76:	de bf       	out	0x3e, r29	; 62        ; set SP HIGH
  78:	cd bf       	out	0x3d, r28	; 61        ; set SP LOW
  7a:	0e 94 43 00 	call	0x86	; 0x86 <main>   
  7e:	0c 94 4d 00 	jmp	0x9a	; 0x9a <_exit>
```

For progmem, section `__trampolines` is the disassembly (by mistake) of the data, for example with `canaries.txt` file (that contains only `A = 0x41`) it gives :

```s
00000068 <__trampolines_end>:
      68:	41 41       	sbci	r20, 0x11	; 17
      6a:	41 41       	sbci	r20, 0x11	; 17
      6c:	41 41       	sbci	r20, 0x11	; 17
      6e:	41 41       	sbci	r20, 0x11	; 17
      70:	41 41       	sbci	r20, 0x11	; 17
      72:	41 41       	sbci	r20, 0x11	; 17
      74:	41 41       	sbci	r20, 0x11	; 17
      76:	41 41       	sbci	r20, 0x11	; 17
      78:	41 41       	sbci	r20, 0x11	; 17
      7a:	41 41       	sbci	r20, 0x11	; 17
      7c:	41 41       	sbci	r20, 0x11	; 17
```

### avr-nm

Avr-nm (`avr-nm .pio/build/pro16MHzatmega328/firmware.elf > nm.txt`) on `firmware.elf` gives :

NM symbols : https://sourceware.org/binutils/docs/binutils/nm.html

```
00800108 d _ZL13usart_alpha16
0000ffa0 A __DATA_REGION_LENGTH__
00010000 A __EEPROM_REGION_LENGTH__
00000003 A __FUSE_REGION_LENGTH__
00000400 A __LOCK_REGION_LENGTH__
00000400 A __SIGNATURE_REGION_LENGTH__
0000003e a __SP_H__
0000003d a __SP_L__
0000003f a __SREG__
00020000 A __TEXT_REGION_LENGTH__
00000400 A __USER_SIGNATURE_REGION_LENGTH__
000000c6 T __bad_interrupt
00000076 T __ctors_end
00000076 T __ctors_start
0080014c D __data_end
00000210 A __data_load_end
000001c4 A __data_load_start
00800100 D __data_start
0000009c T __do_copy_data
00000076 T __dtors_end
00000076 T __dtors_start
00810000 N __eeprom_end
00000000 W __heap_end
00000076 T __init
000008ff W __stack
000001c2 t __stop_program
00000000 a __tmp_reg__
00000068 T __trampolines_end
00000068 T __trampolines_start
000000c6 W __vector_1
000000c6 W __vector_10
000000c6 W __vector_11
000000c6 W __vector_12
000000c6 W __vector_13
000000c6 W __vector_14
000000c6 W __vector_15
000000c6 W __vector_16
000000c6 W __vector_17
000000c6 W __vector_18
000000c6 W __vector_19
000000c6 W __vector_2
000000c6 W __vector_20
000000c6 W __vector_21
000000c6 W __vector_22
000000c6 W __vector_23
000000c6 W __vector_24
000000c6 W __vector_25
000000c6 W __vector_3
000000c6 W __vector_4
000000c6 W __vector_5
000000c6 W __vector_6
000000c6 W __vector_7
000000c6 W __vector_8
000000c6 W __vector_9
00000000 W __vector_default
00000000 T __vectors
00000001 a __zero_reg__
0080014c D _edata
00800150 B _end
000001c4 T _etext
000001c0 T _exit
000001c0 W exit
000000b2 T init_anyway_haha
0080014e b init_flag
00000094 T k_thread_sp_init
00000106 T main
0080014c b noinit_flag
00000068 t prog_mem_reference
00800100 d rodata
000000d8 t usart_hex
000000ca t usart_transmit
```