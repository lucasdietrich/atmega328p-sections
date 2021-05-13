
.pio/build/pro16MHzatmega328/firmware.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 3b 00 	jmp	0x76	; 0x76 <__init>
   4:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
   8:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
   c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  10:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  14:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  18:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  1c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  20:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  24:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  28:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  2c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  30:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  34:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  38:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  3c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  40:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  44:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  48:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  4c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  50:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  54:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  58:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  5c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  60:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  64:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>

00000068 <__trampolines_end>:
  68:	48 65       	ori	r20, 0x58	; 88
  6a:	6c 6c       	ori	r22, 0xCC	; 204
  6c:	6f 20       	and	r6, r15
  6e:	57 6f       	ori	r21, 0xF7	; 247
  70:	72 6c       	ori	r23, 0xC2	; 194
  72:	64 21       	and	r22, r4
	...

00000076 <__init>:
  76:	0f ef       	ldi	r16, 0xFF	; 255
  78:	05 b9       	out	0x05, r16	; 5
  7a:	04 b9       	out	0x04, r16	; 4
  7c:	11 24       	eor	r1, r1
  7e:	1f be       	out	0x3f, r1	; 63
  80:	cf ef       	ldi	r28, 0xFF	; 255
  82:	d8 e0       	ldi	r29, 0x08	; 8
  84:	de bf       	out	0x3e, r29	; 62
  86:	cd bf       	out	0x3d, r28	; 61

00000088 <k_thread_sp_init>:
  88:	cf e3       	ldi	r28, 0x3F	; 63
  8a:	d8 e0       	ldi	r29, 0x08	; 8
  8c:	cd bf       	out	0x3d, r28	; 61
  8e:	de bf       	out	0x3e, r29	; 62

00000090 <__do_copy_data>:
  90:	11 e0       	ldi	r17, 0x01	; 1
  92:	a0 e0       	ldi	r26, 0x00	; 0
  94:	b1 e0       	ldi	r27, 0x01	; 1
  96:	ea e0       	ldi	r30, 0x0A	; 10
  98:	f2 e0       	ldi	r31, 0x02	; 2
  9a:	02 c0       	rjmp	.+4      	; 0xa0 <__do_copy_data+0x10>
  9c:	05 90       	lpm	r0, Z+
  9e:	0d 92       	st	X+, r0
  a0:	a2 37       	cpi	r26, 0x72	; 114
  a2:	b1 07       	cpc	r27, r17
  a4:	d9 f7       	brne	.-10     	; 0x9c <__do_copy_data+0xc>

000000a6 <init_anyway_haha>:
  a6:	8c ee       	ldi	r24, 0xEC	; 236
  a8:	9d ea       	ldi	r25, 0xAD	; 173
  aa:	90 93 73 01 	sts	0x0173, r25	; 0x800173 <__data_end+0x1>
  ae:	80 93 72 01 	sts	0x0172, r24	; 0x800172 <__data_end>
  b2:	0e 94 a1 00 	call	0x142	; 0x142 <main>
  b6:	0c 94 03 01 	jmp	0x206	; 0x206 <_exit>

000000ba <__bad_interrupt>:
  ba:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000be <usart_transmit>:
  be:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
  c2:	95 ff       	sbrs	r25, 5
  c4:	fc cf       	rjmp	.-8      	; 0xbe <usart_transmit>
  c6:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
  ca:	08 95       	ret

000000cc <usart_hex>:
  cc:	cf 93       	push	r28
  ce:	e8 2f       	mov	r30, r24
  d0:	ef 70       	andi	r30, 0x0F	; 15
  d2:	f0 e0       	ldi	r31, 0x00	; 0
  d4:	e8 5f       	subi	r30, 0xF8	; 248
  d6:	fe 4f       	sbci	r31, 0xFE	; 254
  d8:	c0 81       	ld	r28, Z
  da:	e8 2f       	mov	r30, r24
  dc:	f0 e0       	ldi	r31, 0x00	; 0
  de:	84 e0       	ldi	r24, 0x04	; 4
  e0:	f5 95       	asr	r31
  e2:	e7 95       	ror	r30
  e4:	8a 95       	dec	r24
  e6:	e1 f7       	brne	.-8      	; 0xe0 <usart_hex+0x14>
  e8:	e8 5f       	subi	r30, 0xF8	; 248
  ea:	fe 4f       	sbci	r31, 0xFE	; 254
  ec:	80 81       	ld	r24, Z
  ee:	0e 94 5f 00 	call	0xbe	; 0xbe <usart_transmit>
  f2:	8c 2f       	mov	r24, r28
  f4:	cf 91       	pop	r28
  f6:	0c 94 5f 00 	jmp	0xbe	; 0xbe <usart_transmit>

