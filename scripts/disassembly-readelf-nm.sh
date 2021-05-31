#!/bin/bash

# script for Ubuntu or WSL2 on Windows
set -e 
set -o pipefail

PROJECT_LOCATION='/mnt/d/Home/ProjetsRecherche/Embedded/ATmega328p-sections'

cd "$PROJECT_LOCATION"

# avr-nm .pio/build/SectionDemo/src/main.c.o

avr-objdump -d .pio/build/SectionDemo/firmware.elf > res/disassembly.s

avr-readelf -a .pio/build/SectionDemo/firmware.elf > res/readelf.txt

avr-nm .pio/build/SectionDemo/firmware.elf > res/nm.txt

echo "OK"
echo "avr-objdump -d .pio/build/SectionDemo/firmware.elf > res/disassembly.s"
echo "avr-readelf -a .pio/build/SectionDemo/firmware.elf > res/readelf.txt"
echo "avr-nm .pio/build/SectionDemo/firmware.elf > res/nm.txt"