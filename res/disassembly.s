
.pio/build/SectionDemo/firmware.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__init>
   4:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
   8:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
   c:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  10:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  14:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  18:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  1c:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  20:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  24:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  28:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  2c:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  30:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  34:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  38:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  3c:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  40:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  44:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  48:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  4c:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  50:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  54:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  58:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  5c:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  60:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  64:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>

00000068 <__trampolines_end>:
  68:	53 74       	andi	r21, 0x43	; 67
  6a:	72 69       	ori	r23, 0x92	; 146
  6c:	6e 67       	ori	r22, 0x7E	; 126
	...

0000006f <prog_mem_reference>:
  6f:	48 65 6c 6c 6f 20 57 6f 72 6c 64 21 00              Hello World!.

0000007c <__init>:
  7c:	0f ef       	ldi	r16, 0xFF	; 255
  7e:	05 b9       	out	0x05, r16	; 5
  80:	04 b9       	out	0x04, r16	; 4
  82:	11 24       	eor	r1, r1
  84:	1f be       	out	0x3f, r1	; 63
  86:	cf ef       	ldi	r28, 0xFF	; 255
  88:	d8 e0       	ldi	r29, 0x08	; 8
  8a:	de bf       	out	0x3e, r29	; 62
  8c:	cd bf       	out	0x3d, r28	; 61

0000008e <k_thread_sp_init>:
  8e:	cf e3       	ldi	r28, 0x3F	; 63
  90:	d8 e0       	ldi	r29, 0x08	; 8
  92:	cd bf       	out	0x3d, r28	; 61
  94:	de bf       	out	0x3e, r29	; 62

00000096 <__do_copy_data>:
  96:	12 e0       	ldi	r17, 0x02	; 2
  98:	a0 e0       	ldi	r26, 0x00	; 0
  9a:	b1 e0       	ldi	r27, 0x01	; 1
  9c:	ec e3       	ldi	r30, 0x3C	; 60
  9e:	f3 e0       	ldi	r31, 0x03	; 3
  a0:	02 c0       	rjmp	.+4      	; 0xa6 <__do_copy_data+0x10>
  a2:	05 90       	lpm	r0, Z+
  a4:	0d 92       	st	X+, r0
  a6:	ab 39       	cpi	r26, 0x9B	; 155
  a8:	b1 07       	cpc	r27, r17
  aa:	d9 f7       	brne	.-10     	; 0xa2 <__do_copy_data+0xc>

000000ac <init_anyway_haha>:
  ac:	8c ee       	ldi	r24, 0xEC	; 236
  ae:	9d ea       	ldi	r25, 0xAD	; 173
  b0:	90 93 9c 02 	sts	0x029C, r25	; 0x80029c <__customramsection_end+0x1>
  b4:	80 93 9b 02 	sts	0x029B, r24	; 0x80029b <__customramsection_end>
  b8:	0e 94 9e 00 	call	0x13c	; 0x13c <main>
  bc:	0c 94 98 01 	jmp	0x330	; 0x330 <_exit>

000000c0 <__bad_interrupt>:
  c0:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000c4 <usart_transmit>:
  c4:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
  c8:	95 ff       	sbrs	r25, 5
  ca:	fc cf       	rjmp	.-8      	; 0xc4 <usart_transmit>
  cc:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
  d0:	08 95       	ret

000000d2 <usart_hex>:
  d2:	cf 93       	push	r28
  d4:	e8 2f       	mov	r30, r24
  d6:	ef 70       	andi	r30, 0x0F	; 15
  d8:	f0 e0       	ldi	r31, 0x00	; 0
  da:	e0 5f       	subi	r30, 0xF0	; 240
  dc:	fe 4f       	sbci	r31, 0xFE	; 254
  de:	c0 81       	ld	r28, Z
  e0:	82 95       	swap	r24
  e2:	8f 70       	andi	r24, 0x0F	; 15
  e4:	e8 2f       	mov	r30, r24
  e6:	f0 e0       	ldi	r31, 0x00	; 0
  e8:	e0 5f       	subi	r30, 0xF0	; 240
  ea:	fe 4f       	sbci	r31, 0xFE	; 254
  ec:	80 81       	ld	r24, Z
  ee:	0e 94 62 00 	call	0xc4	; 0xc4 <usart_transmit>
  f2:	8c 2f       	mov	r24, r28
  f4:	cf 91       	pop	r28
  f6:	0c 94 62 00 	jmp	0xc4	; 0xc4 <usart_transmit>

000000fa <usart_hex16>:
  fa:	cf 93       	push	r28
  fc:	c8 2f       	mov	r28, r24
  fe:	89 2f       	mov	r24, r25
 100:	0e 94 69 00 	call	0xd2	; 0xd2 <usart_hex>
 104:	8c 2f       	mov	r24, r28
 106:	cf 91       	pop	r28
 108:	0c 94 69 00 	jmp	0xd2	; 0xd2 <usart_hex>

