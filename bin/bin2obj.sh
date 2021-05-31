#!/bin/bash

set -e 
set -o pipefail

#########

# DEFAULT

avr-objcopy -v -I binary -O elf32-avr -B avr bin/binary.bin bin/binary.bin.o

avr-readelf -a bin/binary.bin.o > bin/res/readelf-binary.o.txt
avr-nm bin/binary.bin.o > bin/res/nm-binary.o.txt

#########

# RENAMED SYMBOL

# SEE "--rename-section"
# https://sourceware.org/binutils/docs/binutils/objcopy.html
avr-objcopy -v -I binary -O elf32-avr -B avr --rename-section .data=.progmem.data --set-section-flags .progmem.data=alloc,load,readonly,data,content -S \
 --add-symbol stringtxt=.progmem.data:0x00000000,global bin/string.txt bin/string.o 

avr-readelf -a bin/string.o > bin/res/readelf-string.o.txt
avr-nm bin/string.o > bin/res/nm-string.o.txt

#########

# --update-section .data=bin/f.txt
# --add-section .data=bin/f.txt

# --rename-section > linker script custom section
avr-objcopy -v -I binary -O elf32-avr -B avr -S --rename-section .data=.myconfig bin/binary.bin bin/myconfig.o 

avr-readelf -a bin/myconfig.o > bin/res/readelf-myconfig.o.txt
avr-nm bin/myconfig.o > bin/res/nm-myconfig.o.txt

# --redefine-sym --rename-section > linker fixed section address

avr-objcopy -v -I binary -O elf32-avr -B avr --redefine-sym _binary_bin_binary_bin_start=myconfig_addr \
--rename-section .data=.myconfig_addr -S -K myconfig_addr -N _binary_bin_binary_bin_end bin/binary.bin bin/myconfig_addr.o 

avr-readelf -a bin/myconfig_addr.o > bin/res/readelf-myconfig_addr.o.txt
avr-nm bin/myconfig_addr.o > bin/res/nm-myconfig_addr.o.txt

#########