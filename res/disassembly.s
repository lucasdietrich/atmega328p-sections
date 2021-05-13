
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
  96:	ec e6       	ldi	r30, 0x6C	; 108
  98:	f2 e0       	ldi	r31, 0x02	; 2
  9a:	02 c0       	rjmp	.+4      	; 0xa0 <__do_copy_data+0x10>
  9c:	05 90       	lpm	r0, Z+
  9e:	0d 92       	st	X+, r0
  a0:	ad 3d       	cpi	r26, 0xDD	; 221
  a2:	b1 07       	cpc	r27, r17
  a4:	d9 f7       	brne	.-10     	; 0x9c <__do_copy_data+0xc>

000000a6 <init_anyway_haha>:
  a6:	8c ee       	ldi	r24, 0xEC	; 236
  a8:	9d ea       	ldi	r25, 0xAD	; 173
  aa:	90 93 de 01 	sts	0x01DE, r25	; 0x8001de <__customramsection_end+0x1>
  ae:	80 93 dd 01 	sts	0x01DD, r24	; 0x8001dd <__customramsection_end>
  b2:	0e 94 a7 00 	call	0x14e	; 0x14e <main>
  b6:	0c 94 34 01 	jmp	0x268	; 0x268 <_exit>

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

0000010c <usart_printf>:
 10c:	ef 92       	push	r14
 10e:	ff 92       	push	r15
 110:	1f 93       	push	r17
 112:	cf 93       	push	r28
 114:	df 93       	push	r29
 116:	7c 01       	movw	r14, r24
 118:	ec 01       	movw	r28, r24
 11a:	09 90       	ld	r0, Y+
 11c:	00 20       	and	r0, r0
 11e:	e9 f7       	brne	.-6      	; 0x11a <usart_printf+0xe>
 120:	21 97       	sbiw	r28, 0x01	; 1
 122:	c8 1b       	sub	r28, r24
 124:	d9 0b       	sbc	r29, r25
 126:	10 e0       	ldi	r17, 0x00	; 0
 128:	81 2f       	mov	r24, r17
 12a:	90 e0       	ldi	r25, 0x00	; 0
 12c:	8c 17       	cp	r24, r28
 12e:	9d 07       	cpc	r25, r29
 130:	40 f4       	brcc	.+16     	; 0x142 <usart_printf+0x36>
 132:	8e 0d       	add	r24, r14
 134:	9f 1d       	adc	r25, r15
 136:	fc 01       	movw	r30, r24
 138:	80 81       	ld	r24, Z
 13a:	0e 94 5f 00 	call	0xbe	; 0xbe <usart_transmit>
 13e:	1f 5f       	subi	r17, 0xFF	; 255
 140:	f3 cf       	rjmp	.-26     	; 0x128 <usart_printf+0x1c>
 142:	df 91       	pop	r29
 144:	cf 91       	pop	r28
 146:	1f 91       	pop	r17
 148:	ff 90       	pop	r15
 14a:	ef 90       	pop	r14
 14c:	08 95       	ret