000000fa <usart_hex16>:
  fa:	cf 93       	push	r28
  fc:	c8 2f       	mov	r28, r24
  fe:	89 2f       	mov	r24, r25
 100:	0e 94 66 00 	call	0xcc	; 0xcc <usart_hex>
 104:	8c 2f       	mov	r24, r28
 106:	cf 91       	pop	r28
 108:	0c 94 66 00 	jmp	0xcc	; 0xcc <usart_hex>

0000010c <usart_send>:
 10c:	ef 92       	push	r14
 10e:	ff 92       	push	r15
 110:	0f 93       	push	r16
 112:	1f 93       	push	r17
 114:	cf 93       	push	r28
 116:	8c 01       	movw	r16, r24
 118:	7b 01       	movw	r14, r22
 11a:	c0 e0       	ldi	r28, 0x00	; 0
 11c:	8c 2f       	mov	r24, r28
 11e:	90 e0       	ldi	r25, 0x00	; 0
 120:	8e 15       	cp	r24, r14
 122:	9f 05       	cpc	r25, r15
 124:	40 f4       	brcc	.+16     	; 0x136 <usart_send+0x2a>
 126:	80 0f       	add	r24, r16
 128:	91 1f       	adc	r25, r17
 12a:	fc 01       	movw	r30, r24
 12c:	80 81       	ld	r24, Z
 12e:	0e 94 5f 00 	call	0xbe	; 0xbe <usart_transmit>
 132:	cf 5f       	subi	r28, 0xFF	; 255
 134:	f3 cf       	rjmp	.-26     	; 0x11c <usart_send+0x10>
 136:	cf 91       	pop	r28
 138:	1f 91       	pop	r17
 13a:	0f 91       	pop	r16
 13c:	ff 90       	pop	r15
 13e:	ef 90       	pop	r14
 140:	08 95       	ret

