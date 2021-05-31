#!/bin/bash

# script for Ubuntu or WSL2 on Windows
set -e 
set -o pipefail

PROJECT_LOCATION='/mnt/d/Home/ProjetsRecherche/Embedded/ATmega328p-sections'

cd "$PROJECT_LOCATION"

# avr-nm .pio/build/pro16MHzatmega328/src/main.c.o

avr-objdump -d .pio/build/pro16MHzatmega328/firmware.elf > res/disassembly.s

avr-readelf -a .pio/build/pro16MHzatmega328/firmware.elf > res/readelf.txt

avr-nm .pio/build/pro16MHzatmega328/firmware.elf > res/nm.txt

echo "OK"
echo "avr-objdump -d .pio/build/pro16MHzatmega328/firmware.elf > res/disassembly.s"
echo "avr-readelf -a .pio/build/pro16MHzatmega328/firmware.elf > res/readelf.txt"
echo "avr-nm .pio/build/pro16MHzatmega328/firmware.elf > res/nm.txt"