0000014e <main>:
 14e:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
 152:	88 e0       	ldi	r24, 0x08	; 8
 154:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
 158:	88 e1       	ldi	r24, 0x18	; 24
 15a:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__TEXT_REGION_LENGTH__+0x7e00c1>
 15e:	86 e0       	ldi	r24, 0x06	; 6
 160:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__TEXT_REGION_LENGTH__+0x7e00c2>
 164:	c8 e6       	ldi	r28, 0x68	; 104
 166:	d0 e0       	ldi	r29, 0x00	; 0
 168:	fe 01       	movw	r30, r28
 16a:	84 91       	lpm	r24, Z
 16c:	0e 94 5f 00 	call	0xbe	; 0xbe <usart_transmit>
 170:	21 96       	adiw	r28, 0x01	; 1
 172:	f0 e0       	ldi	r31, 0x00	; 0
 174:	c4 37       	cpi	r28, 0x74	; 116
 176:	df 07       	cpc	r29, r31
 178:	b9 f7       	brne	.-18     	; 0x168 <main+0x1a>
 17a:	c0 e0       	ldi	r28, 0x00	; 0
 17c:	d1 e0       	ldi	r29, 0x01	; 1
 17e:	07 e0       	ldi	r16, 0x07	; 7
 180:	11 e0       	ldi	r17, 0x01	; 1
 182:	89 91       	ld	r24, Y+
 184:	0e 94 5f 00 	call	0xbe	; 0xbe <usart_transmit>
 188:	0c 17       	cp	r16, r28
 18a:	1d 07       	cpc	r17, r29
 18c:	d1 f7       	brne	.-12     	; 0x182 <main+0x34>
 18e:	88 e1       	ldi	r24, 0x18	; 24
 190:	91 e0       	ldi	r25, 0x01	; 1
 192:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 196:	84 ed       	ldi	r24, 0xD4	; 212
 198:	91 e0       	ldi	r25, 0x01	; 1
 19a:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 19e:	85 e3       	ldi	r24, 0x35	; 53
 1a0:	91 e0       	ldi	r25, 0x01	; 1
 1a2:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 1a6:	8d ed       	ldi	r24, 0xDD	; 221
 1a8:	91 e0       	ldi	r25, 0x01	; 1
 1aa:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 1ae:	80 e5       	ldi	r24, 0x50	; 80
 1b0:	91 e0       	ldi	r25, 0x01	; 1
 1b2:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 1b6:	8d ed       	ldi	r24, 0xDD	; 221
 1b8:	91 e0       	ldi	r25, 0x01	; 1
 1ba:	84 5d       	subi	r24, 0xD4	; 212
 1bc:	91 40       	sbci	r25, 0x01	; 1
 1be:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 1c2:	8b e6       	ldi	r24, 0x6B	; 107
 1c4:	91 e0       	ldi	r25, 0x01	; 1
 1c6:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 1ca:	8d ed       	ldi	r24, 0xDD	; 221
 1cc:	91 e0       	ldi	r25, 0x01	; 1
 1ce:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 1d2:	8e e7       	ldi	r24, 0x7E	; 126
 1d4:	91 e0       	ldi	r25, 0x01	; 1
 1d6:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 1da:	8f ed       	ldi	r24, 0xDF	; 223
 1dc:	91 e0       	ldi	r25, 0x01	; 1
 1de:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 1e2:	8f e8       	ldi	r24, 0x8F	; 143
 1e4:	91 e0       	ldi	r25, 0x01	; 1
 1e6:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 1ea:	8f ed       	ldi	r24, 0xDF	; 223
 1ec:	91 e0       	ldi	r25, 0x01	; 1
 1ee:	8d 5d       	subi	r24, 0xDD	; 221
 1f0:	91 40       	sbci	r25, 0x01	; 1
 1f2:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 1f6:	80 ea       	ldi	r24, 0xA0	; 160
 1f8:	91 e0       	ldi	r25, 0x01	; 1
 1fa:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 1fe:	80 91 dd 01 	lds	r24, 0x01DD	; 0x8001dd <__customramsection_end>
 202:	90 91 de 01 	lds	r25, 0x01DE	; 0x8001de <__customramsection_end+0x1>
 206:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 20a:	83 ec       	ldi	r24, 0xC3	; 195
 20c:	91 e0       	ldi	r25, 0x01	; 1
 20e:	0e 94 86 00 	call	0x10c	; 0x10c <usart_printf>
 212:	8a ed       	ldi	r24, 0xDA	; 218
 214:	91 e0       	ldi	r25, 0x01	; 1
 216:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 21a:	80 e2       	ldi	r24, 0x20	; 32
 21c:	0e 94 5f 00 	call	0xbe	; 0xbe <usart_transmit>
 220:	87 ed       	ldi	r24, 0xD7	; 215
 222:	91 e0       	ldi	r25, 0x01	; 1
 224:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 228:	80 e2       	ldi	r24, 0x20	; 32
 22a:	0e 94 5f 00 	call	0xbe	; 0xbe <usart_transmit>
 22e:	84 ed       	ldi	r24, 0xD4	; 212
 230:	91 e0       	ldi	r25, 0x01	; 1
 232:	0e 94 7d 00 	call	0xfa	; 0xfa <usart_hex16>
 236:	80 e2       	ldi	r24, 0x20	; 32
 238:	0e 94 5f 00 	call	0xbe	; 0xbe <usart_transmit>
 23c:	2f ef       	ldi	r18, 0xFF	; 255
 23e:	87 ea       	ldi	r24, 0xA7	; 167
 240:	91 e6       	ldi	r25, 0x61	; 97
 242:	21 50       	subi	r18, 0x01	; 1
 244:	80 40       	sbci	r24, 0x00	; 0
 246:	90 40       	sbci	r25, 0x00	; 0
 248:	e1 f7       	brne	.-8      	; 0x242 <main+0xf4>
 24a:	00 c0       	rjmp	.+0      	; 0x24c <main+0xfe>
 24c:	00 00       	nop
 24e:	ef ef       	ldi	r30, 0xFF	; 255
 250:	f3 ed       	ldi	r31, 0xD3	; 211
 252:	20 e3       	ldi	r18, 0x30	; 48
 254:	e1 50       	subi	r30, 0x01	; 1
 256:	f0 40       	sbci	r31, 0x00	; 0
 258:	20 40       	sbci	r18, 0x00	; 0
 25a:	e1 f7       	brne	.-8      	; 0x254 <main+0x106>
 25c:	00 c0       	rjmp	.+0      	; 0x25e <main+0x110>
 25e:	00 00       	nop
 260:	85 b1       	in	r24, 0x05	; 5
 262:	80 95       	com	r24
 264:	85 b9       	out	0x05, r24	; 5
 266:	f3 cf       	rjmp	.-26     	; 0x24e <main+0x100>

00000268 <_exit>:
 268:	f8 94       	cli

0000026a <__stop_program>:
 26a:	ff cf       	rjmp	.-2      	; 0x26a <__stop_program>