00000142 <main>:
 142:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
 146:	88 e0       	ldi	r24, 0x08	; 8
 148:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
 14c:	88 e1       	ldi	r24, 0x18	; 24
 14e:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__TEXT_REGION_LENGTH__+0x7e00c1>
 152:	86 e0       	ldi	r24, 0x06	; 6
 154:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__TEXT_REGION_LENGTH__+0x7e00c2>
 158:	c8 e6       	ldi	r28, 0x68	; 104
 15a:	d0 e0       	ldi	r29, 0x00	; 0
 15c:	fe 01       	movw	r30, r28
 15e:	84 91       	lpm	r24, Z
 160:	0e 94 5f 00 	call	0xbe	; 0xbe <usart_transmit>
 164:	21 96       	adiw	r28, 0x01	; 1
 166:	f0 e0       	ldi	r31, 0x00	; 0
 168:	c4 37       	cpi	r28, 0x74	; 116
 16a:	df 07       	cpc	r29, r31
 16c:	b9 f7       	brne	.-18     	; 0x15c <main+0x1a>
 16e:	c0 e0       	ldi	r28, 0x00	; 0
 170:	d1 e0       	ldi	r29, 0x01	; 1
 172:	07 e0       	ldi	r16, 0x07	; 7
 174:	11 e0       	ldi	r17, 0x01	; 1
 176:	89 91       	ld	r24, Y+
 178:	0e 94 5f 00 	call	0xbe	; 0xbe <usart_transmit>
 17c:	0c 17       	cp	r16, r28
 17e:	1d 07       	cpc	r17, r29
 180:	d1 f7       	brne	.-12     	; 0x176 <main+0x34>
 182:	62 e1       	ldi	r22, 0x12	; 18
 184:	70 e0       	ldi	r23, 0x00	; 0
 186:	88 e1       	ldi	r24, 0x18	; 24
 188:	91 e0       	ldi	r25, 0x01	; 1
 18a:	0e 94 86 00 	call	0x10c	; 0x10c <usart_send>
 18e:	82 e7       	ldi	r24, 0x72	; 114
 190:	91 e0       	ldi	r25, 0x01	; 1
 192:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 196:	60 e1       	ldi	r22, 0x10	; 16
 198:	70 e0       	ldi	r23, 0x00	; 0
 19a:	8b e2       	ldi	r24, 0x2B	; 43
 19c:	91 e0       	ldi	r25, 0x01	; 1
 19e:	0e 94 86 00 	call	0x10c	; 0x10c <usart_send>
 1a2:	84 e7       	ldi	r24, 0x74	; 116
 1a4:	91 e0       	ldi	r25, 0x01	; 1
 1a6:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 1aa:	61 e1       	ldi	r22, 0x11	; 17
 1ac:	70 e0       	ldi	r23, 0x00	; 0
 1ae:	8c e3       	ldi	r24, 0x3C	; 60
 1b0:	91 e0       	ldi	r25, 0x01	; 1
 1b2:	0e 94 86 00 	call	0x10c	; 0x10c <usart_send>
 1b6:	84 e7       	ldi	r24, 0x74	; 116
 1b8:	91 e0       	ldi	r25, 0x01	; 1
 1ba:	82 57       	subi	r24, 0x72	; 114
 1bc:	91 40       	sbci	r25, 0x01	; 1
 1be:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 1c2:	62 e2       	ldi	r22, 0x22	; 34
 1c4:	70 e0       	ldi	r23, 0x00	; 0
 1c6:	8e e4       	ldi	r24, 0x4E	; 78
 1c8:	91 e0       	ldi	r25, 0x01	; 1
 1ca:	0e 94 86 00 	call	0x10c	; 0x10c <usart_send>
 1ce:	80 91 72 01 	lds	r24, 0x0172	; 0x800172 <__data_end>
 1d2:	90 91 73 01 	lds	r25, 0x0173	; 0x800173 <__data_end+0x1>
 1d6:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 1da:	2f ef       	ldi	r18, 0xFF	; 255
 1dc:	87 ea       	ldi	r24, 0xA7	; 167
 1de:	91 e6       	ldi	r25, 0x61	; 97
 1e0:	21 50       	subi	r18, 0x01	; 1
 1e2:	80 40       	sbci	r24, 0x00	; 0
 1e4:	90 40       	sbci	r25, 0x00	; 0
 1e6:	e1 f7       	brne	.-8      	; 0x1e0 <main+0x9e>
 1e8:	00 c0       	rjmp	.+0      	; 0x1ea <main+0xa8>
 1ea:	00 00       	nop
 1ec:	ef ef       	ldi	r30, 0xFF	; 255
 1ee:	f3 ed       	ldi	r31, 0xD3	; 211
 1f0:	20 e3       	ldi	r18, 0x30	; 48
 1f2:	e1 50       	subi	r30, 0x01	; 1
 1f4:	f0 40       	sbci	r31, 0x00	; 0
 1f6:	20 40       	sbci	r18, 0x00	; 0
 1f8:	e1 f7       	brne	.-8      	; 0x1f2 <main+0xb0>
 1fa:	00 c0       	rjmp	.+0      	; 0x1fc <main+0xba>
 1fc:	00 00       	nop
 1fe:	85 b1       	in	r24, 0x05	; 5
 200:	80 95       	com	r24
 202:	85 b9       	out	0x05, r24	; 5
 204:	f3 cf       	rjmp	.-26     	; 0x1ec <main+0xaa>

00000206 <_exit>:
 206:	f8 94       	cli

00000208 <__stop_program>:
 208:	ff cf       	rjmp	.-2      	; 0x208 <__stop_program>