0000010c <usart_printf>:
 10c:	0f 93       	push	r16
 10e:	1f 93       	push	r17
 110:	cf 93       	push	r28
 112:	df 93       	push	r29
 114:	fc 01       	movw	r30, r24
 116:	01 90       	ld	r0, Z+
 118:	00 20       	and	r0, r0
 11a:	e9 f7       	brne	.-6      	; 0x116 <usart_printf+0xa>
 11c:	ec 01       	movw	r28, r24
 11e:	8f 01       	movw	r16, r30
 120:	01 50       	subi	r16, 0x01	; 1
 122:	11 09       	sbc	r17, r1
 124:	c0 17       	cp	r28, r16
 126:	d1 07       	cpc	r29, r17
 128:	29 f4       	brne	.+10     	; 0x134 <usart_printf+0x28>
 12a:	df 91       	pop	r29
 12c:	cf 91       	pop	r28
 12e:	1f 91       	pop	r17
 130:	0f 91       	pop	r16
 132:	08 95       	ret
 134:	89 91       	ld	r24, Y+
 136:	0e 94 62 00 	call	0xc4	; 0xc4 <usart_transmit>
 13a:	f4 cf       	rjmp	.-24     	; 0x124 <usart_printf+0x18>

0000013c <main>:
 13c:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
 140:	88 e0       	ldi	r24, 0x08	; 8
 142:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
 146:	88 e1       	ldi	r24, 0x18	; 24
 148:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__TEXT_REGION_LENGTH__+0x7e00c1>
 14c:	86 e0       	ldi	r24, 0x06	; 6
 14e:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__TEXT_REGION_LENGTH__+0x7e00c2>
 152:	cf e6       	ldi	r28, 0x6F	; 111
 154:	d0 e0       	ldi	r29, 0x00	; 0
 156:	fe 01       	movw	r30, r28
 158:	84 91       	lpm	r24, Z
 15a:	0e 94 62 00 	call	0xc4	; 0xc4 <usart_transmit>
 15e:	21 96       	adiw	r28, 0x01	; 1
 160:	f0 e0       	ldi	r31, 0x00	; 0
 162:	cb 37       	cpi	r28, 0x7B	; 123
 164:	df 07       	cpc	r29, r31
 166:	b9 f7       	brne	.-18     	; 0x156 <main+0x1a>
 168:	c8 e0       	ldi	r28, 0x08	; 8
 16a:	d1 e0       	ldi	r29, 0x01	; 1
 16c:	89 91       	ld	r24, Y+
 16e:	0e 94 62 00 	call	0xc4	; 0xc4 <usart_transmit>
 172:	21 e0       	ldi	r18, 0x01	; 1
 174:	cf 30       	cpi	r28, 0x0F	; 15
 176:	d2 07       	cpc	r29, r18
 178:	c9 f7       	brne	.-14     	; 0x16c <main+0x30>
 17a:	80 e2       	ldi	r24, 0x20	; 32
 17c:	91 e0       	ldi	r25, 0x01	; 1
 17e:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 182:	82 e9       	ldi	r24, 0x92	; 146
 184:	92 e0       	ldi	r25, 0x02	; 2
 186:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 18a:	8d e3       	ldi	r24, 0x3D	; 61
 18c:	91 e0       	ldi	r25, 0x01	; 1
 18e:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 192:	8b e9       	ldi	r24, 0x9B	; 155
 194:	92 e0       	ldi	r25, 0x02	; 2
 196:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 19a:	88 e5       	ldi	r24, 0x58	; 88
 19c:	91 e0       	ldi	r25, 0x01	; 1
 19e:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 1a2:	8b e9       	ldi	r24, 0x9B	; 155
 1a4:	92 e0       	ldi	r25, 0x02	; 2
 1a6:	82 59       	subi	r24, 0x92	; 146
 1a8:	92 40       	sbci	r25, 0x02	; 2
 1aa:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 1ae:	83 e7       	ldi	r24, 0x73	; 115
 1b0:	91 e0       	ldi	r25, 0x01	; 1
 1b2:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 1b6:	8b e9       	ldi	r24, 0x9B	; 155
 1b8:	92 e0       	ldi	r25, 0x02	; 2
 1ba:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 1be:	86 e8       	ldi	r24, 0x86	; 134
 1c0:	91 e0       	ldi	r25, 0x01	; 1
 1c2:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 1c6:	8d e9       	ldi	r24, 0x9D	; 157
 1c8:	92 e0       	ldi	r25, 0x02	; 2
 1ca:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 1ce:	87 e9       	ldi	r24, 0x97	; 151
 1d0:	91 e0       	ldi	r25, 0x01	; 1
 1d2:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 1d6:	8d e9       	ldi	r24, 0x9D	; 157
 1d8:	92 e0       	ldi	r25, 0x02	; 2
 1da:	8b 59       	subi	r24, 0x9B	; 155
 1dc:	92 40       	sbci	r25, 0x02	; 2
 1de:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 1e2:	88 ea       	ldi	r24, 0xA8	; 168
 1e4:	91 e0       	ldi	r25, 0x01	; 1
 1e6:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 1ea:	80 91 9b 02 	lds	r24, 0x029B	; 0x80029b <__customramsection_end>
 1ee:	90 91 9c 02 	lds	r25, 0x029C	; 0x80029c <__customramsection_end+0x1>
 1f2:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 1f6:	ee ef       	ldi	r30, 0xFE	; 254
 1f8:	fb e1       	ldi	r31, 0x1B	; 27
 1fa:	05 91       	lpm	r16, Z+
 1fc:	14 91       	lpm	r17, Z
 1fe:	ee ef       	ldi	r30, 0xFE	; 254
 200:	fb e1       	ldi	r31, 0x1B	; 27
 202:	c5 91       	lpm	r28, Z+
 204:	d4 91       	lpm	r29, Z
 206:	8b ec       	ldi	r24, 0xCB	; 203
 208:	91 e0       	ldi	r25, 0x01	; 1
 20a:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 20e:	8e ef       	ldi	r24, 0xFE	; 254
 210:	9b e1       	ldi	r25, 0x1B	; 27
 212:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 216:	8b ee       	ldi	r24, 0xEB	; 235
 218:	91 e0       	ldi	r25, 0x01	; 1
 21a:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 21e:	c8 01       	movw	r24, r16
 220:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 224:	8d e8       	ldi	r24, 0x8D	; 141
 226:	92 e0       	ldi	r25, 0x02	; 2
 228:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 22c:	ce 01       	movw	r24, r28
 22e:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 232:	8d ee       	ldi	r24, 0xED	; 237
 234:	91 e0       	ldi	r25, 0x01	; 1
 236:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 23a:	88 e9       	ldi	r24, 0x98	; 152
 23c:	92 e0       	ldi	r25, 0x02	; 2
 23e:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 242:	80 e2       	ldi	r24, 0x20	; 32
 244:	0e 94 62 00 	call	0xc4	; 0xc4 <usart_transmit>
 248:	85 e9       	ldi	r24, 0x95	; 149
 24a:	92 e0       	ldi	r25, 0x02	; 2
 24c:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 250:	80 e2       	ldi	r24, 0x20	; 32
 252:	0e 94 62 00 	call	0xc4	; 0xc4 <usart_transmit>
 256:	82 e9       	ldi	r24, 0x92	; 146
 258:	92 e0       	ldi	r25, 0x02	; 2
 25a:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 25e:	80 e2       	ldi	r24, 0x20	; 32
 260:	0e 94 62 00 	call	0xc4	; 0xc4 <usart_transmit>
 264:	8e ef       	ldi	r24, 0xFE	; 254
 266:	91 e0       	ldi	r25, 0x01	; 1
 268:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 26c:	c0 e0       	ldi	r28, 0x00	; 0
 26e:	d1 e0       	ldi	r29, 0x01	; 1
 270:	89 91       	ld	r24, Y+
 272:	0e 94 69 00 	call	0xd2	; 0xd2 <usart_hex>
 276:	81 e0       	ldi	r24, 0x01	; 1
 278:	c8 30       	cpi	r28, 0x08	; 8
 27a:	d8 07       	cpc	r29, r24
 27c:	c9 f7       	brne	.-14     	; 0x270 <main+0x134>
 27e:	8f e1       	ldi	r24, 0x1F	; 31
 280:	92 e0       	ldi	r25, 0x02	; 2
 282:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 286:	88 e6       	ldi	r24, 0x68	; 104
 288:	90 e0       	ldi	r25, 0x00	; 0
 28a:	0e 94 8f 01 	call	0x31e	; 0x31e <__strlen_P>
 28e:	8c 01       	movw	r16, r24
 290:	d0 e0       	ldi	r29, 0x00	; 0
 292:	c0 e0       	ldi	r28, 0x00	; 0
 294:	0c 17       	cp	r16, r28
 296:	1d 07       	cpc	r17, r29
 298:	09 f0       	breq	.+2      	; 0x29c <main+0x160>
 29a:	39 c0       	rjmp	.+114    	; 0x30e <main+0x1d2>
 29c:	8d e2       	ldi	r24, 0x2D	; 45
 29e:	92 e0       	ldi	r25, 0x02	; 2
 2a0:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 2a4:	c4 e3       	ldi	r28, 0x34	; 52
 2a6:	d3 e0       	ldi	r29, 0x03	; 3
 2a8:	0c e3       	ldi	r16, 0x3C	; 60
 2aa:	13 e0       	ldi	r17, 0x03	; 3
 2ac:	fe 01       	movw	r30, r28
 2ae:	84 91       	lpm	r24, Z
 2b0:	0e 94 69 00 	call	0xd2	; 0xd2 <usart_hex>
 2b4:	21 96       	adiw	r28, 0x01	; 1
 2b6:	0c 17       	cp	r16, r28
 2b8:	1d 07       	cpc	r17, r29
 2ba:	c1 f7       	brne	.-16     	; 0x2ac <main+0x170>
 2bc:	8d e5       	ldi	r24, 0x5D	; 93
 2be:	92 e0       	ldi	r25, 0x02	; 2
 2c0:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 2c4:	c8 ef       	ldi	r28, 0xF8	; 248
 2c6:	d7 e7       	ldi	r29, 0x77	; 119
 2c8:	00 e0       	ldi	r16, 0x00	; 0
 2ca:	18 e7       	ldi	r17, 0x78	; 120
 2cc:	fe 01       	movw	r30, r28
 2ce:	84 91       	lpm	r24, Z
 2d0:	0e 94 69 00 	call	0xd2	; 0xd2 <usart_hex>
 2d4:	21 96       	adiw	r28, 0x01	; 1
 2d6:	0c 17       	cp	r16, r28
 2d8:	1d 07       	cpc	r17, r29
 2da:	c1 f7       	brne	.-16     	; 0x2cc <main+0x190>
 2dc:	8a e0       	ldi	r24, 0x0A	; 10
 2de:	0e 94 62 00 	call	0xc4	; 0xc4 <usart_transmit>
 2e2:	ff ef       	ldi	r31, 0xFF	; 255
 2e4:	27 ea       	ldi	r18, 0xA7	; 167
 2e6:	81 e6       	ldi	r24, 0x61	; 97
 2e8:	f1 50       	subi	r31, 0x01	; 1
 2ea:	20 40       	sbci	r18, 0x00	; 0
 2ec:	80 40       	sbci	r24, 0x00	; 0
 2ee:	e1 f7       	brne	.-8      	; 0x2e8 <main+0x1ac>
 2f0:	00 c0       	rjmp	.+0      	; 0x2f2 <main+0x1b6>
 2f2:	00 00       	nop
 2f4:	9f ef       	ldi	r25, 0xFF	; 255
 2f6:	e3 ed       	ldi	r30, 0xD3	; 211
 2f8:	f0 e3       	ldi	r31, 0x30	; 48
 2fa:	91 50       	subi	r25, 0x01	; 1
 2fc:	e0 40       	sbci	r30, 0x00	; 0
 2fe:	f0 40       	sbci	r31, 0x00	; 0
 300:	e1 f7       	brne	.-8      	; 0x2fa <main+0x1be>
 302:	00 c0       	rjmp	.+0      	; 0x304 <main+0x1c8>
 304:	00 00       	nop
 306:	85 b1       	in	r24, 0x05	; 5
 308:	80 95       	com	r24
 30a:	85 b9       	out	0x05, r24	; 5
 30c:	f3 cf       	rjmp	.-26     	; 0x2f4 <main+0x1b8>
 30e:	fe 01       	movw	r30, r28
 310:	e8 59       	subi	r30, 0x98	; 152
 312:	ff 4f       	sbci	r31, 0xFF	; 255
 314:	84 91       	lpm	r24, Z
 316:	0e 94 62 00 	call	0xc4	; 0xc4 <usart_transmit>
 31a:	21 96       	adiw	r28, 0x01	; 1
 31c:	bb cf       	rjmp	.-138    	; 0x294 <main+0x158>

0000031e <__strlen_P>:
 31e:	fc 01       	movw	r30, r24
 320:	05 90       	lpm	r0, Z+
 322:	00 20       	and	r0, r0
 324:	e9 f7       	brne	.-6      	; 0x320 <__strlen_P+0x2>
 326:	80 95       	com	r24
 328:	90 95       	com	r25
 32a:	8e 0f       	add	r24, r30
 32c:	9f 1f       	adc	r25, r31
 32e:	08 95       	ret

00000330 <_exit>:
 330:	f8 94       	cli

00000332 <__stop_program>:
 332:	ff cf       	rjmp	.-2      	; 0x332 <__stop_program>

00000334 <_etext>:
 334:	ad ec       	ldi	r26, 0xCD	; 205
 336:	10 11       	cpse	r17, r0
 338:	22 33       	cpi	r18, 0x32	; 50
 33a:	44 55       	subi	r20, 0x54	; 84
