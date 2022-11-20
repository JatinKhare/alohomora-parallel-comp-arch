
TL_clang.o:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000100002f18 <__Z7my_lockv>:
100002f18: ff 83 00 d1 	sub	sp, sp, #32
100002f1c: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100002f20: fd 43 00 91 	add	x29, sp, #16
100002f24: 20 00 00 d0 	adrp	x0, 0x100008000 <__Z7my_lockv+0x24>
100002f28: 00 00 00 91 	add	x0, x0, #0
100002f2c: 21 00 80 52 	mov	w1, #1
100002f30: a2 00 80 52 	mov	w2, #5
100002f34: 0d 00 00 94 	bl	0x100002f68 <__ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE>
100002f38: a0 c3 1f b8 	stur	w0, [x29, #-4]
100002f3c: 01 00 00 14 	b	0x100002f40 <__Z7my_lockv+0x28>
100002f40: 28 00 00 d0 	adrp	x8, 0x100008000 <__Z7my_lockv+0x40>
100002f44: 08 09 40 79 	ldrh	w8, [x8, #4]
100002f48: a9 c3 5f b8 	ldur	w9, [x29, #-4]
100002f4c: 08 01 09 6b 	subs	w8, w8, w9
100002f50: 60 00 00 54 	b.eq	0x100002f5c <__Z7my_lockv+0x44>
100002f54: 01 00 00 14 	b	0x100002f58 <__Z7my_lockv+0x40>
100002f58: fa ff ff 17 	b	0x100002f40 <__Z7my_lockv+0x28>
100002f5c: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100002f60: ff 83 00 91 	add	sp, sp, #32
100002f64: c0 03 5f d6 	ret

0000000100002f68 <__ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE>:
100002f68: ff 83 00 d1 	sub	sp, sp, #32
100002f6c: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100002f70: fd 43 00 91 	add	x29, sp, #16
100002f74: e0 07 00 f9 	str	x0, [sp, #8]
100002f78: e1 07 00 b9 	str	w1, [sp, #4]
100002f7c: e2 03 00 b9 	str	w2, [sp]
100002f80: e0 07 40 f9 	ldr	x0, [sp, #8]
100002f84: e1 07 40 b9 	ldr	w1, [sp, #4]
100002f88: e2 03 40 b9 	ldr	w2, [sp]
100002f8c: 90 00 00 94 	bl	0x1000031cc <__ZNSt3__1L22__cxx_atomic_fetch_addIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE>
100002f90: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100002f94: ff 83 00 91 	add	sp, sp, #32
100002f98: c0 03 5f d6 	ret

0000000100002f9c <__Z9my_unlockv>:
100002f9c: 29 00 00 d0 	adrp	x9, 0x100008000 <__Z16increase_counterv+0x4>
100002fa0: 28 09 40 79 	ldrh	w8, [x9, #4]
100002fa4: 08 05 00 11 	add	w8, w8, #1
100002fa8: 28 09 00 79 	strh	w8, [x9, #4]
100002fac: c0 03 5f d6 	ret

0000000100002fb0 <__Z16increase_counterv>:
100002fb0: 29 00 00 d0 	adrp	x9, 0x100008000 <__Z12lock_examplePv+0x4>
100002fb4: 28 09 40 b9 	ldr	w8, [x9, #8]
100002fb8: 08 05 00 11 	add	w8, w8, #1
100002fbc: 28 09 00 b9 	str	w8, [x9, #8]
100002fc0: c0 03 5f d6 	ret

0000000100002fc4 <__Z12lock_examplePv>:
100002fc4: ff 83 00 d1 	sub	sp, sp, #32
100002fc8: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100002fcc: fd 43 00 91 	add	x29, sp, #16
100002fd0: e0 07 00 f9 	str	x0, [sp, #8]
100002fd4: ff 07 00 b9 	str	wzr, [sp, #4]
100002fd8: 01 00 00 14 	b	0x100002fdc <__Z12lock_examplePv+0x18>
100002fdc: e8 07 40 b9 	ldr	w8, [sp, #4]
100002fe0: 08 a1 0f 71 	subs	w8, w8, #1000
100002fe4: 4a 01 00 54 	b.ge	0x10000300c <__Z12lock_examplePv+0x48>
100002fe8: 01 00 00 14 	b	0x100002fec <__Z12lock_examplePv+0x28>
100002fec: cb ff ff 97 	bl	0x100002f18 <__Z7my_lockv>
100002ff0: f0 ff ff 97 	bl	0x100002fb0 <__Z16increase_counterv>
100002ff4: ea ff ff 97 	bl	0x100002f9c <__Z9my_unlockv>
100002ff8: 01 00 00 14 	b	0x100002ffc <__Z12lock_examplePv+0x38>
100002ffc: e8 07 40 b9 	ldr	w8, [sp, #4]
100003000: 08 05 00 11 	add	w8, w8, #1
100003004: e8 07 00 b9 	str	w8, [sp, #4]
100003008: f5 ff ff 17 	b	0x100002fdc <__Z12lock_examplePv+0x18>
10000300c: 00 00 80 d2 	mov	x0, #0
100003010: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003014: ff 83 00 91 	add	sp, sp, #32
100003018: c0 03 5f d6 	ret

000000010000301c <_main>:
10000301c: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
100003020: fd 03 00 91 	mov	x29, sp
100003024: ff 03 01 d1 	sub	sp, sp, #64
100003028: 08 00 00 b0 	adrp	x8, 0x100004000 <_main+0x10>
10000302c: 08 61 40 f9 	ldr	x8, [x8, #192]
100003030: 08 01 40 f9 	ldr	x8, [x8]
100003034: a8 83 1f f8 	stur	x8, [x29, #-8]
100003038: bf 43 1f b8 	stur	wzr, [x29, #-12]
10000303c: 08 01 80 52 	mov	w8, #8
100003040: a8 03 1f b8 	stur	w8, [x29, #-16]
100003044: a8 03 5f b8 	ldur	w8, [x29, #-16]
100003048: e9 03 00 91 	mov	x9, sp
10000304c: a9 83 1e f8 	stur	x9, [x29, #-24]
100003050: 09 f1 7d d3 	lsl	x9, x8, #3
100003054: 29 3d 00 91 	add	x9, x9, #15
100003058: 29 ed 7c 92 	and	x9, x9, #0xfffffffffffffff0
10000305c: a9 83 1c f8 	stur	x9, [x29, #-56]
100003060: 10 00 00 b0 	adrp	x16, 0x100004000 <_main+0x48>
100003064: 10 4e 40 f9 	ldr	x16, [x16, #152]
100003068: 00 02 3f d6 	blr	x16
10000306c: aa 83 5c f8 	ldur	x10, [x29, #-56]
100003070: e9 03 00 91 	mov	x9, sp
100003074: 29 01 0a eb 	subs	x9, x9, x10
100003078: 3f 01 00 91 	mov	sp, x9
10000307c: a9 03 1d f8 	stur	x9, [x29, #-48]
100003080: a8 03 1e f8 	stur	x8, [x29, #-32]
100003084: bf c3 1d b8 	stur	wzr, [x29, #-36]
100003088: 01 00 00 14 	b	0x10000308c <_main+0x70>
10000308c: a8 c3 5d b8 	ldur	w8, [x29, #-36]
100003090: a9 03 5f b8 	ldur	w9, [x29, #-16]
100003094: 08 01 09 6b 	subs	w8, w8, w9
100003098: ea 01 00 54 	b.ge	0x1000030d4 <_main+0xb8>
10000309c: 01 00 00 14 	b	0x1000030a0 <_main+0x84>
1000030a0: a8 03 5d f8 	ldur	x8, [x29, #-48]
1000030a4: a9 c3 9d b8 	ldursw	x9, [x29, #-36]
1000030a8: 00 0d 09 8b 	add	x0, x8, x9, lsl #3
1000030ac: 03 00 80 d2 	mov	x3, #0
1000030b0: e1 03 03 aa 	mov	x1, x3
1000030b4: e2 ff ff f0 	adrp	x2, 0x100002000 <_main+0x94>
1000030b8: 42 10 3f 91 	add	x2, x2, #4036
1000030bc: 69 03 00 94 	bl	0x100003e60 <_strlen+0x100003e60>
1000030c0: 01 00 00 14 	b	0x1000030c4 <_main+0xa8>
1000030c4: a8 c3 5d b8 	ldur	w8, [x29, #-36]
1000030c8: 08 05 00 11 	add	w8, w8, #1
1000030cc: a8 c3 1d b8 	stur	w8, [x29, #-36]
1000030d0: ef ff ff 17 	b	0x10000308c <_main+0x70>
1000030d4: bf 83 1d b8 	stur	wzr, [x29, #-40]
1000030d8: 01 00 00 14 	b	0x1000030dc <_main+0xc0>
1000030dc: a8 83 5d b8 	ldur	w8, [x29, #-40]
1000030e0: a9 03 5f b8 	ldur	w9, [x29, #-16]
1000030e4: 08 01 09 6b 	subs	w8, w8, w9
1000030e8: 8a 01 00 54 	b.ge	0x100003118 <_main+0xfc>
1000030ec: 01 00 00 14 	b	0x1000030f0 <_main+0xd4>
1000030f0: a8 03 5d f8 	ldur	x8, [x29, #-48]
1000030f4: a9 83 9d b8 	ldursw	x9, [x29, #-40]
1000030f8: 00 79 69 f8 	ldr	x0, [x8, x9, lsl #3]
1000030fc: 01 00 80 d2 	mov	x1, #0
100003100: 5b 03 00 94 	bl	0x100003e6c <_strlen+0x100003e6c>
100003104: 01 00 00 14 	b	0x100003108 <_main+0xec>
100003108: a8 83 5d b8 	ldur	w8, [x29, #-40]
10000310c: 08 05 00 11 	add	w8, w8, #1
100003110: a8 83 1d b8 	stur	w8, [x29, #-40]
100003114: f2 ff ff 17 	b	0x1000030dc <_main+0xc0>
100003118: 00 00 00 b0 	adrp	x0, 0x100004000 <_main+0x100>
10000311c: 00 30 40 f9 	ldr	x0, [x0, #96]
100003120: 01 00 00 90 	adrp	x1, 0x100003000 <_main+0x104>
100003124: 21 c0 3b 91 	add	x1, x1, #3824
100003128: 3f 03 00 94 	bl	0x100003e24 <_strlen+0x100003e24>
10000312c: 28 00 00 b0 	adrp	x8, 0x100008000 <_main+0x124>
100003130: 01 09 40 b9 	ldr	w1, [x8, #8]
100003134: 2d 03 00 94 	bl	0x100003de8 <_strlen+0x100003de8>
100003138: 01 00 00 90 	adrp	x1, 0x100003000 <_main+0x11c>
10000313c: 21 ec 3b 91 	add	x1, x1, #3835
100003140: 39 03 00 94 	bl	0x100003e24 <_strlen+0x100003e24>
100003144: a8 83 5e f8 	ldur	x8, [x29, #-24]
100003148: 1f 01 00 91 	mov	sp, x8
10000314c: a8 43 5f b8 	ldur	w8, [x29, #-12]
100003150: a8 43 1c b8 	stur	w8, [x29, #-60]
100003154: a9 83 5f f8 	ldur	x9, [x29, #-8]
100003158: 08 00 00 b0 	adrp	x8, 0x100004000 <_main+0x140>
10000315c: 08 61 40 f9 	ldr	x8, [x8, #192]
100003160: 08 01 40 f9 	ldr	x8, [x8]
100003164: 08 01 09 eb 	subs	x8, x8, x9
100003168: 60 00 00 54 	b.eq	0x100003174 <_main+0x158>
10000316c: 01 00 00 14 	b	0x100003170 <_main+0x154>
100003170: 39 03 00 94 	bl	0x100003e54 <_strlen+0x100003e54>
100003174: a0 43 5c b8 	ldur	w0, [x29, #-60]
100003178: bf 03 00 91 	mov	sp, x29
10000317c: fd 7b c1 a8 	ldp	x29, x30, [sp], #16
100003180: c0 03 5f d6 	ret

0000000100003184 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>:
100003184: ff c3 00 d1 	sub	sp, sp, #48
100003188: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
10000318c: fd 83 00 91 	add	x29, sp, #32
100003190: a0 83 1f f8 	stur	x0, [x29, #-8]
100003194: e1 0b 00 f9 	str	x1, [sp, #16]
100003198: a8 83 5f f8 	ldur	x8, [x29, #-8]
10000319c: e8 07 00 f9 	str	x8, [sp, #8]
1000031a0: e8 0b 40 f9 	ldr	x8, [sp, #16]
1000031a4: e8 03 00 f9 	str	x8, [sp]
1000031a8: e0 0b 40 f9 	ldr	x0, [sp, #16]
1000031ac: 00 03 00 94 	bl	0x100003dac <_strlen+0x100003dac>
1000031b0: e1 03 40 f9 	ldr	x1, [sp]
1000031b4: e2 03 00 aa 	mov	x2, x0
1000031b8: e0 07 40 f9 	ldr	x0, [sp, #8]
1000031bc: 0e 03 00 94 	bl	0x100003df4 <_strlen+0x100003df4>
1000031c0: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
1000031c4: ff c3 00 91 	add	sp, sp, #48
1000031c8: c0 03 5f d6 	ret

00000001000031cc <__ZNSt3__1L22__cxx_atomic_fetch_addIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE>:
1000031cc: ff c3 00 d1 	sub	sp, sp, #48
1000031d0: e0 17 00 f9 	str	x0, [sp, #40]
1000031d4: e1 27 00 b9 	str	w1, [sp, #36]
1000031d8: e2 23 00 b9 	str	w2, [sp, #32]
1000031dc: e8 17 40 f9 	ldr	x8, [sp, #40]
1000031e0: e8 07 00 f9 	str	x8, [sp, #8]
1000031e4: e8 23 40 b9 	ldr	w8, [sp, #32]
1000031e8: e9 27 40 b9 	ldr	w9, [sp, #36]
1000031ec: e9 1f 00 b9 	str	w9, [sp, #28]
1000031f0: 08 05 00 71 	subs	w8, w8, #1
1000031f4: e8 0b 00 f9 	str	x8, [sp, #16]
1000031f8: 08 11 00 f1 	subs	x8, x8, #4
1000031fc: 08 01 00 54 	b.hi	0x10000321c <__ZNSt3__1L22__cxx_atomic_fetch_addIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE+0x50>
100003200: eb 0b 40 f9 	ldr	x11, [sp, #16]
100003204: 0a 00 00 90 	adrp	x10, 0x100003000 <__ZNSt3__1L22__cxx_atomic_fetch_addIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE+0x38>
100003208: 4a 31 0a 91 	add	x10, x10, #652
10000320c: 08 00 00 10 	adr	x8, #0
100003210: 49 79 ab b8 	ldrsw	x9, [x10, x11, lsl #2]
100003214: 08 01 09 8b 	add	x8, x8, x9
100003218: 00 01 1f d6 	br	x8
10000321c: e9 07 40 f9 	ldr	x9, [sp, #8]
100003220: e8 1f 40 b9 	ldr	w8, [sp, #28]
100003224: 28 01 28 b8 	<unknown>
100003228: e8 1b 00 b9 	str	w8, [sp, #24]
10000322c: 15 00 00 14 	b	0x100003280 <__ZNSt3__1L22__cxx_atomic_fetch_addIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE+0xb4>
100003230: e9 07 40 f9 	ldr	x9, [sp, #8]
100003234: e8 1f 40 b9 	ldr	w8, [sp, #28]
100003238: 28 01 a8 b8 	<unknown>
10000323c: e8 1b 00 b9 	str	w8, [sp, #24]
100003240: 10 00 00 14 	b	0x100003280 <__ZNSt3__1L22__cxx_atomic_fetch_addIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE+0xb4>
100003244: e9 07 40 f9 	ldr	x9, [sp, #8]
100003248: e8 1f 40 b9 	ldr	w8, [sp, #28]
10000324c: 28 01 68 b8 	<unknown>
100003250: e8 1b 00 b9 	str	w8, [sp, #24]
100003254: 0b 00 00 14 	b	0x100003280 <__ZNSt3__1L22__cxx_atomic_fetch_addIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE+0xb4>
100003258: e9 07 40 f9 	ldr	x9, [sp, #8]
10000325c: e8 1f 40 b9 	ldr	w8, [sp, #28]
100003260: 28 01 e8 b8 	<unknown>
100003264: e8 1b 00 b9 	str	w8, [sp, #24]
100003268: 06 00 00 14 	b	0x100003280 <__ZNSt3__1L22__cxx_atomic_fetch_addIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE+0xb4>
10000326c: e9 07 40 f9 	ldr	x9, [sp, #8]
100003270: e8 1f 40 b9 	ldr	w8, [sp, #28]
100003274: 28 01 e8 b8 	<unknown>
100003278: e8 1b 00 b9 	str	w8, [sp, #24]
10000327c: 01 00 00 14 	b	0x100003280 <__ZNSt3__1L22__cxx_atomic_fetch_addIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE+0xb4>
100003280: e0 1b 40 b9 	ldr	w0, [sp, #24]
100003284: ff c3 00 91 	add	sp, sp, #48
100003288: c0 03 5f d6 	ret
10000328c: 24 00 00 00 	udf	#36
100003290: 24 00 00 00 	udf	#36
100003294: 38 00 00 00 	udf	#56
100003298: 4c 00 00 00 	udf	#76
10000329c: 60 00 00 00 	udf	#96

00000001000032a0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>:
1000032a0: ff 83 02 d1 	sub	sp, sp, #160
1000032a4: fd 7b 09 a9 	stp	x29, x30, [sp, #144]
1000032a8: fd 43 02 91 	add	x29, sp, #144
1000032ac: a0 83 1f f8 	stur	x0, [x29, #-8]
1000032b0: a1 03 1f f8 	stur	x1, [x29, #-16]
1000032b4: a2 83 1e f8 	stur	x2, [x29, #-24]
1000032b8: a1 83 5f f8 	ldur	x1, [x29, #-8]
1000032bc: a0 a3 00 d1 	sub	x0, x29, #40
1000032c0: c4 02 00 94 	bl	0x100003dd0 <_strlen+0x100003dd0>
1000032c4: 01 00 00 14 	b	0x1000032c8 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x28>
1000032c8: a0 a3 00 d1 	sub	x0, x29, #40
1000032cc: 78 00 00 94 	bl	0x1000034ac <__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv>
1000032d0: e0 47 00 b9 	str	w0, [sp, #68]
1000032d4: 01 00 00 14 	b	0x1000032d8 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x38>
1000032d8: e8 47 40 b9 	ldr	w8, [sp, #68]
1000032dc: e8 0b 00 36 	tbz	w8, #0, 0x100003458 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b8>
1000032e0: 01 00 00 14 	b	0x1000032e4 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x44>
1000032e4: a1 83 5f f8 	ldur	x1, [x29, #-8]
1000032e8: e0 23 01 91 	add	x0, sp, #72
1000032ec: fc 00 00 94 	bl	0x1000036dc <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE>
1000032f0: a8 03 5f f8 	ldur	x8, [x29, #-16]
1000032f4: e8 1f 00 f9 	str	x8, [sp, #56]
1000032f8: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000032fc: 09 01 40 f9 	ldr	x9, [x8]
100003300: 29 81 5e f8 	ldur	x9, [x9, #-24]
100003304: 00 01 09 8b 	add	x0, x8, x9
100003308: 02 01 00 94 	bl	0x100003710 <__ZNKSt3__18ios_base5flagsEv>
10000330c: e0 43 00 b9 	str	w0, [sp, #64]
100003310: 01 00 00 14 	b	0x100003314 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x74>
100003314: e8 43 40 b9 	ldr	w8, [sp, #64]
100003318: 09 16 80 52 	mov	w9, #176
10000331c: 08 01 09 0a 	and	w8, w8, w9
100003320: 08 81 00 71 	subs	w8, w8, #32
100003324: e1 00 00 54 	b.ne	0x100003340 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xa0>
100003328: 01 00 00 14 	b	0x10000332c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x8c>
10000332c: a8 03 5f f8 	ldur	x8, [x29, #-16]
100003330: a9 83 5e f8 	ldur	x9, [x29, #-24]
100003334: 08 01 09 8b 	add	x8, x8, x9
100003338: e8 1b 00 f9 	str	x8, [sp, #48]
10000333c: 04 00 00 14 	b	0x10000334c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xac>
100003340: a8 03 5f f8 	ldur	x8, [x29, #-16]
100003344: e8 1b 00 f9 	str	x8, [sp, #48]
100003348: 01 00 00 14 	b	0x10000334c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xac>
10000334c: e8 1b 40 f9 	ldr	x8, [sp, #48]
100003350: e8 0b 00 f9 	str	x8, [sp, #16]
100003354: a8 03 5f f8 	ldur	x8, [x29, #-16]
100003358: a9 83 5e f8 	ldur	x9, [x29, #-24]
10000335c: 08 01 09 8b 	add	x8, x8, x9
100003360: e8 0f 00 f9 	str	x8, [sp, #24]
100003364: a8 83 5f f8 	ldur	x8, [x29, #-8]
100003368: 09 01 40 f9 	ldr	x9, [x8]
10000336c: 29 81 5e f8 	ldur	x9, [x9, #-24]
100003370: 08 01 09 8b 	add	x8, x8, x9
100003374: e8 13 00 f9 	str	x8, [sp, #32]
100003378: a8 83 5f f8 	ldur	x8, [x29, #-8]
10000337c: 09 01 40 f9 	ldr	x9, [x8]
100003380: 29 81 5e f8 	ldur	x9, [x9, #-24]
100003384: 00 01 09 8b 	add	x0, x8, x9
100003388: e8 00 00 94 	bl	0x100003728 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv>
10000338c: e0 2f 00 b9 	str	w0, [sp, #44]
100003390: 01 00 00 14 	b	0x100003394 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xf4>
100003394: e8 2f 40 b9 	ldr	w8, [sp, #44]
100003398: e4 13 40 f9 	ldr	x4, [sp, #32]
10000339c: e3 0f 40 f9 	ldr	x3, [sp, #24]
1000033a0: e2 0b 40 f9 	ldr	x2, [sp, #16]
1000033a4: e1 1f 40 f9 	ldr	x1, [sp, #56]
1000033a8: e0 27 40 f9 	ldr	x0, [sp, #72]
1000033ac: 05 1d 00 13 	sxtb	w5, w8
1000033b0: 46 00 00 94 	bl	0x1000034c8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>
1000033b4: e0 07 00 f9 	str	x0, [sp, #8]
1000033b8: 01 00 00 14 	b	0x1000033bc <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x11c>
1000033bc: e8 07 40 f9 	ldr	x8, [sp, #8]
1000033c0: a0 03 01 d1 	sub	x0, x29, #64
1000033c4: a8 03 1c f8 	stur	x8, [x29, #-64]
1000033c8: f1 00 00 94 	bl	0x10000378c <__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv>
1000033cc: 40 04 00 36 	tbz	w0, #0, 0x100003454 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b4>
1000033d0: 01 00 00 14 	b	0x1000033d4 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x134>
1000033d4: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000033d8: 09 01 40 f9 	ldr	x9, [x8]
1000033dc: 29 81 5e f8 	ldur	x9, [x9, #-24]
1000033e0: 00 01 09 8b 	add	x0, x8, x9
1000033e4: a1 00 80 52 	mov	w1, #5
1000033e8: f2 00 00 94 	bl	0x1000037b0 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj>
1000033ec: 01 00 00 14 	b	0x1000033f0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x150>
1000033f0: 19 00 00 14 	b	0x100003454 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b4>
1000033f4: e8 03 01 aa 	mov	x8, x1
1000033f8: a0 03 1d f8 	stur	x0, [x29, #-48]
1000033fc: a8 c3 1c b8 	stur	w8, [x29, #-52]
100003400: 07 00 00 14 	b	0x10000341c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x17c>
100003404: e8 03 01 aa 	mov	x8, x1
100003408: a0 03 1d f8 	stur	x0, [x29, #-48]
10000340c: a8 c3 1c b8 	stur	w8, [x29, #-52]
100003410: a0 a3 00 d1 	sub	x0, x29, #40
100003414: 72 02 00 94 	bl	0x100003ddc <_strlen+0x100003ddc>
100003418: 01 00 00 14 	b	0x10000341c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x17c>
10000341c: a0 03 5d f8 	ldur	x0, [x29, #-48]
100003420: 87 02 00 94 	bl	0x100003e3c <_strlen+0x100003e3c>
100003424: a8 83 5f f8 	ldur	x8, [x29, #-8]
100003428: 09 01 40 f9 	ldr	x9, [x8]
10000342c: 29 81 5e f8 	ldur	x9, [x9, #-24]
100003430: 00 01 09 8b 	add	x0, x8, x9
100003434: 76 02 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
100003438: 01 00 00 14 	b	0x10000343c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x19c>
10000343c: 83 02 00 94 	bl	0x100003e48 <_strlen+0x100003e48>
100003440: 01 00 00 14 	b	0x100003444 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1a4>
100003444: a0 83 5f f8 	ldur	x0, [x29, #-8]
100003448: fd 7b 49 a9 	ldp	x29, x30, [sp, #144]
10000344c: ff 83 02 91 	add	sp, sp, #160
100003450: c0 03 5f d6 	ret
100003454: 01 00 00 14 	b	0x100003458 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b8>
100003458: a0 a3 00 d1 	sub	x0, x29, #40
10000345c: 60 02 00 94 	bl	0x100003ddc <_strlen+0x100003ddc>
100003460: f9 ff ff 17 	b	0x100003444 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1a4>
100003464: e8 03 01 aa 	mov	x8, x1
100003468: a0 03 1d f8 	stur	x0, [x29, #-48]
10000346c: a8 c3 1c b8 	stur	w8, [x29, #-52]
100003470: 76 02 00 94 	bl	0x100003e48 <_strlen+0x100003e48>
100003474: 01 00 00 14 	b	0x100003478 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1d8>
100003478: 01 00 00 14 	b	0x10000347c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1dc>
10000347c: a0 03 5d f8 	ldur	x0, [x29, #-48]
100003480: 3c 02 00 94 	bl	0x100003d70 <_strlen+0x100003d70>
100003484: d6 00 00 94 	bl	0x1000037dc <___clang_call_terminate>

0000000100003488 <__ZNSt3__111char_traitsIcE6lengthEPKc>:
100003488: ff 83 00 d1 	sub	sp, sp, #32
10000348c: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003490: fd 43 00 91 	add	x29, sp, #16
100003494: e0 07 00 f9 	str	x0, [sp, #8]
100003498: e0 07 40 f9 	ldr	x0, [sp, #8]
10000349c: 77 02 00 94 	bl	0x100003e78 <_strlen+0x100003e78>
1000034a0: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
1000034a4: ff 83 00 91 	add	sp, sp, #32
1000034a8: c0 03 5f d6 	ret

00000001000034ac <__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv>:
1000034ac: ff 43 00 d1 	sub	sp, sp, #16
1000034b0: e0 07 00 f9 	str	x0, [sp, #8]
1000034b4: e8 07 40 f9 	ldr	x8, [sp, #8]
1000034b8: 08 01 40 39 	ldrb	w8, [x8]
1000034bc: 00 01 00 12 	and	w0, w8, #0x1
1000034c0: ff 43 00 91 	add	sp, sp, #16
1000034c4: c0 03 5f d6 	ret

00000001000034c8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>:
1000034c8: ff 83 02 d1 	sub	sp, sp, #160
1000034cc: fd 7b 09 a9 	stp	x29, x30, [sp, #144]
1000034d0: fd 43 02 91 	add	x29, sp, #144
1000034d4: a0 03 1f f8 	stur	x0, [x29, #-16]
1000034d8: a1 83 1e f8 	stur	x1, [x29, #-24]
1000034dc: a2 03 1e f8 	stur	x2, [x29, #-32]
1000034e0: a3 83 1d f8 	stur	x3, [x29, #-40]
1000034e4: a4 03 1d f8 	stur	x4, [x29, #-48]
1000034e8: a5 f3 1c 38 	sturb	w5, [x29, #-49]
1000034ec: a8 03 5f f8 	ldur	x8, [x29, #-16]
1000034f0: a8 00 00 b5 	cbnz	x8, 0x100003504 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x3c>
1000034f4: 01 00 00 14 	b	0x1000034f8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x30>
1000034f8: a8 03 5f f8 	ldur	x8, [x29, #-16]
1000034fc: a8 83 1f f8 	stur	x8, [x29, #-8]
100003500: 71 00 00 14 	b	0x1000036c4 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
100003504: a8 83 5d f8 	ldur	x8, [x29, #-40]
100003508: a9 83 5e f8 	ldur	x9, [x29, #-24]
10000350c: 08 01 09 eb 	subs	x8, x8, x9
100003510: a8 03 1c f8 	stur	x8, [x29, #-64]
100003514: a0 03 5d f8 	ldur	x0, [x29, #-48]
100003518: b4 00 00 94 	bl	0x1000037e8 <__ZNKSt3__18ios_base5widthEv>
10000351c: e0 27 00 f9 	str	x0, [sp, #72]
100003520: e8 27 40 f9 	ldr	x8, [sp, #72]
100003524: a9 03 5c f8 	ldur	x9, [x29, #-64]
100003528: 08 01 09 eb 	subs	x8, x8, x9
10000352c: ed 00 00 54 	b.le	0x100003548 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x80>
100003530: 01 00 00 14 	b	0x100003534 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x6c>
100003534: a9 03 5c f8 	ldur	x9, [x29, #-64]
100003538: e8 27 40 f9 	ldr	x8, [sp, #72]
10000353c: 08 01 09 eb 	subs	x8, x8, x9
100003540: e8 27 00 f9 	str	x8, [sp, #72]
100003544: 03 00 00 14 	b	0x100003550 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x88>
100003548: ff 27 00 f9 	str	xzr, [sp, #72]
10000354c: 01 00 00 14 	b	0x100003550 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x88>
100003550: a8 03 5e f8 	ldur	x8, [x29, #-32]
100003554: a9 83 5e f8 	ldur	x9, [x29, #-24]
100003558: 08 01 09 eb 	subs	x8, x8, x9
10000355c: e8 23 00 f9 	str	x8, [sp, #64]
100003560: e8 23 40 f9 	ldr	x8, [sp, #64]
100003564: 08 01 00 f1 	subs	x8, x8, #0
100003568: ed 01 00 54 	b.le	0x1000035a4 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdc>
10000356c: 01 00 00 14 	b	0x100003570 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xa8>
100003570: a0 03 5f f8 	ldur	x0, [x29, #-16]
100003574: a1 83 5e f8 	ldur	x1, [x29, #-24]
100003578: e2 23 40 f9 	ldr	x2, [sp, #64]
10000357c: a1 00 00 94 	bl	0x100003800 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>
100003580: e8 23 40 f9 	ldr	x8, [sp, #64]
100003584: 08 00 08 eb 	subs	x8, x0, x8
100003588: c0 00 00 54 	b.eq	0x1000035a0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xd8>
10000358c: 01 00 00 14 	b	0x100003590 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xc8>
100003590: bf 03 1f f8 	stur	xzr, [x29, #-16]
100003594: a8 03 5f f8 	ldur	x8, [x29, #-16]
100003598: a8 83 1f f8 	stur	x8, [x29, #-8]
10000359c: 4a 00 00 14 	b	0x1000036c4 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
1000035a0: 01 00 00 14 	b	0x1000035a4 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdc>
1000035a4: e8 27 40 f9 	ldr	x8, [sp, #72]
1000035a8: 08 01 00 f1 	subs	x8, x8, #0
1000035ac: 6d 05 00 54 	b.le	0x100003658 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x190>
1000035b0: 01 00 00 14 	b	0x1000035b4 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xec>
1000035b4: e1 27 40 f9 	ldr	x1, [sp, #72]
1000035b8: a2 f3 dc 38 	ldursb	w2, [x29, #-49]
1000035bc: e0 a3 00 91 	add	x0, sp, #40
1000035c0: e0 03 00 f9 	str	x0, [sp]
1000035c4: 9e 00 00 94 	bl	0x10000383c <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc>
1000035c8: e0 03 40 f9 	ldr	x0, [sp]
1000035cc: a8 03 5f f8 	ldur	x8, [x29, #-16]
1000035d0: e8 07 00 f9 	str	x8, [sp, #8]
1000035d4: a9 00 00 94 	bl	0x100003878 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv>
1000035d8: e1 03 00 aa 	mov	x1, x0
1000035dc: e0 07 40 f9 	ldr	x0, [sp, #8]
1000035e0: e2 27 40 f9 	ldr	x2, [sp, #72]
1000035e4: 87 00 00 94 	bl	0x100003800 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>
1000035e8: e0 0b 00 f9 	str	x0, [sp, #16]
1000035ec: 01 00 00 14 	b	0x1000035f0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x128>
1000035f0: e8 0b 40 f9 	ldr	x8, [sp, #16]
1000035f4: e9 27 40 f9 	ldr	x9, [sp, #72]
1000035f8: 08 01 09 eb 	subs	x8, x8, x9
1000035fc: c0 01 00 54 	b.eq	0x100003634 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x16c>
100003600: 01 00 00 14 	b	0x100003604 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x13c>
100003604: bf 03 1f f8 	stur	xzr, [x29, #-16]
100003608: a8 03 5f f8 	ldur	x8, [x29, #-16]
10000360c: a8 83 1f f8 	stur	x8, [x29, #-8]
100003610: 28 00 80 52 	mov	w8, #1
100003614: e8 1b 00 b9 	str	w8, [sp, #24]
100003618: 09 00 00 14 	b	0x10000363c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x174>
10000361c: e8 03 01 aa 	mov	x8, x1
100003620: e0 13 00 f9 	str	x0, [sp, #32]
100003624: e8 1f 00 b9 	str	w8, [sp, #28]
100003628: e0 a3 00 91 	add	x0, sp, #40
10000362c: e6 01 00 94 	bl	0x100003dc4 <_strlen+0x100003dc4>
100003630: 29 00 00 14 	b	0x1000036d4 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x20c>
100003634: ff 1b 00 b9 	str	wzr, [sp, #24]
100003638: 01 00 00 14 	b	0x10000363c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x174>
10000363c: e0 a3 00 91 	add	x0, sp, #40
100003640: e1 01 00 94 	bl	0x100003dc4 <_strlen+0x100003dc4>
100003644: e8 1b 40 b9 	ldr	w8, [sp, #24]
100003648: 68 00 00 34 	cbz	w8, 0x100003654 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x18c>
10000364c: 01 00 00 14 	b	0x100003650 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x188>
100003650: 1d 00 00 14 	b	0x1000036c4 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
100003654: 01 00 00 14 	b	0x100003658 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x190>
100003658: a8 83 5d f8 	ldur	x8, [x29, #-40]
10000365c: a9 03 5e f8 	ldur	x9, [x29, #-32]
100003660: 08 01 09 eb 	subs	x8, x8, x9
100003664: e8 23 00 f9 	str	x8, [sp, #64]
100003668: e8 23 40 f9 	ldr	x8, [sp, #64]
10000366c: 08 01 00 f1 	subs	x8, x8, #0
100003670: ed 01 00 54 	b.le	0x1000036ac <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e4>
100003674: 01 00 00 14 	b	0x100003678 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1b0>
100003678: a0 03 5f f8 	ldur	x0, [x29, #-16]
10000367c: a1 03 5e f8 	ldur	x1, [x29, #-32]
100003680: e2 23 40 f9 	ldr	x2, [sp, #64]
100003684: 5f 00 00 94 	bl	0x100003800 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>
100003688: e8 23 40 f9 	ldr	x8, [sp, #64]
10000368c: 08 00 08 eb 	subs	x8, x0, x8
100003690: c0 00 00 54 	b.eq	0x1000036a8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e0>
100003694: 01 00 00 14 	b	0x100003698 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1d0>
100003698: bf 03 1f f8 	stur	xzr, [x29, #-16]
10000369c: a8 03 5f f8 	ldur	x8, [x29, #-16]
1000036a0: a8 83 1f f8 	stur	x8, [x29, #-8]
1000036a4: 08 00 00 14 	b	0x1000036c4 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
1000036a8: 01 00 00 14 	b	0x1000036ac <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e4>
1000036ac: a0 03 5d f8 	ldur	x0, [x29, #-48]
1000036b0: 01 00 80 d2 	mov	x1, #0
1000036b4: 7b 00 00 94 	bl	0x1000038a0 <__ZNSt3__18ios_base5widthEl>
1000036b8: a8 03 5f f8 	ldur	x8, [x29, #-16]
1000036bc: a8 83 1f f8 	stur	x8, [x29, #-8]
1000036c0: 01 00 00 14 	b	0x1000036c4 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
1000036c4: a0 83 5f f8 	ldur	x0, [x29, #-8]
1000036c8: fd 7b 49 a9 	ldp	x29, x30, [sp, #144]
1000036cc: ff 83 02 91 	add	sp, sp, #160
1000036d0: c0 03 5f d6 	ret
1000036d4: e0 13 40 f9 	ldr	x0, [sp, #32]
1000036d8: a6 01 00 94 	bl	0x100003d70 <_strlen+0x100003d70>

00000001000036dc <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE>:
1000036dc: ff c3 00 d1 	sub	sp, sp, #48
1000036e0: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
1000036e4: fd 83 00 91 	add	x29, sp, #32
1000036e8: a0 83 1f f8 	stur	x0, [x29, #-8]
1000036ec: e1 0b 00 f9 	str	x1, [sp, #16]
1000036f0: a0 83 5f f8 	ldur	x0, [x29, #-8]
1000036f4: e0 07 00 f9 	str	x0, [sp, #8]
1000036f8: e1 0b 40 f9 	ldr	x1, [sp, #16]
1000036fc: 26 01 00 94 	bl	0x100003b94 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE>
100003700: e0 07 40 f9 	ldr	x0, [sp, #8]
100003704: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003708: ff c3 00 91 	add	sp, sp, #48
10000370c: c0 03 5f d6 	ret

0000000100003710 <__ZNKSt3__18ios_base5flagsEv>:
100003710: ff 43 00 d1 	sub	sp, sp, #16
100003714: e0 07 00 f9 	str	x0, [sp, #8]
100003718: e8 07 40 f9 	ldr	x8, [sp, #8]
10000371c: 00 09 40 b9 	ldr	w0, [x8, #8]
100003720: ff 43 00 91 	add	sp, sp, #16
100003724: c0 03 5f d6 	ret

0000000100003728 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv>:
100003728: ff 83 00 d1 	sub	sp, sp, #32
10000372c: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003730: fd 43 00 91 	add	x29, sp, #16
100003734: e0 07 00 f9 	str	x0, [sp, #8]
100003738: e8 07 40 f9 	ldr	x8, [sp, #8]
10000373c: e8 03 00 f9 	str	x8, [sp]
100003740: 98 01 00 94 	bl	0x100003da0 <_strlen+0x100003da0>
100003744: e8 03 40 f9 	ldr	x8, [sp]
100003748: 01 91 40 b9 	ldr	w1, [x8, #144]
10000374c: 92 01 00 94 	bl	0x100003d94 <_strlen+0x100003d94>
100003750: 20 01 00 36 	tbz	w0, #0, 0x100003774 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv+0x4c>
100003754: 01 00 00 14 	b	0x100003758 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv+0x30>
100003758: e0 03 40 f9 	ldr	x0, [sp]
10000375c: 01 04 80 52 	mov	w1, #32
100003760: 3d 01 00 94 	bl	0x100003c54 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc>
100003764: e9 03 40 f9 	ldr	x9, [sp]
100003768: 08 1c 00 13 	sxtb	w8, w0
10000376c: 28 91 00 b9 	str	w8, [x9, #144]
100003770: 01 00 00 14 	b	0x100003774 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv+0x4c>
100003774: e8 03 40 f9 	ldr	x8, [sp]
100003778: 08 91 40 b9 	ldr	w8, [x8, #144]
10000377c: 00 1d 00 13 	sxtb	w0, w8
100003780: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003784: ff 83 00 91 	add	sp, sp, #32
100003788: c0 03 5f d6 	ret

000000010000378c <__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv>:
10000378c: ff 43 00 d1 	sub	sp, sp, #16
100003790: e0 07 00 f9 	str	x0, [sp, #8]
100003794: e8 07 40 f9 	ldr	x8, [sp, #8]
100003798: 08 01 40 f9 	ldr	x8, [x8]
10000379c: 08 01 00 f1 	subs	x8, x8, #0
1000037a0: e8 17 9f 1a 	cset	w8, eq
1000037a4: 00 01 00 12 	and	w0, w8, #0x1
1000037a8: ff 43 00 91 	add	sp, sp, #16
1000037ac: c0 03 5f d6 	ret

00000001000037b0 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj>:
1000037b0: ff 83 00 d1 	sub	sp, sp, #32
1000037b4: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
1000037b8: fd 43 00 91 	add	x29, sp, #16
1000037bc: e0 07 00 f9 	str	x0, [sp, #8]
1000037c0: e1 07 00 b9 	str	w1, [sp, #4]
1000037c4: e0 07 40 f9 	ldr	x0, [sp, #8]
1000037c8: e1 07 40 b9 	ldr	w1, [sp, #4]
1000037cc: 5c 01 00 94 	bl	0x100003d3c <__ZNSt3__18ios_base8setstateEj>
1000037d0: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
1000037d4: ff 83 00 91 	add	sp, sp, #32
1000037d8: c0 03 5f d6 	ret

00000001000037dc <___clang_call_terminate>:
1000037dc: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
1000037e0: 97 01 00 94 	bl	0x100003e3c <_strlen+0x100003e3c>
1000037e4: 93 01 00 94 	bl	0x100003e30 <_strlen+0x100003e30>

00000001000037e8 <__ZNKSt3__18ios_base5widthEv>:
1000037e8: ff 43 00 d1 	sub	sp, sp, #16
1000037ec: e0 07 00 f9 	str	x0, [sp, #8]
1000037f0: e8 07 40 f9 	ldr	x8, [sp, #8]
1000037f4: 00 0d 40 f9 	ldr	x0, [x8, #24]
1000037f8: ff 43 00 91 	add	sp, sp, #16
1000037fc: c0 03 5f d6 	ret

0000000100003800 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>:
100003800: ff c3 00 d1 	sub	sp, sp, #48
100003804: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003808: fd 83 00 91 	add	x29, sp, #32
10000380c: a0 83 1f f8 	stur	x0, [x29, #-8]
100003810: e1 0b 00 f9 	str	x1, [sp, #16]
100003814: e2 07 00 f9 	str	x2, [sp, #8]
100003818: a0 83 5f f8 	ldur	x0, [x29, #-8]
10000381c: e1 0b 40 f9 	ldr	x1, [sp, #16]
100003820: e2 07 40 f9 	ldr	x2, [sp, #8]
100003824: 08 00 40 f9 	ldr	x8, [x0]
100003828: 08 31 40 f9 	ldr	x8, [x8, #96]
10000382c: 00 01 3f d6 	blr	x8
100003830: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003834: ff c3 00 91 	add	sp, sp, #48
100003838: c0 03 5f d6 	ret

000000010000383c <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc>:
10000383c: ff c3 00 d1 	sub	sp, sp, #48
100003840: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003844: fd 83 00 91 	add	x29, sp, #32
100003848: a0 83 1f f8 	stur	x0, [x29, #-8]
10000384c: e1 0b 00 f9 	str	x1, [sp, #16]
100003850: e2 3f 00 39 	strb	w2, [sp, #15]
100003854: a0 83 5f f8 	ldur	x0, [x29, #-8]
100003858: e0 03 00 f9 	str	x0, [sp]
10000385c: e1 0b 40 f9 	ldr	x1, [sp, #16]
100003860: e2 3f c0 39 	ldrsb	w2, [sp, #15]
100003864: 1a 00 00 94 	bl	0x1000038cc <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc>
100003868: e0 03 40 f9 	ldr	x0, [sp]
10000386c: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003870: ff c3 00 91 	add	sp, sp, #48
100003874: c0 03 5f d6 	ret

0000000100003878 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv>:
100003878: ff 83 00 d1 	sub	sp, sp, #32
10000387c: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003880: fd 43 00 91 	add	x29, sp, #16
100003884: e0 07 00 f9 	str	x0, [sp, #8]
100003888: e0 07 40 f9 	ldr	x0, [sp, #8]
10000388c: 70 00 00 94 	bl	0x100003a4c <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv>
100003890: 6a 00 00 94 	bl	0x100003a38 <__ZNSt3__1L12__to_addressIKcEEPT_S3_>
100003894: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003898: ff 83 00 91 	add	sp, sp, #32
10000389c: c0 03 5f d6 	ret

00000001000038a0 <__ZNSt3__18ios_base5widthEl>:
1000038a0: ff 83 00 d1 	sub	sp, sp, #32
1000038a4: e0 0f 00 f9 	str	x0, [sp, #24]
1000038a8: e1 0b 00 f9 	str	x1, [sp, #16]
1000038ac: e9 0f 40 f9 	ldr	x9, [sp, #24]
1000038b0: 28 0d 40 f9 	ldr	x8, [x9, #24]
1000038b4: e8 07 00 f9 	str	x8, [sp, #8]
1000038b8: e8 0b 40 f9 	ldr	x8, [sp, #16]
1000038bc: 28 0d 00 f9 	str	x8, [x9, #24]
1000038c0: e0 07 40 f9 	ldr	x0, [sp, #8]
1000038c4: ff 83 00 91 	add	sp, sp, #32
1000038c8: c0 03 5f d6 	ret

00000001000038cc <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc>:
1000038cc: ff c3 00 d1 	sub	sp, sp, #48
1000038d0: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
1000038d4: fd 83 00 91 	add	x29, sp, #32
1000038d8: a0 83 1f f8 	stur	x0, [x29, #-8]
1000038dc: e1 0b 00 f9 	str	x1, [sp, #16]
1000038e0: e2 3f 00 39 	strb	w2, [sp, #15]
1000038e4: a0 83 5f f8 	ldur	x0, [x29, #-8]
1000038e8: e0 03 00 f9 	str	x0, [sp]
1000038ec: e1 3b 00 91 	add	x1, sp, #14
1000038f0: e2 37 00 91 	add	x2, sp, #13
1000038f4: 09 00 00 94 	bl	0x100003918 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_>
1000038f8: e0 03 40 f9 	ldr	x0, [sp]
1000038fc: e1 0b 40 f9 	ldr	x1, [sp, #16]
100003900: e2 3f c0 39 	ldrsb	w2, [sp, #15]
100003904: 2d 01 00 94 	bl	0x100003db8 <_strlen+0x100003db8>
100003908: e0 03 40 f9 	ldr	x0, [sp]
10000390c: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003910: ff c3 00 91 	add	sp, sp, #48
100003914: c0 03 5f d6 	ret

0000000100003918 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_>:
100003918: ff c3 00 d1 	sub	sp, sp, #48
10000391c: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003920: fd 83 00 91 	add	x29, sp, #32
100003924: a0 83 1f f8 	stur	x0, [x29, #-8]
100003928: e1 0b 00 f9 	str	x1, [sp, #16]
10000392c: e2 07 00 f9 	str	x2, [sp, #8]
100003930: a0 83 5f f8 	ldur	x0, [x29, #-8]
100003934: e0 03 00 f9 	str	x0, [sp]
100003938: e1 0b 40 f9 	ldr	x1, [sp, #16]
10000393c: e2 07 40 f9 	ldr	x2, [sp, #8]
100003940: 05 00 00 94 	bl	0x100003954 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_>
100003944: e0 03 40 f9 	ldr	x0, [sp]
100003948: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
10000394c: ff c3 00 91 	add	sp, sp, #48
100003950: c0 03 5f d6 	ret

0000000100003954 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_>:
100003954: ff 03 01 d1 	sub	sp, sp, #64
100003958: fd 7b 03 a9 	stp	x29, x30, [sp, #48]
10000395c: fd c3 00 91 	add	x29, sp, #48
100003960: a0 83 1f f8 	stur	x0, [x29, #-8]
100003964: a1 03 1f f8 	stur	x1, [x29, #-16]
100003968: e2 0f 00 f9 	str	x2, [sp, #24]
10000396c: a8 83 5f f8 	ldur	x8, [x29, #-8]
100003970: e8 07 00 f9 	str	x8, [sp, #8]
100003974: a0 03 5f f8 	ldur	x0, [x29, #-16]
100003978: 0b 00 00 94 	bl	0x1000039a4 <__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE>
10000397c: e0 07 40 f9 	ldr	x0, [sp, #8]
100003980: 0e 00 00 94 	bl	0x1000039b8 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE>
100003984: e0 0f 40 f9 	ldr	x0, [sp, #24]
100003988: 07 00 00 94 	bl	0x1000039a4 <__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE>
10000398c: e0 07 40 f9 	ldr	x0, [sp, #8]
100003990: 0f 00 00 94 	bl	0x1000039cc <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE>
100003994: e0 07 40 f9 	ldr	x0, [sp, #8]
100003998: fd 7b 43 a9 	ldp	x29, x30, [sp, #48]
10000399c: ff 03 01 91 	add	sp, sp, #64
1000039a0: c0 03 5f d6 	ret

00000001000039a4 <__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE>:
1000039a4: ff 43 00 d1 	sub	sp, sp, #16
1000039a8: e0 07 00 f9 	str	x0, [sp, #8]
1000039ac: e0 07 40 f9 	ldr	x0, [sp, #8]
1000039b0: ff 43 00 91 	add	sp, sp, #16
1000039b4: c0 03 5f d6 	ret

00000001000039b8 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE>:
1000039b8: ff 43 00 d1 	sub	sp, sp, #16
1000039bc: e0 03 00 f9 	str	x0, [sp]
1000039c0: e0 03 40 f9 	ldr	x0, [sp]
1000039c4: ff 43 00 91 	add	sp, sp, #16
1000039c8: c0 03 5f d6 	ret

00000001000039cc <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE>:
1000039cc: ff c3 00 d1 	sub	sp, sp, #48
1000039d0: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
1000039d4: fd 83 00 91 	add	x29, sp, #32
1000039d8: e0 0b 00 f9 	str	x0, [sp, #16]
1000039dc: e0 0b 40 f9 	ldr	x0, [sp, #16]
1000039e0: e0 07 00 f9 	str	x0, [sp, #8]
1000039e4: 05 00 00 94 	bl	0x1000039f8 <__ZNSt3__19allocatorIcEC2Ev>
1000039e8: e0 07 40 f9 	ldr	x0, [sp, #8]
1000039ec: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
1000039f0: ff c3 00 91 	add	sp, sp, #48
1000039f4: c0 03 5f d6 	ret

00000001000039f8 <__ZNSt3__19allocatorIcEC2Ev>:
1000039f8: ff 83 00 d1 	sub	sp, sp, #32
1000039fc: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003a00: fd 43 00 91 	add	x29, sp, #16
100003a04: e0 07 00 f9 	str	x0, [sp, #8]
100003a08: e0 07 40 f9 	ldr	x0, [sp, #8]
100003a0c: e0 03 00 f9 	str	x0, [sp]
100003a10: 05 00 00 94 	bl	0x100003a24 <__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev>
100003a14: e0 03 40 f9 	ldr	x0, [sp]
100003a18: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003a1c: ff 83 00 91 	add	sp, sp, #32
100003a20: c0 03 5f d6 	ret

0000000100003a24 <__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev>:
100003a24: ff 43 00 d1 	sub	sp, sp, #16
100003a28: e0 07 00 f9 	str	x0, [sp, #8]
100003a2c: e0 07 40 f9 	ldr	x0, [sp, #8]
100003a30: ff 43 00 91 	add	sp, sp, #16
100003a34: c0 03 5f d6 	ret

0000000100003a38 <__ZNSt3__1L12__to_addressIKcEEPT_S3_>:
100003a38: ff 43 00 d1 	sub	sp, sp, #16
100003a3c: e0 07 00 f9 	str	x0, [sp, #8]
100003a40: e0 07 40 f9 	ldr	x0, [sp, #8]
100003a44: ff 43 00 91 	add	sp, sp, #16
100003a48: c0 03 5f d6 	ret

0000000100003a4c <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv>:
100003a4c: ff c3 00 d1 	sub	sp, sp, #48
100003a50: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003a54: fd 83 00 91 	add	x29, sp, #32
100003a58: a0 83 1f f8 	stur	x0, [x29, #-8]
100003a5c: a0 83 5f f8 	ldur	x0, [x29, #-8]
100003a60: e0 0b 00 f9 	str	x0, [sp, #16]
100003a64: 0f 00 00 94 	bl	0x100003aa0 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv>
100003a68: c0 00 00 36 	tbz	w0, #0, 0x100003a80 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x34>
100003a6c: 01 00 00 14 	b	0x100003a70 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x24>
100003a70: e0 0b 40 f9 	ldr	x0, [sp, #16]
100003a74: 18 00 00 94 	bl	0x100003ad4 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv>
100003a78: e0 07 00 f9 	str	x0, [sp, #8]
100003a7c: 05 00 00 14 	b	0x100003a90 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x44>
100003a80: e0 0b 40 f9 	ldr	x0, [sp, #16]
100003a84: 1e 00 00 94 	bl	0x100003afc <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv>
100003a88: e0 07 00 f9 	str	x0, [sp, #8]
100003a8c: 01 00 00 14 	b	0x100003a90 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x44>
100003a90: e0 07 40 f9 	ldr	x0, [sp, #8]
100003a94: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003a98: ff c3 00 91 	add	sp, sp, #48
100003a9c: c0 03 5f d6 	ret

0000000100003aa0 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv>:
100003aa0: ff 83 00 d1 	sub	sp, sp, #32
100003aa4: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003aa8: fd 43 00 91 	add	x29, sp, #16
100003aac: e0 07 00 f9 	str	x0, [sp, #8]
100003ab0: e0 07 40 f9 	ldr	x0, [sp, #8]
100003ab4: 1c 00 00 94 	bl	0x100003b24 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
100003ab8: 08 5c 40 39 	ldrb	w8, [x0, #23]
100003abc: 08 01 79 f2 	ands	x8, x8, #0x80
100003ac0: e8 07 9f 1a 	cset	w8, ne
100003ac4: 00 01 00 12 	and	w0, w8, #0x1
100003ac8: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003acc: ff 83 00 91 	add	sp, sp, #32
100003ad0: c0 03 5f d6 	ret

0000000100003ad4 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv>:
100003ad4: ff 83 00 d1 	sub	sp, sp, #32
100003ad8: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003adc: fd 43 00 91 	add	x29, sp, #16
100003ae0: e0 07 00 f9 	str	x0, [sp, #8]
100003ae4: e0 07 40 f9 	ldr	x0, [sp, #8]
100003ae8: 0f 00 00 94 	bl	0x100003b24 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
100003aec: 00 00 40 f9 	ldr	x0, [x0]
100003af0: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003af4: ff 83 00 91 	add	sp, sp, #32
100003af8: c0 03 5f d6 	ret

0000000100003afc <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv>:
100003afc: ff 83 00 d1 	sub	sp, sp, #32
100003b00: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003b04: fd 43 00 91 	add	x29, sp, #16
100003b08: e0 07 00 f9 	str	x0, [sp, #8]
100003b0c: e0 07 40 f9 	ldr	x0, [sp, #8]
100003b10: 05 00 00 94 	bl	0x100003b24 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
100003b14: 12 00 00 94 	bl	0x100003b5c <__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_>
100003b18: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003b1c: ff 83 00 91 	add	sp, sp, #32
100003b20: c0 03 5f d6 	ret

0000000100003b24 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>:
100003b24: ff 83 00 d1 	sub	sp, sp, #32
100003b28: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003b2c: fd 43 00 91 	add	x29, sp, #16
100003b30: e0 07 00 f9 	str	x0, [sp, #8]
100003b34: e0 07 40 f9 	ldr	x0, [sp, #8]
100003b38: 04 00 00 94 	bl	0x100003b48 <__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv>
100003b3c: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003b40: ff 83 00 91 	add	sp, sp, #32
100003b44: c0 03 5f d6 	ret

0000000100003b48 <__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv>:
100003b48: ff 43 00 d1 	sub	sp, sp, #16
100003b4c: e0 07 00 f9 	str	x0, [sp, #8]
100003b50: e0 07 40 f9 	ldr	x0, [sp, #8]
100003b54: ff 43 00 91 	add	sp, sp, #16
100003b58: c0 03 5f d6 	ret

0000000100003b5c <__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_>:
100003b5c: ff 83 00 d1 	sub	sp, sp, #32
100003b60: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003b64: fd 43 00 91 	add	x29, sp, #16
100003b68: e0 07 00 f9 	str	x0, [sp, #8]
100003b6c: e0 07 40 f9 	ldr	x0, [sp, #8]
100003b70: 04 00 00 94 	bl	0x100003b80 <__ZNSt3__1L9addressofIKcEEPT_RS2_>
100003b74: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003b78: ff 83 00 91 	add	sp, sp, #32
100003b7c: c0 03 5f d6 	ret

0000000100003b80 <__ZNSt3__1L9addressofIKcEEPT_RS2_>:
100003b80: ff 43 00 d1 	sub	sp, sp, #16
100003b84: e0 07 00 f9 	str	x0, [sp, #8]
100003b88: e0 07 40 f9 	ldr	x0, [sp, #8]
100003b8c: ff 43 00 91 	add	sp, sp, #16
100003b90: c0 03 5f d6 	ret

0000000100003b94 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE>:
100003b94: ff c3 00 d1 	sub	sp, sp, #48
100003b98: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003b9c: fd 83 00 91 	add	x29, sp, #32
100003ba0: a0 83 1f f8 	stur	x0, [x29, #-8]
100003ba4: e1 0b 00 f9 	str	x1, [sp, #16]
100003ba8: a8 83 5f f8 	ldur	x8, [x29, #-8]
100003bac: e8 03 00 f9 	str	x8, [sp]
100003bb0: e8 0b 40 f9 	ldr	x8, [sp, #16]
100003bb4: 09 01 40 f9 	ldr	x9, [x8]
100003bb8: 29 81 5e f8 	ldur	x9, [x9, #-24]
100003bbc: 00 01 09 8b 	add	x0, x8, x9
100003bc0: 0a 00 00 94 	bl	0x100003be8 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv>
100003bc4: e0 07 00 f9 	str	x0, [sp, #8]
100003bc8: 01 00 00 14 	b	0x100003bcc <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE+0x38>
100003bcc: e0 03 40 f9 	ldr	x0, [sp]
100003bd0: e8 07 40 f9 	ldr	x8, [sp, #8]
100003bd4: 08 00 00 f9 	str	x8, [x0]
100003bd8: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003bdc: ff c3 00 91 	add	sp, sp, #48
100003be0: c0 03 5f d6 	ret
100003be4: fe fe ff 97 	bl	0x1000037dc <___clang_call_terminate>

0000000100003be8 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv>:
100003be8: ff 83 00 d1 	sub	sp, sp, #32
100003bec: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003bf0: fd 43 00 91 	add	x29, sp, #16
100003bf4: e0 07 00 f9 	str	x0, [sp, #8]
100003bf8: e0 07 40 f9 	ldr	x0, [sp, #8]
100003bfc: 04 00 00 94 	bl	0x100003c0c <__ZNKSt3__18ios_base5rdbufEv>
100003c00: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003c04: ff 83 00 91 	add	sp, sp, #32
100003c08: c0 03 5f d6 	ret

0000000100003c0c <__ZNKSt3__18ios_base5rdbufEv>:
100003c0c: ff 43 00 d1 	sub	sp, sp, #16
100003c10: e0 07 00 f9 	str	x0, [sp, #8]
100003c14: e8 07 40 f9 	ldr	x8, [sp, #8]
100003c18: 00 15 40 f9 	ldr	x0, [x8, #40]
100003c1c: ff 43 00 91 	add	sp, sp, #16
100003c20: c0 03 5f d6 	ret

0000000100003c24 <__ZNSt3__111char_traitsIcE11eq_int_typeEii>:
100003c24: ff 43 00 d1 	sub	sp, sp, #16
100003c28: e0 0f 00 b9 	str	w0, [sp, #12]
100003c2c: e1 0b 00 b9 	str	w1, [sp, #8]
100003c30: e8 0f 40 b9 	ldr	w8, [sp, #12]
100003c34: e9 0b 40 b9 	ldr	w9, [sp, #8]
100003c38: 08 01 09 6b 	subs	w8, w8, w9
100003c3c: e8 17 9f 1a 	cset	w8, eq
100003c40: 00 01 00 12 	and	w0, w8, #0x1
100003c44: ff 43 00 91 	add	sp, sp, #16
100003c48: c0 03 5f d6 	ret

0000000100003c4c <__ZNSt3__111char_traitsIcE3eofEv>:
100003c4c: 00 00 80 12 	mov	w0, #-1
100003c50: c0 03 5f d6 	ret

0000000100003c54 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc>:
100003c54: ff 43 01 d1 	sub	sp, sp, #80
100003c58: fd 7b 04 a9 	stp	x29, x30, [sp, #64]
100003c5c: fd 03 01 91 	add	x29, sp, #64
100003c60: a0 83 1f f8 	stur	x0, [x29, #-8]
100003c64: a1 73 1f 38 	sturb	w1, [x29, #-9]
100003c68: a0 83 5f f8 	ldur	x0, [x29, #-8]
100003c6c: a8 63 00 d1 	sub	x8, x29, #24
100003c70: e8 07 00 f9 	str	x8, [sp, #8]
100003c74: 45 00 00 94 	bl	0x100003d88 <_strlen+0x100003d88>
100003c78: e0 07 40 f9 	ldr	x0, [sp, #8]
100003c7c: 17 00 00 94 	bl	0x100003cd8 <__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE>
100003c80: e0 0b 00 f9 	str	x0, [sp, #16]
100003c84: 01 00 00 14 	b	0x100003c88 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc+0x34>
100003c88: e0 0b 40 f9 	ldr	x0, [sp, #16]
100003c8c: a1 73 df 38 	ldursb	w1, [x29, #-9]
100003c90: 1d 00 00 94 	bl	0x100003d04 <__ZNKSt3__15ctypeIcE5widenEc>
100003c94: e0 07 00 b9 	str	w0, [sp, #4]
100003c98: 01 00 00 14 	b	0x100003c9c <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc+0x48>
100003c9c: a0 63 00 d1 	sub	x0, x29, #24
100003ca0: 58 00 00 94 	bl	0x100003e00 <_strlen+0x100003e00>
100003ca4: e8 07 40 b9 	ldr	w8, [sp, #4]
100003ca8: 00 1d 00 13 	sxtb	w0, w8
100003cac: fd 7b 44 a9 	ldp	x29, x30, [sp, #64]
100003cb0: ff 43 01 91 	add	sp, sp, #80
100003cb4: c0 03 5f d6 	ret
100003cb8: e8 03 01 aa 	mov	x8, x1
100003cbc: e0 13 00 f9 	str	x0, [sp, #32]
100003cc0: e8 1f 00 b9 	str	w8, [sp, #28]
100003cc4: a0 63 00 d1 	sub	x0, x29, #24
100003cc8: 4e 00 00 94 	bl	0x100003e00 <_strlen+0x100003e00>
100003ccc: 01 00 00 14 	b	0x100003cd0 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc+0x7c>
100003cd0: e0 13 40 f9 	ldr	x0, [sp, #32]
100003cd4: 27 00 00 94 	bl	0x100003d70 <_strlen+0x100003d70>

0000000100003cd8 <__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE>:
100003cd8: ff 83 00 d1 	sub	sp, sp, #32
100003cdc: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003ce0: fd 43 00 91 	add	x29, sp, #16
100003ce4: e0 07 00 f9 	str	x0, [sp, #8]
100003ce8: e0 07 40 f9 	ldr	x0, [sp, #8]
100003cec: 01 00 00 b0 	adrp	x1, 0x100004000 <__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE+0x18>
100003cf0: 21 34 40 f9 	ldr	x1, [x1, #104]
100003cf4: 22 00 00 94 	bl	0x100003d7c <_strlen+0x100003d7c>
100003cf8: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003cfc: ff 83 00 91 	add	sp, sp, #32
100003d00: c0 03 5f d6 	ret

0000000100003d04 <__ZNKSt3__15ctypeIcE5widenEc>:
100003d04: ff 83 00 d1 	sub	sp, sp, #32
100003d08: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003d0c: fd 43 00 91 	add	x29, sp, #16
100003d10: e0 07 00 f9 	str	x0, [sp, #8]
100003d14: e1 1f 00 39 	strb	w1, [sp, #7]
100003d18: e0 07 40 f9 	ldr	x0, [sp, #8]
100003d1c: e1 1f c0 39 	ldrsb	w1, [sp, #7]
100003d20: 08 00 40 f9 	ldr	x8, [x0]
100003d24: 08 1d 40 f9 	ldr	x8, [x8, #56]
100003d28: 00 01 3f d6 	blr	x8
100003d2c: 00 1c 00 13 	sxtb	w0, w0
100003d30: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003d34: ff 83 00 91 	add	sp, sp, #32
100003d38: c0 03 5f d6 	ret

0000000100003d3c <__ZNSt3__18ios_base8setstateEj>:
100003d3c: ff 83 00 d1 	sub	sp, sp, #32
100003d40: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003d44: fd 43 00 91 	add	x29, sp, #16
100003d48: e0 07 00 f9 	str	x0, [sp, #8]
100003d4c: e1 07 00 b9 	str	w1, [sp, #4]
100003d50: e0 07 40 f9 	ldr	x0, [sp, #8]
100003d54: 08 20 40 b9 	ldr	w8, [x0, #32]
100003d58: e9 07 40 b9 	ldr	w9, [sp, #4]
100003d5c: 01 01 09 2a 	orr	w1, w8, w9
100003d60: 2e 00 00 94 	bl	0x100003e18 <_strlen+0x100003e18>
100003d64: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003d68: ff 83 00 91 	add	sp, sp, #32
100003d6c: c0 03 5f d6 	ret

Disassembly of section __TEXT,__stubs:

0000000100003d70 <__stubs>:
100003d70: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x4>
100003d74: 10 02 40 f9 	ldr	x16, [x16]
100003d78: 00 02 1f d6 	br	x16
100003d7c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x10>
100003d80: 10 06 40 f9 	ldr	x16, [x16, #8]
100003d84: 00 02 1f d6 	br	x16
100003d88: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x1c>
100003d8c: 10 0a 40 f9 	ldr	x16, [x16, #16]
100003d90: 00 02 1f d6 	br	x16
100003d94: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x28>
100003d98: 10 0e 40 f9 	ldr	x16, [x16, #24]
100003d9c: 00 02 1f d6 	br	x16
100003da0: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x34>
100003da4: 10 12 40 f9 	ldr	x16, [x16, #32]
100003da8: 00 02 1f d6 	br	x16
100003dac: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x40>
100003db0: 10 16 40 f9 	ldr	x16, [x16, #40]
100003db4: 00 02 1f d6 	br	x16
100003db8: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x4c>
100003dbc: 10 1a 40 f9 	ldr	x16, [x16, #48]
100003dc0: 00 02 1f d6 	br	x16
100003dc4: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x58>
100003dc8: 10 1e 40 f9 	ldr	x16, [x16, #56]
100003dcc: 00 02 1f d6 	br	x16
100003dd0: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x64>
100003dd4: 10 22 40 f9 	ldr	x16, [x16, #64]
100003dd8: 00 02 1f d6 	br	x16
100003ddc: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x70>
100003de0: 10 26 40 f9 	ldr	x16, [x16, #72]
100003de4: 00 02 1f d6 	br	x16
100003de8: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x7c>
100003dec: 10 2a 40 f9 	ldr	x16, [x16, #80]
100003df0: 00 02 1f d6 	br	x16
100003df4: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x88>
100003df8: 10 2e 40 f9 	ldr	x16, [x16, #88]
100003dfc: 00 02 1f d6 	br	x16
100003e00: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x94>
100003e04: 10 3a 40 f9 	ldr	x16, [x16, #112]
100003e08: 00 02 1f d6 	br	x16
100003e0c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xa0>
100003e10: 10 3e 40 f9 	ldr	x16, [x16, #120]
100003e14: 00 02 1f d6 	br	x16
100003e18: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xac>
100003e1c: 10 42 40 f9 	ldr	x16, [x16, #128]
100003e20: 00 02 1f d6 	br	x16
100003e24: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xb8>
100003e28: 10 46 40 f9 	ldr	x16, [x16, #136]
100003e2c: 00 02 1f d6 	br	x16
100003e30: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xc4>
100003e34: 10 4a 40 f9 	ldr	x16, [x16, #144]
100003e38: 00 02 1f d6 	br	x16
100003e3c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xd0>
100003e40: 10 52 40 f9 	ldr	x16, [x16, #160]
100003e44: 00 02 1f d6 	br	x16
100003e48: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xdc>
100003e4c: 10 56 40 f9 	ldr	x16, [x16, #168]
100003e50: 00 02 1f d6 	br	x16
100003e54: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xe8>
100003e58: 10 5e 40 f9 	ldr	x16, [x16, #184]
100003e5c: 00 02 1f d6 	br	x16
100003e60: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xf4>
100003e64: 10 66 40 f9 	ldr	x16, [x16, #200]
100003e68: 00 02 1f d6 	br	x16
100003e6c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x100>
100003e70: 10 6a 40 f9 	ldr	x16, [x16, #208]
100003e74: 00 02 1f d6 	br	x16
100003e78: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x10c>
100003e7c: 10 6e 40 f9 	ldr	x16, [x16, #216]
100003e80: 00 02 1f d6 	br	x16
