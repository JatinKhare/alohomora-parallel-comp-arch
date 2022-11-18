
cas_clang.o:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000100002e70 <__Z16increase_counterv>:
100002e70: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
100002e74: fd 03 00 91 	mov	x29, sp
100002e78: 20 00 00 d0 	adrp	x0, 0x100008000 <__ZNSt3__113__atomic_baseIiLb1EEppEi>
100002e7c: 00 00 00 91 	add	x0, x0, #0
100002e80: 01 00 80 52 	mov	w1, #0
100002e84: 03 00 00 94 	bl	0x100002e90 <__ZNSt3__113__atomic_baseIiLb1EEppEi>
100002e88: fd 7b c1 a8 	ldp	x29, x30, [sp], #16
100002e8c: c0 03 5f d6 	ret

0000000100002e90 <__ZNSt3__113__atomic_baseIiLb1EEppEi>:
100002e90: ff 83 00 d1 	sub	sp, sp, #32
100002e94: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100002e98: fd 43 00 91 	add	x29, sp, #16
100002e9c: e0 07 00 f9 	str	x0, [sp, #8]
100002ea0: e1 07 00 b9 	str	w1, [sp, #4]
100002ea4: e0 07 40 f9 	ldr	x0, [sp, #8]
100002ea8: 21 00 80 52 	mov	w1, #1
100002eac: a2 00 80 52 	mov	w2, #5
100002eb0: 92 00 00 94 	bl	0x1000030f8 <__ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE>
100002eb4: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100002eb8: ff 83 00 91 	add	sp, sp, #32
100002ebc: c0 03 5f d6 	ret

0000000100002ec0 <__Z12lock_examplePv>:
100002ec0: ff 83 00 d1 	sub	sp, sp, #32
100002ec4: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100002ec8: fd 43 00 91 	add	x29, sp, #16
100002ecc: e0 07 00 f9 	str	x0, [sp, #8]
100002ed0: ff 07 00 b9 	str	wzr, [sp, #4]
100002ed4: 01 00 00 14 	b	0x100002ed8 <__Z12lock_examplePv+0x18>
100002ed8: e8 07 40 b9 	ldr	w8, [sp, #4]
100002edc: 08 01 20 71 	subs	w8, w8, #2048
100002ee0: 0a 01 00 54 	b.ge	0x100002f00 <__Z12lock_examplePv+0x40>
100002ee4: 01 00 00 14 	b	0x100002ee8 <__Z12lock_examplePv+0x28>
100002ee8: e2 ff ff 97 	bl	0x100002e70 <__Z16increase_counterv>
100002eec: 01 00 00 14 	b	0x100002ef0 <__Z12lock_examplePv+0x30>
100002ef0: e8 07 40 b9 	ldr	w8, [sp, #4]
100002ef4: 08 05 00 11 	add	w8, w8, #1
100002ef8: e8 07 00 b9 	str	w8, [sp, #4]
100002efc: f7 ff ff 17 	b	0x100002ed8 <__Z12lock_examplePv+0x18>
100002f00: 00 00 80 d2 	mov	x0, #0
100002f04: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100002f08: ff 83 00 91 	add	sp, sp, #32
100002f0c: c0 03 5f d6 	ret

0000000100002f10 <_main>:
100002f10: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
100002f14: fd 03 00 91 	mov	x29, sp
100002f18: ff 43 01 d1 	sub	sp, sp, #80
100002f1c: 08 00 00 d0 	adrp	x8, 0x100004000 <_main+0x14>
100002f20: 08 61 40 f9 	ldr	x8, [x8, #192]
100002f24: 08 01 40 f9 	ldr	x8, [x8]
100002f28: a8 83 1f f8 	stur	x8, [x29, #-8]
100002f2c: bf 43 1f b8 	stur	wzr, [x29, #-12]
100002f30: 08 80 80 52 	mov	w8, #1024
100002f34: a8 03 1f b8 	stur	w8, [x29, #-16]
100002f38: a8 03 5f b8 	ldur	w8, [x29, #-16]
100002f3c: e9 03 00 91 	mov	x9, sp
100002f40: a9 83 1e f8 	stur	x9, [x29, #-24]
100002f44: 09 f1 7d d3 	lsl	x9, x8, #3
100002f48: 29 3d 00 91 	add	x9, x9, #15
100002f4c: 29 ed 7c 92 	and	x9, x9, #0xfffffffffffffff0
100002f50: a9 83 1c f8 	stur	x9, [x29, #-56]
100002f54: 10 00 00 d0 	adrp	x16, 0x100004000 <_main+0x4c>
100002f58: 10 4e 40 f9 	ldr	x16, [x16, #152]
100002f5c: 00 02 3f d6 	blr	x16
100002f60: aa 83 5c f8 	ldur	x10, [x29, #-56]
100002f64: e9 03 00 91 	mov	x9, sp
100002f68: 29 01 0a eb 	subs	x9, x9, x10
100002f6c: 3f 01 00 91 	mov	sp, x9
100002f70: a9 03 1d f8 	stur	x9, [x29, #-48]
100002f74: a8 03 1e f8 	stur	x8, [x29, #-32]
100002f78: bf c3 1d b8 	stur	wzr, [x29, #-36]
100002f7c: 01 00 00 14 	b	0x100002f80 <_main+0x70>
100002f80: a8 c3 5d b8 	ldur	w8, [x29, #-36]
100002f84: a9 03 5f b8 	ldur	w9, [x29, #-16]
100002f88: 08 01 09 6b 	subs	w8, w8, w9
100002f8c: ea 01 00 54 	b.ge	0x100002fc8 <_main+0xb8>
100002f90: 01 00 00 14 	b	0x100002f94 <_main+0x84>
100002f94: a8 03 5d f8 	ldur	x8, [x29, #-48]
100002f98: a9 c3 9d b8 	ldursw	x9, [x29, #-36]
100002f9c: 00 0d 09 8b 	add	x0, x8, x9, lsl #3
100002fa0: 03 00 80 d2 	mov	x3, #0
100002fa4: e1 03 03 aa 	mov	x1, x3
100002fa8: 02 00 00 90 	adrp	x2, 0x100002000 <_main+0x98>
100002fac: 42 00 3b 91 	add	x2, x2, #3776
100002fb0: ad 03 00 94 	bl	0x100003e64 <_strlen+0x100003e64>
100002fb4: 01 00 00 14 	b	0x100002fb8 <_main+0xa8>
100002fb8: a8 c3 5d b8 	ldur	w8, [x29, #-36]
100002fbc: 08 05 00 11 	add	w8, w8, #1
100002fc0: a8 c3 1d b8 	stur	w8, [x29, #-36]
100002fc4: ef ff ff 17 	b	0x100002f80 <_main+0x70>
100002fc8: bf 83 1d b8 	stur	wzr, [x29, #-40]
100002fcc: 01 00 00 14 	b	0x100002fd0 <_main+0xc0>
100002fd0: a8 83 5d b8 	ldur	w8, [x29, #-40]
100002fd4: a9 03 5f b8 	ldur	w9, [x29, #-16]
100002fd8: 08 01 09 6b 	subs	w8, w8, w9
100002fdc: 8a 01 00 54 	b.ge	0x10000300c <_main+0xfc>
100002fe0: 01 00 00 14 	b	0x100002fe4 <_main+0xd4>
100002fe4: a8 03 5d f8 	ldur	x8, [x29, #-48]
100002fe8: a9 83 9d b8 	ldursw	x9, [x29, #-40]
100002fec: 00 79 69 f8 	ldr	x0, [x8, x9, lsl #3]
100002ff0: 01 00 80 d2 	mov	x1, #0
100002ff4: 9f 03 00 94 	bl	0x100003e70 <_strlen+0x100003e70>
100002ff8: 01 00 00 14 	b	0x100002ffc <_main+0xec>
100002ffc: a8 83 5d b8 	ldur	w8, [x29, #-40]
100003000: 08 05 00 11 	add	w8, w8, #1
100003004: a8 83 1d b8 	stur	w8, [x29, #-40]
100003008: f2 ff ff 17 	b	0x100002fd0 <_main+0xc0>
10000300c: 00 00 00 b0 	adrp	x0, 0x100004000 <_main+0x100>
100003010: 00 30 40 f9 	ldr	x0, [x0, #96]
100003014: 01 00 00 90 	adrp	x1, 0x100003000 <_main+0x104>
100003018: 21 d0 3b 91 	add	x1, x1, #3828
10000301c: 83 03 00 94 	bl	0x100003e28 <_strlen+0x100003e28>
100003020: a0 83 1b f8 	stur	x0, [x29, #-72]
100003024: 20 00 00 b0 	adrp	x0, 0x100008000 <_main+0x128>
100003028: 00 00 00 91 	add	x0, x0, #0
10000302c: 29 00 00 94 	bl	0x1000030d0 <__ZNKSt3__113__atomic_baseIiLb0EEcviEv>
100003030: e1 03 00 aa 	mov	x1, x0
100003034: a0 83 5b f8 	ldur	x0, [x29, #-72]
100003038: 6d 03 00 94 	bl	0x100003dec <_strlen+0x100003dec>
10000303c: 01 00 00 90 	adrp	x1, 0x100003000 <_main+0x12c>
100003040: 21 fc 3b 91 	add	x1, x1, #3839
100003044: 79 03 00 94 	bl	0x100003e28 <_strlen+0x100003e28>
100003048: a8 83 5e f8 	ldur	x8, [x29, #-24]
10000304c: 1f 01 00 91 	mov	sp, x8
100003050: a8 43 5f b8 	ldur	w8, [x29, #-12]
100003054: a8 43 1c b8 	stur	w8, [x29, #-60]
100003058: a9 83 5f f8 	ldur	x9, [x29, #-8]
10000305c: 08 00 00 b0 	adrp	x8, 0x100004000 <_main+0x150>
100003060: 08 61 40 f9 	ldr	x8, [x8, #192]
100003064: 08 01 40 f9 	ldr	x8, [x8]
100003068: 08 01 09 eb 	subs	x8, x8, x9
10000306c: 60 00 00 54 	b.eq	0x100003078 <_main+0x168>
100003070: 01 00 00 14 	b	0x100003074 <_main+0x164>
100003074: 79 03 00 94 	bl	0x100003e58 <_strlen+0x100003e58>
100003078: a0 43 5c b8 	ldur	w0, [x29, #-60]
10000307c: bf 03 00 91 	mov	sp, x29
100003080: fd 7b c1 a8 	ldp	x29, x30, [sp], #16
100003084: c0 03 5f d6 	ret

0000000100003088 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>:
100003088: ff c3 00 d1 	sub	sp, sp, #48
10000308c: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003090: fd 83 00 91 	add	x29, sp, #32
100003094: a0 83 1f f8 	stur	x0, [x29, #-8]
100003098: e1 0b 00 f9 	str	x1, [sp, #16]
10000309c: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000030a0: e8 07 00 f9 	str	x8, [sp, #8]
1000030a4: e8 0b 40 f9 	ldr	x8, [sp, #16]
1000030a8: e8 03 00 f9 	str	x8, [sp]
1000030ac: e0 0b 40 f9 	ldr	x0, [sp, #16]
1000030b0: 40 03 00 94 	bl	0x100003db0 <_strlen+0x100003db0>
1000030b4: e1 03 40 f9 	ldr	x1, [sp]
1000030b8: e2 03 00 aa 	mov	x2, x0
1000030bc: e0 07 40 f9 	ldr	x0, [sp, #8]
1000030c0: 4e 03 00 94 	bl	0x100003df8 <_strlen+0x100003df8>
1000030c4: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
1000030c8: ff c3 00 91 	add	sp, sp, #48
1000030cc: c0 03 5f d6 	ret

00000001000030d0 <__ZNKSt3__113__atomic_baseIiLb0EEcviEv>:
1000030d0: ff 83 00 d1 	sub	sp, sp, #32
1000030d4: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
1000030d8: fd 43 00 91 	add	x29, sp, #16
1000030dc: e0 07 00 f9 	str	x0, [sp, #8]
1000030e0: e0 07 40 f9 	ldr	x0, [sp, #8]
1000030e4: a1 00 80 52 	mov	w1, #5
1000030e8: fa 02 00 94 	bl	0x100003cd0 <__ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE>
1000030ec: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
1000030f0: ff 83 00 91 	add	sp, sp, #32
1000030f4: c0 03 5f d6 	ret

00000001000030f8 <__ZNSt3__113__atomic_baseIiLb1EE9fetch_addEiNS_12memory_orderE>:
1000030f8: ff 83 00 d1 	sub	sp, sp, #32
1000030fc: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003100: fd 43 00 91 	add	x29, sp, #16
100003104: e0 07 00 f9 	str	x0, [sp, #8]
100003108: e1 07 00 b9 	str	w1, [sp, #4]
10000310c: e2 03 00 b9 	str	w2, [sp]
100003110: e0 07 40 f9 	ldr	x0, [sp, #8]
100003114: e1 07 40 b9 	ldr	w1, [sp, #4]
100003118: e2 03 40 b9 	ldr	w2, [sp]
10000311c: 04 00 00 94 	bl	0x10000312c <__ZNSt3__1L22__cxx_atomic_fetch_addIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE>
100003120: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003124: ff 83 00 91 	add	sp, sp, #32
100003128: c0 03 5f d6 	ret

000000010000312c <__ZNSt3__1L22__cxx_atomic_fetch_addIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE>:
10000312c: ff c3 00 d1 	sub	sp, sp, #48
100003130: e0 17 00 f9 	str	x0, [sp, #40]
100003134: e1 27 00 b9 	str	w1, [sp, #36]
100003138: e2 23 00 b9 	str	w2, [sp, #32]
10000313c: e8 17 40 f9 	ldr	x8, [sp, #40]
100003140: e8 07 00 f9 	str	x8, [sp, #8]
100003144: e8 23 40 b9 	ldr	w8, [sp, #32]
100003148: e9 27 40 b9 	ldr	w9, [sp, #36]
10000314c: e9 1f 00 b9 	str	w9, [sp, #28]
100003150: 08 05 00 71 	subs	w8, w8, #1
100003154: e8 0b 00 f9 	str	x8, [sp, #16]
100003158: 08 11 00 f1 	subs	x8, x8, #4
10000315c: 08 01 00 54 	b.hi	0x10000317c <__ZNSt3__1L22__cxx_atomic_fetch_addIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE+0x50>
100003160: eb 0b 40 f9 	ldr	x11, [sp, #16]
100003164: 0a 00 00 90 	adrp	x10, 0x100003000 <__ZNSt3__1L22__cxx_atomic_fetch_addIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE+0x38>
100003168: 4a b1 07 91 	add	x10, x10, #492
10000316c: 08 00 00 10 	adr	x8, #0
100003170: 49 79 ab b8 	ldrsw	x9, [x10, x11, lsl #2]
100003174: 08 01 09 8b 	add	x8, x8, x9
100003178: 00 01 1f d6 	br	x8
10000317c: e9 07 40 f9 	ldr	x9, [sp, #8]
100003180: e8 1f 40 b9 	ldr	w8, [sp, #28]
100003184: 28 01 28 b8 	<unknown>
100003188: e8 1b 00 b9 	str	w8, [sp, #24]
10000318c: 15 00 00 14 	b	0x1000031e0 <__ZNSt3__1L22__cxx_atomic_fetch_addIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE+0xb4>
100003190: e9 07 40 f9 	ldr	x9, [sp, #8]
100003194: e8 1f 40 b9 	ldr	w8, [sp, #28]
100003198: 28 01 a8 b8 	<unknown>
10000319c: e8 1b 00 b9 	str	w8, [sp, #24]
1000031a0: 10 00 00 14 	b	0x1000031e0 <__ZNSt3__1L22__cxx_atomic_fetch_addIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE+0xb4>
1000031a4: e9 07 40 f9 	ldr	x9, [sp, #8]
1000031a8: e8 1f 40 b9 	ldr	w8, [sp, #28]
1000031ac: 28 01 68 b8 	<unknown>
1000031b0: e8 1b 00 b9 	str	w8, [sp, #24]
1000031b4: 0b 00 00 14 	b	0x1000031e0 <__ZNSt3__1L22__cxx_atomic_fetch_addIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE+0xb4>
1000031b8: e9 07 40 f9 	ldr	x9, [sp, #8]
1000031bc: e8 1f 40 b9 	ldr	w8, [sp, #28]
1000031c0: 28 01 e8 b8 	<unknown>
1000031c4: e8 1b 00 b9 	str	w8, [sp, #24]
1000031c8: 06 00 00 14 	b	0x1000031e0 <__ZNSt3__1L22__cxx_atomic_fetch_addIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE+0xb4>
1000031cc: e9 07 40 f9 	ldr	x9, [sp, #8]
1000031d0: e8 1f 40 b9 	ldr	w8, [sp, #28]
1000031d4: 28 01 e8 b8 	<unknown>
1000031d8: e8 1b 00 b9 	str	w8, [sp, #24]
1000031dc: 01 00 00 14 	b	0x1000031e0 <__ZNSt3__1L22__cxx_atomic_fetch_addIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE+0xb4>
1000031e0: e0 1b 40 b9 	ldr	w0, [sp, #24]
1000031e4: ff c3 00 91 	add	sp, sp, #48
1000031e8: c0 03 5f d6 	ret
1000031ec: 24 00 00 00 	udf	#36
1000031f0: 24 00 00 00 	udf	#36
1000031f4: 38 00 00 00 	udf	#56
1000031f8: 4c 00 00 00 	udf	#76
1000031fc: 60 00 00 00 	udf	#96

0000000100003200 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>:
100003200: ff 83 02 d1 	sub	sp, sp, #160
100003204: fd 7b 09 a9 	stp	x29, x30, [sp, #144]
100003208: fd 43 02 91 	add	x29, sp, #144
10000320c: a0 83 1f f8 	stur	x0, [x29, #-8]
100003210: a1 03 1f f8 	stur	x1, [x29, #-16]
100003214: a2 83 1e f8 	stur	x2, [x29, #-24]
100003218: a1 83 5f f8 	ldur	x1, [x29, #-8]
10000321c: a0 a3 00 d1 	sub	x0, x29, #40
100003220: ed 02 00 94 	bl	0x100003dd4 <_strlen+0x100003dd4>
100003224: 01 00 00 14 	b	0x100003228 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x28>
100003228: a0 a3 00 d1 	sub	x0, x29, #40
10000322c: 78 00 00 94 	bl	0x10000340c <__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv>
100003230: e0 47 00 b9 	str	w0, [sp, #68]
100003234: 01 00 00 14 	b	0x100003238 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x38>
100003238: e8 47 40 b9 	ldr	w8, [sp, #68]
10000323c: e8 0b 00 36 	tbz	w8, #0, 0x1000033b8 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b8>
100003240: 01 00 00 14 	b	0x100003244 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x44>
100003244: a1 83 5f f8 	ldur	x1, [x29, #-8]
100003248: e0 23 01 91 	add	x0, sp, #72
10000324c: fc 00 00 94 	bl	0x10000363c <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE>
100003250: a8 03 5f f8 	ldur	x8, [x29, #-16]
100003254: e8 1f 00 f9 	str	x8, [sp, #56]
100003258: a8 83 5f f8 	ldur	x8, [x29, #-8]
10000325c: 09 01 40 f9 	ldr	x9, [x8]
100003260: 29 81 5e f8 	ldur	x9, [x9, #-24]
100003264: 00 01 09 8b 	add	x0, x8, x9
100003268: 02 01 00 94 	bl	0x100003670 <__ZNKSt3__18ios_base5flagsEv>
10000326c: e0 43 00 b9 	str	w0, [sp, #64]
100003270: 01 00 00 14 	b	0x100003274 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x74>
100003274: e8 43 40 b9 	ldr	w8, [sp, #64]
100003278: 09 16 80 52 	mov	w9, #176
10000327c: 08 01 09 0a 	and	w8, w8, w9
100003280: 08 81 00 71 	subs	w8, w8, #32
100003284: e1 00 00 54 	b.ne	0x1000032a0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xa0>
100003288: 01 00 00 14 	b	0x10000328c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x8c>
10000328c: a8 03 5f f8 	ldur	x8, [x29, #-16]
100003290: a9 83 5e f8 	ldur	x9, [x29, #-24]
100003294: 08 01 09 8b 	add	x8, x8, x9
100003298: e8 1b 00 f9 	str	x8, [sp, #48]
10000329c: 04 00 00 14 	b	0x1000032ac <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xac>
1000032a0: a8 03 5f f8 	ldur	x8, [x29, #-16]
1000032a4: e8 1b 00 f9 	str	x8, [sp, #48]
1000032a8: 01 00 00 14 	b	0x1000032ac <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xac>
1000032ac: e8 1b 40 f9 	ldr	x8, [sp, #48]
1000032b0: e8 0b 00 f9 	str	x8, [sp, #16]
1000032b4: a8 03 5f f8 	ldur	x8, [x29, #-16]
1000032b8: a9 83 5e f8 	ldur	x9, [x29, #-24]
1000032bc: 08 01 09 8b 	add	x8, x8, x9
1000032c0: e8 0f 00 f9 	str	x8, [sp, #24]
1000032c4: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000032c8: 09 01 40 f9 	ldr	x9, [x8]
1000032cc: 29 81 5e f8 	ldur	x9, [x9, #-24]
1000032d0: 08 01 09 8b 	add	x8, x8, x9
1000032d4: e8 13 00 f9 	str	x8, [sp, #32]
1000032d8: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000032dc: 09 01 40 f9 	ldr	x9, [x8]
1000032e0: 29 81 5e f8 	ldur	x9, [x9, #-24]
1000032e4: 00 01 09 8b 	add	x0, x8, x9
1000032e8: e8 00 00 94 	bl	0x100003688 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv>
1000032ec: e0 2f 00 b9 	str	w0, [sp, #44]
1000032f0: 01 00 00 14 	b	0x1000032f4 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xf4>
1000032f4: e8 2f 40 b9 	ldr	w8, [sp, #44]
1000032f8: e4 13 40 f9 	ldr	x4, [sp, #32]
1000032fc: e3 0f 40 f9 	ldr	x3, [sp, #24]
100003300: e2 0b 40 f9 	ldr	x2, [sp, #16]
100003304: e1 1f 40 f9 	ldr	x1, [sp, #56]
100003308: e0 27 40 f9 	ldr	x0, [sp, #72]
10000330c: 05 1d 00 13 	sxtb	w5, w8
100003310: 46 00 00 94 	bl	0x100003428 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>
100003314: e0 07 00 f9 	str	x0, [sp, #8]
100003318: 01 00 00 14 	b	0x10000331c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x11c>
10000331c: e8 07 40 f9 	ldr	x8, [sp, #8]
100003320: a0 03 01 d1 	sub	x0, x29, #64
100003324: a8 03 1c f8 	stur	x8, [x29, #-64]
100003328: f1 00 00 94 	bl	0x1000036ec <__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv>
10000332c: 40 04 00 36 	tbz	w0, #0, 0x1000033b4 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b4>
100003330: 01 00 00 14 	b	0x100003334 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x134>
100003334: a8 83 5f f8 	ldur	x8, [x29, #-8]
100003338: 09 01 40 f9 	ldr	x9, [x8]
10000333c: 29 81 5e f8 	ldur	x9, [x9, #-24]
100003340: 00 01 09 8b 	add	x0, x8, x9
100003344: a1 00 80 52 	mov	w1, #5
100003348: f2 00 00 94 	bl	0x100003710 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj>
10000334c: 01 00 00 14 	b	0x100003350 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x150>
100003350: 19 00 00 14 	b	0x1000033b4 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b4>
100003354: e8 03 01 aa 	mov	x8, x1
100003358: a0 03 1d f8 	stur	x0, [x29, #-48]
10000335c: a8 c3 1c b8 	stur	w8, [x29, #-52]
100003360: 07 00 00 14 	b	0x10000337c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x17c>
100003364: e8 03 01 aa 	mov	x8, x1
100003368: a0 03 1d f8 	stur	x0, [x29, #-48]
10000336c: a8 c3 1c b8 	stur	w8, [x29, #-52]
100003370: a0 a3 00 d1 	sub	x0, x29, #40
100003374: 9b 02 00 94 	bl	0x100003de0 <_strlen+0x100003de0>
100003378: 01 00 00 14 	b	0x10000337c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x17c>
10000337c: a0 03 5d f8 	ldur	x0, [x29, #-48]
100003380: b0 02 00 94 	bl	0x100003e40 <_strlen+0x100003e40>
100003384: a8 83 5f f8 	ldur	x8, [x29, #-8]
100003388: 09 01 40 f9 	ldr	x9, [x8]
10000338c: 29 81 5e f8 	ldur	x9, [x9, #-24]
100003390: 00 01 09 8b 	add	x0, x8, x9
100003394: 9f 02 00 94 	bl	0x100003e10 <_strlen+0x100003e10>
100003398: 01 00 00 14 	b	0x10000339c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x19c>
10000339c: ac 02 00 94 	bl	0x100003e4c <_strlen+0x100003e4c>
1000033a0: 01 00 00 14 	b	0x1000033a4 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1a4>
1000033a4: a0 83 5f f8 	ldur	x0, [x29, #-8]
1000033a8: fd 7b 49 a9 	ldp	x29, x30, [sp, #144]
1000033ac: ff 83 02 91 	add	sp, sp, #160
1000033b0: c0 03 5f d6 	ret
1000033b4: 01 00 00 14 	b	0x1000033b8 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b8>
1000033b8: a0 a3 00 d1 	sub	x0, x29, #40
1000033bc: 89 02 00 94 	bl	0x100003de0 <_strlen+0x100003de0>
1000033c0: f9 ff ff 17 	b	0x1000033a4 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1a4>
1000033c4: e8 03 01 aa 	mov	x8, x1
1000033c8: a0 03 1d f8 	stur	x0, [x29, #-48]
1000033cc: a8 c3 1c b8 	stur	w8, [x29, #-52]
1000033d0: 9f 02 00 94 	bl	0x100003e4c <_strlen+0x100003e4c>
1000033d4: 01 00 00 14 	b	0x1000033d8 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1d8>
1000033d8: 01 00 00 14 	b	0x1000033dc <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1dc>
1000033dc: a0 03 5d f8 	ldur	x0, [x29, #-48]
1000033e0: 65 02 00 94 	bl	0x100003d74 <_strlen+0x100003d74>
1000033e4: d6 00 00 94 	bl	0x10000373c <___clang_call_terminate>

00000001000033e8 <__ZNSt3__111char_traitsIcE6lengthEPKc>:
1000033e8: ff 83 00 d1 	sub	sp, sp, #32
1000033ec: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
1000033f0: fd 43 00 91 	add	x29, sp, #16
1000033f4: e0 07 00 f9 	str	x0, [sp, #8]
1000033f8: e0 07 40 f9 	ldr	x0, [sp, #8]
1000033fc: a0 02 00 94 	bl	0x100003e7c <_strlen+0x100003e7c>
100003400: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003404: ff 83 00 91 	add	sp, sp, #32
100003408: c0 03 5f d6 	ret

000000010000340c <__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv>:
10000340c: ff 43 00 d1 	sub	sp, sp, #16
100003410: e0 07 00 f9 	str	x0, [sp, #8]
100003414: e8 07 40 f9 	ldr	x8, [sp, #8]
100003418: 08 01 40 39 	ldrb	w8, [x8]
10000341c: 00 01 00 12 	and	w0, w8, #0x1
100003420: ff 43 00 91 	add	sp, sp, #16
100003424: c0 03 5f d6 	ret

0000000100003428 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>:
100003428: ff 83 02 d1 	sub	sp, sp, #160
10000342c: fd 7b 09 a9 	stp	x29, x30, [sp, #144]
100003430: fd 43 02 91 	add	x29, sp, #144
100003434: a0 03 1f f8 	stur	x0, [x29, #-16]
100003438: a1 83 1e f8 	stur	x1, [x29, #-24]
10000343c: a2 03 1e f8 	stur	x2, [x29, #-32]
100003440: a3 83 1d f8 	stur	x3, [x29, #-40]
100003444: a4 03 1d f8 	stur	x4, [x29, #-48]
100003448: a5 f3 1c 38 	sturb	w5, [x29, #-49]
10000344c: a8 03 5f f8 	ldur	x8, [x29, #-16]
100003450: a8 00 00 b5 	cbnz	x8, 0x100003464 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x3c>
100003454: 01 00 00 14 	b	0x100003458 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x30>
100003458: a8 03 5f f8 	ldur	x8, [x29, #-16]
10000345c: a8 83 1f f8 	stur	x8, [x29, #-8]
100003460: 71 00 00 14 	b	0x100003624 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
100003464: a8 83 5d f8 	ldur	x8, [x29, #-40]
100003468: a9 83 5e f8 	ldur	x9, [x29, #-24]
10000346c: 08 01 09 eb 	subs	x8, x8, x9
100003470: a8 03 1c f8 	stur	x8, [x29, #-64]
100003474: a0 03 5d f8 	ldur	x0, [x29, #-48]
100003478: b4 00 00 94 	bl	0x100003748 <__ZNKSt3__18ios_base5widthEv>
10000347c: e0 27 00 f9 	str	x0, [sp, #72]
100003480: e8 27 40 f9 	ldr	x8, [sp, #72]
100003484: a9 03 5c f8 	ldur	x9, [x29, #-64]
100003488: 08 01 09 eb 	subs	x8, x8, x9
10000348c: ed 00 00 54 	b.le	0x1000034a8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x80>
100003490: 01 00 00 14 	b	0x100003494 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x6c>
100003494: a9 03 5c f8 	ldur	x9, [x29, #-64]
100003498: e8 27 40 f9 	ldr	x8, [sp, #72]
10000349c: 08 01 09 eb 	subs	x8, x8, x9
1000034a0: e8 27 00 f9 	str	x8, [sp, #72]
1000034a4: 03 00 00 14 	b	0x1000034b0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x88>
1000034a8: ff 27 00 f9 	str	xzr, [sp, #72]
1000034ac: 01 00 00 14 	b	0x1000034b0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x88>
1000034b0: a8 03 5e f8 	ldur	x8, [x29, #-32]
1000034b4: a9 83 5e f8 	ldur	x9, [x29, #-24]
1000034b8: 08 01 09 eb 	subs	x8, x8, x9
1000034bc: e8 23 00 f9 	str	x8, [sp, #64]
1000034c0: e8 23 40 f9 	ldr	x8, [sp, #64]
1000034c4: 08 01 00 f1 	subs	x8, x8, #0
1000034c8: ed 01 00 54 	b.le	0x100003504 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdc>
1000034cc: 01 00 00 14 	b	0x1000034d0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xa8>
1000034d0: a0 03 5f f8 	ldur	x0, [x29, #-16]
1000034d4: a1 83 5e f8 	ldur	x1, [x29, #-24]
1000034d8: e2 23 40 f9 	ldr	x2, [sp, #64]
1000034dc: a1 00 00 94 	bl	0x100003760 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>
1000034e0: e8 23 40 f9 	ldr	x8, [sp, #64]
1000034e4: 08 00 08 eb 	subs	x8, x0, x8
1000034e8: c0 00 00 54 	b.eq	0x100003500 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xd8>
1000034ec: 01 00 00 14 	b	0x1000034f0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xc8>
1000034f0: bf 03 1f f8 	stur	xzr, [x29, #-16]
1000034f4: a8 03 5f f8 	ldur	x8, [x29, #-16]
1000034f8: a8 83 1f f8 	stur	x8, [x29, #-8]
1000034fc: 4a 00 00 14 	b	0x100003624 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
100003500: 01 00 00 14 	b	0x100003504 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdc>
100003504: e8 27 40 f9 	ldr	x8, [sp, #72]
100003508: 08 01 00 f1 	subs	x8, x8, #0
10000350c: 6d 05 00 54 	b.le	0x1000035b8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x190>
100003510: 01 00 00 14 	b	0x100003514 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xec>
100003514: e1 27 40 f9 	ldr	x1, [sp, #72]
100003518: a2 f3 dc 38 	ldursb	w2, [x29, #-49]
10000351c: e0 a3 00 91 	add	x0, sp, #40
100003520: e0 03 00 f9 	str	x0, [sp]
100003524: 9e 00 00 94 	bl	0x10000379c <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc>
100003528: e0 03 40 f9 	ldr	x0, [sp]
10000352c: a8 03 5f f8 	ldur	x8, [x29, #-16]
100003530: e8 07 00 f9 	str	x8, [sp, #8]
100003534: a9 00 00 94 	bl	0x1000037d8 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv>
100003538: e1 03 00 aa 	mov	x1, x0
10000353c: e0 07 40 f9 	ldr	x0, [sp, #8]
100003540: e2 27 40 f9 	ldr	x2, [sp, #72]
100003544: 87 00 00 94 	bl	0x100003760 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>
100003548: e0 0b 00 f9 	str	x0, [sp, #16]
10000354c: 01 00 00 14 	b	0x100003550 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x128>
100003550: e8 0b 40 f9 	ldr	x8, [sp, #16]
100003554: e9 27 40 f9 	ldr	x9, [sp, #72]
100003558: 08 01 09 eb 	subs	x8, x8, x9
10000355c: c0 01 00 54 	b.eq	0x100003594 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x16c>
100003560: 01 00 00 14 	b	0x100003564 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x13c>
100003564: bf 03 1f f8 	stur	xzr, [x29, #-16]
100003568: a8 03 5f f8 	ldur	x8, [x29, #-16]
10000356c: a8 83 1f f8 	stur	x8, [x29, #-8]
100003570: 28 00 80 52 	mov	w8, #1
100003574: e8 1b 00 b9 	str	w8, [sp, #24]
100003578: 09 00 00 14 	b	0x10000359c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x174>
10000357c: e8 03 01 aa 	mov	x8, x1
100003580: e0 13 00 f9 	str	x0, [sp, #32]
100003584: e8 1f 00 b9 	str	w8, [sp, #28]
100003588: e0 a3 00 91 	add	x0, sp, #40
10000358c: 0f 02 00 94 	bl	0x100003dc8 <_strlen+0x100003dc8>
100003590: 29 00 00 14 	b	0x100003634 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x20c>
100003594: ff 1b 00 b9 	str	wzr, [sp, #24]
100003598: 01 00 00 14 	b	0x10000359c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x174>
10000359c: e0 a3 00 91 	add	x0, sp, #40
1000035a0: 0a 02 00 94 	bl	0x100003dc8 <_strlen+0x100003dc8>
1000035a4: e8 1b 40 b9 	ldr	w8, [sp, #24]
1000035a8: 68 00 00 34 	cbz	w8, 0x1000035b4 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x18c>
1000035ac: 01 00 00 14 	b	0x1000035b0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x188>
1000035b0: 1d 00 00 14 	b	0x100003624 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
1000035b4: 01 00 00 14 	b	0x1000035b8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x190>
1000035b8: a8 83 5d f8 	ldur	x8, [x29, #-40]
1000035bc: a9 03 5e f8 	ldur	x9, [x29, #-32]
1000035c0: 08 01 09 eb 	subs	x8, x8, x9
1000035c4: e8 23 00 f9 	str	x8, [sp, #64]
1000035c8: e8 23 40 f9 	ldr	x8, [sp, #64]
1000035cc: 08 01 00 f1 	subs	x8, x8, #0
1000035d0: ed 01 00 54 	b.le	0x10000360c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e4>
1000035d4: 01 00 00 14 	b	0x1000035d8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1b0>
1000035d8: a0 03 5f f8 	ldur	x0, [x29, #-16]
1000035dc: a1 03 5e f8 	ldur	x1, [x29, #-32]
1000035e0: e2 23 40 f9 	ldr	x2, [sp, #64]
1000035e4: 5f 00 00 94 	bl	0x100003760 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>
1000035e8: e8 23 40 f9 	ldr	x8, [sp, #64]
1000035ec: 08 00 08 eb 	subs	x8, x0, x8
1000035f0: c0 00 00 54 	b.eq	0x100003608 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e0>
1000035f4: 01 00 00 14 	b	0x1000035f8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1d0>
1000035f8: bf 03 1f f8 	stur	xzr, [x29, #-16]
1000035fc: a8 03 5f f8 	ldur	x8, [x29, #-16]
100003600: a8 83 1f f8 	stur	x8, [x29, #-8]
100003604: 08 00 00 14 	b	0x100003624 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
100003608: 01 00 00 14 	b	0x10000360c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e4>
10000360c: a0 03 5d f8 	ldur	x0, [x29, #-48]
100003610: 01 00 80 d2 	mov	x1, #0
100003614: 7b 00 00 94 	bl	0x100003800 <__ZNSt3__18ios_base5widthEl>
100003618: a8 03 5f f8 	ldur	x8, [x29, #-16]
10000361c: a8 83 1f f8 	stur	x8, [x29, #-8]
100003620: 01 00 00 14 	b	0x100003624 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
100003624: a0 83 5f f8 	ldur	x0, [x29, #-8]
100003628: fd 7b 49 a9 	ldp	x29, x30, [sp, #144]
10000362c: ff 83 02 91 	add	sp, sp, #160
100003630: c0 03 5f d6 	ret
100003634: e0 13 40 f9 	ldr	x0, [sp, #32]
100003638: cf 01 00 94 	bl	0x100003d74 <_strlen+0x100003d74>

000000010000363c <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE>:
10000363c: ff c3 00 d1 	sub	sp, sp, #48
100003640: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003644: fd 83 00 91 	add	x29, sp, #32
100003648: a0 83 1f f8 	stur	x0, [x29, #-8]
10000364c: e1 0b 00 f9 	str	x1, [sp, #16]
100003650: a0 83 5f f8 	ldur	x0, [x29, #-8]
100003654: e0 07 00 f9 	str	x0, [sp, #8]
100003658: e1 0b 40 f9 	ldr	x1, [sp, #16]
10000365c: 26 01 00 94 	bl	0x100003af4 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE>
100003660: e0 07 40 f9 	ldr	x0, [sp, #8]
100003664: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003668: ff c3 00 91 	add	sp, sp, #48
10000366c: c0 03 5f d6 	ret

0000000100003670 <__ZNKSt3__18ios_base5flagsEv>:
100003670: ff 43 00 d1 	sub	sp, sp, #16
100003674: e0 07 00 f9 	str	x0, [sp, #8]
100003678: e8 07 40 f9 	ldr	x8, [sp, #8]
10000367c: 00 09 40 b9 	ldr	w0, [x8, #8]
100003680: ff 43 00 91 	add	sp, sp, #16
100003684: c0 03 5f d6 	ret

0000000100003688 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv>:
100003688: ff 83 00 d1 	sub	sp, sp, #32
10000368c: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003690: fd 43 00 91 	add	x29, sp, #16
100003694: e0 07 00 f9 	str	x0, [sp, #8]
100003698: e8 07 40 f9 	ldr	x8, [sp, #8]
10000369c: e8 03 00 f9 	str	x8, [sp]
1000036a0: c1 01 00 94 	bl	0x100003da4 <_strlen+0x100003da4>
1000036a4: e8 03 40 f9 	ldr	x8, [sp]
1000036a8: 01 91 40 b9 	ldr	w1, [x8, #144]
1000036ac: bb 01 00 94 	bl	0x100003d98 <_strlen+0x100003d98>
1000036b0: 20 01 00 36 	tbz	w0, #0, 0x1000036d4 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv+0x4c>
1000036b4: 01 00 00 14 	b	0x1000036b8 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv+0x30>
1000036b8: e0 03 40 f9 	ldr	x0, [sp]
1000036bc: 01 04 80 52 	mov	w1, #32
1000036c0: 3d 01 00 94 	bl	0x100003bb4 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc>
1000036c4: e9 03 40 f9 	ldr	x9, [sp]
1000036c8: 08 1c 00 13 	sxtb	w8, w0
1000036cc: 28 91 00 b9 	str	w8, [x9, #144]
1000036d0: 01 00 00 14 	b	0x1000036d4 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv+0x4c>
1000036d4: e8 03 40 f9 	ldr	x8, [sp]
1000036d8: 08 91 40 b9 	ldr	w8, [x8, #144]
1000036dc: 00 1d 00 13 	sxtb	w0, w8
1000036e0: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
1000036e4: ff 83 00 91 	add	sp, sp, #32
1000036e8: c0 03 5f d6 	ret

00000001000036ec <__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv>:
1000036ec: ff 43 00 d1 	sub	sp, sp, #16
1000036f0: e0 07 00 f9 	str	x0, [sp, #8]
1000036f4: e8 07 40 f9 	ldr	x8, [sp, #8]
1000036f8: 08 01 40 f9 	ldr	x8, [x8]
1000036fc: 08 01 00 f1 	subs	x8, x8, #0
100003700: e8 17 9f 1a 	cset	w8, eq
100003704: 00 01 00 12 	and	w0, w8, #0x1
100003708: ff 43 00 91 	add	sp, sp, #16
10000370c: c0 03 5f d6 	ret

0000000100003710 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj>:
100003710: ff 83 00 d1 	sub	sp, sp, #32
100003714: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003718: fd 43 00 91 	add	x29, sp, #16
10000371c: e0 07 00 f9 	str	x0, [sp, #8]
100003720: e1 07 00 b9 	str	w1, [sp, #4]
100003724: e0 07 40 f9 	ldr	x0, [sp, #8]
100003728: e1 07 40 b9 	ldr	w1, [sp, #4]
10000372c: 5c 01 00 94 	bl	0x100003c9c <__ZNSt3__18ios_base8setstateEj>
100003730: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003734: ff 83 00 91 	add	sp, sp, #32
100003738: c0 03 5f d6 	ret

000000010000373c <___clang_call_terminate>:
10000373c: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
100003740: c0 01 00 94 	bl	0x100003e40 <_strlen+0x100003e40>
100003744: bc 01 00 94 	bl	0x100003e34 <_strlen+0x100003e34>

0000000100003748 <__ZNKSt3__18ios_base5widthEv>:
100003748: ff 43 00 d1 	sub	sp, sp, #16
10000374c: e0 07 00 f9 	str	x0, [sp, #8]
100003750: e8 07 40 f9 	ldr	x8, [sp, #8]
100003754: 00 0d 40 f9 	ldr	x0, [x8, #24]
100003758: ff 43 00 91 	add	sp, sp, #16
10000375c: c0 03 5f d6 	ret

0000000100003760 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>:
100003760: ff c3 00 d1 	sub	sp, sp, #48
100003764: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003768: fd 83 00 91 	add	x29, sp, #32
10000376c: a0 83 1f f8 	stur	x0, [x29, #-8]
100003770: e1 0b 00 f9 	str	x1, [sp, #16]
100003774: e2 07 00 f9 	str	x2, [sp, #8]
100003778: a0 83 5f f8 	ldur	x0, [x29, #-8]
10000377c: e1 0b 40 f9 	ldr	x1, [sp, #16]
100003780: e2 07 40 f9 	ldr	x2, [sp, #8]
100003784: 08 00 40 f9 	ldr	x8, [x0]
100003788: 08 31 40 f9 	ldr	x8, [x8, #96]
10000378c: 00 01 3f d6 	blr	x8
100003790: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003794: ff c3 00 91 	add	sp, sp, #48
100003798: c0 03 5f d6 	ret

000000010000379c <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc>:
10000379c: ff c3 00 d1 	sub	sp, sp, #48
1000037a0: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
1000037a4: fd 83 00 91 	add	x29, sp, #32
1000037a8: a0 83 1f f8 	stur	x0, [x29, #-8]
1000037ac: e1 0b 00 f9 	str	x1, [sp, #16]
1000037b0: e2 3f 00 39 	strb	w2, [sp, #15]
1000037b4: a0 83 5f f8 	ldur	x0, [x29, #-8]
1000037b8: e0 03 00 f9 	str	x0, [sp]
1000037bc: e1 0b 40 f9 	ldr	x1, [sp, #16]
1000037c0: e2 3f c0 39 	ldrsb	w2, [sp, #15]
1000037c4: 1a 00 00 94 	bl	0x10000382c <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc>
1000037c8: e0 03 40 f9 	ldr	x0, [sp]
1000037cc: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
1000037d0: ff c3 00 91 	add	sp, sp, #48
1000037d4: c0 03 5f d6 	ret

00000001000037d8 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv>:
1000037d8: ff 83 00 d1 	sub	sp, sp, #32
1000037dc: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
1000037e0: fd 43 00 91 	add	x29, sp, #16
1000037e4: e0 07 00 f9 	str	x0, [sp, #8]
1000037e8: e0 07 40 f9 	ldr	x0, [sp, #8]
1000037ec: 70 00 00 94 	bl	0x1000039ac <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv>
1000037f0: 6a 00 00 94 	bl	0x100003998 <__ZNSt3__1L12__to_addressIKcEEPT_S3_>
1000037f4: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
1000037f8: ff 83 00 91 	add	sp, sp, #32
1000037fc: c0 03 5f d6 	ret

0000000100003800 <__ZNSt3__18ios_base5widthEl>:
100003800: ff 83 00 d1 	sub	sp, sp, #32
100003804: e0 0f 00 f9 	str	x0, [sp, #24]
100003808: e1 0b 00 f9 	str	x1, [sp, #16]
10000380c: e9 0f 40 f9 	ldr	x9, [sp, #24]
100003810: 28 0d 40 f9 	ldr	x8, [x9, #24]
100003814: e8 07 00 f9 	str	x8, [sp, #8]
100003818: e8 0b 40 f9 	ldr	x8, [sp, #16]
10000381c: 28 0d 00 f9 	str	x8, [x9, #24]
100003820: e0 07 40 f9 	ldr	x0, [sp, #8]
100003824: ff 83 00 91 	add	sp, sp, #32
100003828: c0 03 5f d6 	ret

000000010000382c <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc>:
10000382c: ff c3 00 d1 	sub	sp, sp, #48
100003830: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003834: fd 83 00 91 	add	x29, sp, #32
100003838: a0 83 1f f8 	stur	x0, [x29, #-8]
10000383c: e1 0b 00 f9 	str	x1, [sp, #16]
100003840: e2 3f 00 39 	strb	w2, [sp, #15]
100003844: a0 83 5f f8 	ldur	x0, [x29, #-8]
100003848: e0 03 00 f9 	str	x0, [sp]
10000384c: e1 3b 00 91 	add	x1, sp, #14
100003850: e2 37 00 91 	add	x2, sp, #13
100003854: 09 00 00 94 	bl	0x100003878 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_>
100003858: e0 03 40 f9 	ldr	x0, [sp]
10000385c: e1 0b 40 f9 	ldr	x1, [sp, #16]
100003860: e2 3f c0 39 	ldrsb	w2, [sp, #15]
100003864: 56 01 00 94 	bl	0x100003dbc <_strlen+0x100003dbc>
100003868: e0 03 40 f9 	ldr	x0, [sp]
10000386c: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003870: ff c3 00 91 	add	sp, sp, #48
100003874: c0 03 5f d6 	ret

0000000100003878 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_>:
100003878: ff c3 00 d1 	sub	sp, sp, #48
10000387c: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003880: fd 83 00 91 	add	x29, sp, #32
100003884: a0 83 1f f8 	stur	x0, [x29, #-8]
100003888: e1 0b 00 f9 	str	x1, [sp, #16]
10000388c: e2 07 00 f9 	str	x2, [sp, #8]
100003890: a0 83 5f f8 	ldur	x0, [x29, #-8]
100003894: e0 03 00 f9 	str	x0, [sp]
100003898: e1 0b 40 f9 	ldr	x1, [sp, #16]
10000389c: e2 07 40 f9 	ldr	x2, [sp, #8]
1000038a0: 05 00 00 94 	bl	0x1000038b4 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_>
1000038a4: e0 03 40 f9 	ldr	x0, [sp]
1000038a8: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
1000038ac: ff c3 00 91 	add	sp, sp, #48
1000038b0: c0 03 5f d6 	ret

00000001000038b4 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_>:
1000038b4: ff 03 01 d1 	sub	sp, sp, #64
1000038b8: fd 7b 03 a9 	stp	x29, x30, [sp, #48]
1000038bc: fd c3 00 91 	add	x29, sp, #48
1000038c0: a0 83 1f f8 	stur	x0, [x29, #-8]
1000038c4: a1 03 1f f8 	stur	x1, [x29, #-16]
1000038c8: e2 0f 00 f9 	str	x2, [sp, #24]
1000038cc: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000038d0: e8 07 00 f9 	str	x8, [sp, #8]
1000038d4: a0 03 5f f8 	ldur	x0, [x29, #-16]
1000038d8: 0b 00 00 94 	bl	0x100003904 <__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE>
1000038dc: e0 07 40 f9 	ldr	x0, [sp, #8]
1000038e0: 0e 00 00 94 	bl	0x100003918 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE>
1000038e4: e0 0f 40 f9 	ldr	x0, [sp, #24]
1000038e8: 07 00 00 94 	bl	0x100003904 <__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE>
1000038ec: e0 07 40 f9 	ldr	x0, [sp, #8]
1000038f0: 0f 00 00 94 	bl	0x10000392c <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE>
1000038f4: e0 07 40 f9 	ldr	x0, [sp, #8]
1000038f8: fd 7b 43 a9 	ldp	x29, x30, [sp, #48]
1000038fc: ff 03 01 91 	add	sp, sp, #64
100003900: c0 03 5f d6 	ret

0000000100003904 <__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE>:
100003904: ff 43 00 d1 	sub	sp, sp, #16
100003908: e0 07 00 f9 	str	x0, [sp, #8]
10000390c: e0 07 40 f9 	ldr	x0, [sp, #8]
100003910: ff 43 00 91 	add	sp, sp, #16
100003914: c0 03 5f d6 	ret

0000000100003918 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE>:
100003918: ff 43 00 d1 	sub	sp, sp, #16
10000391c: e0 03 00 f9 	str	x0, [sp]
100003920: e0 03 40 f9 	ldr	x0, [sp]
100003924: ff 43 00 91 	add	sp, sp, #16
100003928: c0 03 5f d6 	ret

000000010000392c <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE>:
10000392c: ff c3 00 d1 	sub	sp, sp, #48
100003930: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003934: fd 83 00 91 	add	x29, sp, #32
100003938: e0 0b 00 f9 	str	x0, [sp, #16]
10000393c: e0 0b 40 f9 	ldr	x0, [sp, #16]
100003940: e0 07 00 f9 	str	x0, [sp, #8]
100003944: 05 00 00 94 	bl	0x100003958 <__ZNSt3__19allocatorIcEC2Ev>
100003948: e0 07 40 f9 	ldr	x0, [sp, #8]
10000394c: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003950: ff c3 00 91 	add	sp, sp, #48
100003954: c0 03 5f d6 	ret

0000000100003958 <__ZNSt3__19allocatorIcEC2Ev>:
100003958: ff 83 00 d1 	sub	sp, sp, #32
10000395c: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003960: fd 43 00 91 	add	x29, sp, #16
100003964: e0 07 00 f9 	str	x0, [sp, #8]
100003968: e0 07 40 f9 	ldr	x0, [sp, #8]
10000396c: e0 03 00 f9 	str	x0, [sp]
100003970: 05 00 00 94 	bl	0x100003984 <__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev>
100003974: e0 03 40 f9 	ldr	x0, [sp]
100003978: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
10000397c: ff 83 00 91 	add	sp, sp, #32
100003980: c0 03 5f d6 	ret

0000000100003984 <__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev>:
100003984: ff 43 00 d1 	sub	sp, sp, #16
100003988: e0 07 00 f9 	str	x0, [sp, #8]
10000398c: e0 07 40 f9 	ldr	x0, [sp, #8]
100003990: ff 43 00 91 	add	sp, sp, #16
100003994: c0 03 5f d6 	ret

0000000100003998 <__ZNSt3__1L12__to_addressIKcEEPT_S3_>:
100003998: ff 43 00 d1 	sub	sp, sp, #16
10000399c: e0 07 00 f9 	str	x0, [sp, #8]
1000039a0: e0 07 40 f9 	ldr	x0, [sp, #8]
1000039a4: ff 43 00 91 	add	sp, sp, #16
1000039a8: c0 03 5f d6 	ret

00000001000039ac <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv>:
1000039ac: ff c3 00 d1 	sub	sp, sp, #48
1000039b0: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
1000039b4: fd 83 00 91 	add	x29, sp, #32
1000039b8: a0 83 1f f8 	stur	x0, [x29, #-8]
1000039bc: a0 83 5f f8 	ldur	x0, [x29, #-8]
1000039c0: e0 0b 00 f9 	str	x0, [sp, #16]
1000039c4: 0f 00 00 94 	bl	0x100003a00 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv>
1000039c8: c0 00 00 36 	tbz	w0, #0, 0x1000039e0 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x34>
1000039cc: 01 00 00 14 	b	0x1000039d0 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x24>
1000039d0: e0 0b 40 f9 	ldr	x0, [sp, #16]
1000039d4: 18 00 00 94 	bl	0x100003a34 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv>
1000039d8: e0 07 00 f9 	str	x0, [sp, #8]
1000039dc: 05 00 00 14 	b	0x1000039f0 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x44>
1000039e0: e0 0b 40 f9 	ldr	x0, [sp, #16]
1000039e4: 1e 00 00 94 	bl	0x100003a5c <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv>
1000039e8: e0 07 00 f9 	str	x0, [sp, #8]
1000039ec: 01 00 00 14 	b	0x1000039f0 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x44>
1000039f0: e0 07 40 f9 	ldr	x0, [sp, #8]
1000039f4: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
1000039f8: ff c3 00 91 	add	sp, sp, #48
1000039fc: c0 03 5f d6 	ret

0000000100003a00 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv>:
100003a00: ff 83 00 d1 	sub	sp, sp, #32
100003a04: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003a08: fd 43 00 91 	add	x29, sp, #16
100003a0c: e0 07 00 f9 	str	x0, [sp, #8]
100003a10: e0 07 40 f9 	ldr	x0, [sp, #8]
100003a14: 1c 00 00 94 	bl	0x100003a84 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
100003a18: 08 5c 40 39 	ldrb	w8, [x0, #23]
100003a1c: 08 01 79 f2 	ands	x8, x8, #0x80
100003a20: e8 07 9f 1a 	cset	w8, ne
100003a24: 00 01 00 12 	and	w0, w8, #0x1
100003a28: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003a2c: ff 83 00 91 	add	sp, sp, #32
100003a30: c0 03 5f d6 	ret

0000000100003a34 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv>:
100003a34: ff 83 00 d1 	sub	sp, sp, #32
100003a38: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003a3c: fd 43 00 91 	add	x29, sp, #16
100003a40: e0 07 00 f9 	str	x0, [sp, #8]
100003a44: e0 07 40 f9 	ldr	x0, [sp, #8]
100003a48: 0f 00 00 94 	bl	0x100003a84 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
100003a4c: 00 00 40 f9 	ldr	x0, [x0]
100003a50: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003a54: ff 83 00 91 	add	sp, sp, #32
100003a58: c0 03 5f d6 	ret

0000000100003a5c <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv>:
100003a5c: ff 83 00 d1 	sub	sp, sp, #32
100003a60: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003a64: fd 43 00 91 	add	x29, sp, #16
100003a68: e0 07 00 f9 	str	x0, [sp, #8]
100003a6c: e0 07 40 f9 	ldr	x0, [sp, #8]
100003a70: 05 00 00 94 	bl	0x100003a84 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
100003a74: 12 00 00 94 	bl	0x100003abc <__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_>
100003a78: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003a7c: ff 83 00 91 	add	sp, sp, #32
100003a80: c0 03 5f d6 	ret

0000000100003a84 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>:
100003a84: ff 83 00 d1 	sub	sp, sp, #32
100003a88: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003a8c: fd 43 00 91 	add	x29, sp, #16
100003a90: e0 07 00 f9 	str	x0, [sp, #8]
100003a94: e0 07 40 f9 	ldr	x0, [sp, #8]
100003a98: 04 00 00 94 	bl	0x100003aa8 <__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv>
100003a9c: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003aa0: ff 83 00 91 	add	sp, sp, #32
100003aa4: c0 03 5f d6 	ret

0000000100003aa8 <__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv>:
100003aa8: ff 43 00 d1 	sub	sp, sp, #16
100003aac: e0 07 00 f9 	str	x0, [sp, #8]
100003ab0: e0 07 40 f9 	ldr	x0, [sp, #8]
100003ab4: ff 43 00 91 	add	sp, sp, #16
100003ab8: c0 03 5f d6 	ret

0000000100003abc <__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_>:
100003abc: ff 83 00 d1 	sub	sp, sp, #32
100003ac0: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003ac4: fd 43 00 91 	add	x29, sp, #16
100003ac8: e0 07 00 f9 	str	x0, [sp, #8]
100003acc: e0 07 40 f9 	ldr	x0, [sp, #8]
100003ad0: 04 00 00 94 	bl	0x100003ae0 <__ZNSt3__1L9addressofIKcEEPT_RS2_>
100003ad4: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003ad8: ff 83 00 91 	add	sp, sp, #32
100003adc: c0 03 5f d6 	ret

0000000100003ae0 <__ZNSt3__1L9addressofIKcEEPT_RS2_>:
100003ae0: ff 43 00 d1 	sub	sp, sp, #16
100003ae4: e0 07 00 f9 	str	x0, [sp, #8]
100003ae8: e0 07 40 f9 	ldr	x0, [sp, #8]
100003aec: ff 43 00 91 	add	sp, sp, #16
100003af0: c0 03 5f d6 	ret

0000000100003af4 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE>:
100003af4: ff c3 00 d1 	sub	sp, sp, #48
100003af8: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003afc: fd 83 00 91 	add	x29, sp, #32
100003b00: a0 83 1f f8 	stur	x0, [x29, #-8]
100003b04: e1 0b 00 f9 	str	x1, [sp, #16]
100003b08: a8 83 5f f8 	ldur	x8, [x29, #-8]
100003b0c: e8 03 00 f9 	str	x8, [sp]
100003b10: e8 0b 40 f9 	ldr	x8, [sp, #16]
100003b14: 09 01 40 f9 	ldr	x9, [x8]
100003b18: 29 81 5e f8 	ldur	x9, [x9, #-24]
100003b1c: 00 01 09 8b 	add	x0, x8, x9
100003b20: 0a 00 00 94 	bl	0x100003b48 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv>
100003b24: e0 07 00 f9 	str	x0, [sp, #8]
100003b28: 01 00 00 14 	b	0x100003b2c <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE+0x38>
100003b2c: e0 03 40 f9 	ldr	x0, [sp]
100003b30: e8 07 40 f9 	ldr	x8, [sp, #8]
100003b34: 08 00 00 f9 	str	x8, [x0]
100003b38: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003b3c: ff c3 00 91 	add	sp, sp, #48
100003b40: c0 03 5f d6 	ret
100003b44: fe fe ff 97 	bl	0x10000373c <___clang_call_terminate>

0000000100003b48 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv>:
100003b48: ff 83 00 d1 	sub	sp, sp, #32
100003b4c: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003b50: fd 43 00 91 	add	x29, sp, #16
100003b54: e0 07 00 f9 	str	x0, [sp, #8]
100003b58: e0 07 40 f9 	ldr	x0, [sp, #8]
100003b5c: 04 00 00 94 	bl	0x100003b6c <__ZNKSt3__18ios_base5rdbufEv>
100003b60: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003b64: ff 83 00 91 	add	sp, sp, #32
100003b68: c0 03 5f d6 	ret

0000000100003b6c <__ZNKSt3__18ios_base5rdbufEv>:
100003b6c: ff 43 00 d1 	sub	sp, sp, #16
100003b70: e0 07 00 f9 	str	x0, [sp, #8]
100003b74: e8 07 40 f9 	ldr	x8, [sp, #8]
100003b78: 00 15 40 f9 	ldr	x0, [x8, #40]
100003b7c: ff 43 00 91 	add	sp, sp, #16
100003b80: c0 03 5f d6 	ret

0000000100003b84 <__ZNSt3__111char_traitsIcE11eq_int_typeEii>:
100003b84: ff 43 00 d1 	sub	sp, sp, #16
100003b88: e0 0f 00 b9 	str	w0, [sp, #12]
100003b8c: e1 0b 00 b9 	str	w1, [sp, #8]
100003b90: e8 0f 40 b9 	ldr	w8, [sp, #12]
100003b94: e9 0b 40 b9 	ldr	w9, [sp, #8]
100003b98: 08 01 09 6b 	subs	w8, w8, w9
100003b9c: e8 17 9f 1a 	cset	w8, eq
100003ba0: 00 01 00 12 	and	w0, w8, #0x1
100003ba4: ff 43 00 91 	add	sp, sp, #16
100003ba8: c0 03 5f d6 	ret

0000000100003bac <__ZNSt3__111char_traitsIcE3eofEv>:
100003bac: 00 00 80 12 	mov	w0, #-1
100003bb0: c0 03 5f d6 	ret

0000000100003bb4 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc>:
100003bb4: ff 43 01 d1 	sub	sp, sp, #80
100003bb8: fd 7b 04 a9 	stp	x29, x30, [sp, #64]
100003bbc: fd 03 01 91 	add	x29, sp, #64
100003bc0: a0 83 1f f8 	stur	x0, [x29, #-8]
100003bc4: a1 73 1f 38 	sturb	w1, [x29, #-9]
100003bc8: a0 83 5f f8 	ldur	x0, [x29, #-8]
100003bcc: a8 63 00 d1 	sub	x8, x29, #24
100003bd0: e8 07 00 f9 	str	x8, [sp, #8]
100003bd4: 6e 00 00 94 	bl	0x100003d8c <_strlen+0x100003d8c>
100003bd8: e0 07 40 f9 	ldr	x0, [sp, #8]
100003bdc: 17 00 00 94 	bl	0x100003c38 <__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE>
100003be0: e0 0b 00 f9 	str	x0, [sp, #16]
100003be4: 01 00 00 14 	b	0x100003be8 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc+0x34>
100003be8: e0 0b 40 f9 	ldr	x0, [sp, #16]
100003bec: a1 73 df 38 	ldursb	w1, [x29, #-9]
100003bf0: 1d 00 00 94 	bl	0x100003c64 <__ZNKSt3__15ctypeIcE5widenEc>
100003bf4: e0 07 00 b9 	str	w0, [sp, #4]
100003bf8: 01 00 00 14 	b	0x100003bfc <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc+0x48>
100003bfc: a0 63 00 d1 	sub	x0, x29, #24
100003c00: 81 00 00 94 	bl	0x100003e04 <_strlen+0x100003e04>
100003c04: e8 07 40 b9 	ldr	w8, [sp, #4]
100003c08: 00 1d 00 13 	sxtb	w0, w8
100003c0c: fd 7b 44 a9 	ldp	x29, x30, [sp, #64]
100003c10: ff 43 01 91 	add	sp, sp, #80
100003c14: c0 03 5f d6 	ret
100003c18: e8 03 01 aa 	mov	x8, x1
100003c1c: e0 13 00 f9 	str	x0, [sp, #32]
100003c20: e8 1f 00 b9 	str	w8, [sp, #28]
100003c24: a0 63 00 d1 	sub	x0, x29, #24
100003c28: 77 00 00 94 	bl	0x100003e04 <_strlen+0x100003e04>
100003c2c: 01 00 00 14 	b	0x100003c30 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc+0x7c>
100003c30: e0 13 40 f9 	ldr	x0, [sp, #32]
100003c34: 50 00 00 94 	bl	0x100003d74 <_strlen+0x100003d74>

0000000100003c38 <__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE>:
100003c38: ff 83 00 d1 	sub	sp, sp, #32
100003c3c: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003c40: fd 43 00 91 	add	x29, sp, #16
100003c44: e0 07 00 f9 	str	x0, [sp, #8]
100003c48: e0 07 40 f9 	ldr	x0, [sp, #8]
100003c4c: 01 00 00 b0 	adrp	x1, 0x100004000 <__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE+0x18>
100003c50: 21 34 40 f9 	ldr	x1, [x1, #104]
100003c54: 4b 00 00 94 	bl	0x100003d80 <_strlen+0x100003d80>
100003c58: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003c5c: ff 83 00 91 	add	sp, sp, #32
100003c60: c0 03 5f d6 	ret

0000000100003c64 <__ZNKSt3__15ctypeIcE5widenEc>:
100003c64: ff 83 00 d1 	sub	sp, sp, #32
100003c68: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003c6c: fd 43 00 91 	add	x29, sp, #16
100003c70: e0 07 00 f9 	str	x0, [sp, #8]
100003c74: e1 1f 00 39 	strb	w1, [sp, #7]
100003c78: e0 07 40 f9 	ldr	x0, [sp, #8]
100003c7c: e1 1f c0 39 	ldrsb	w1, [sp, #7]
100003c80: 08 00 40 f9 	ldr	x8, [x0]
100003c84: 08 1d 40 f9 	ldr	x8, [x8, #56]
100003c88: 00 01 3f d6 	blr	x8
100003c8c: 00 1c 00 13 	sxtb	w0, w0
100003c90: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003c94: ff 83 00 91 	add	sp, sp, #32
100003c98: c0 03 5f d6 	ret

0000000100003c9c <__ZNSt3__18ios_base8setstateEj>:
100003c9c: ff 83 00 d1 	sub	sp, sp, #32
100003ca0: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003ca4: fd 43 00 91 	add	x29, sp, #16
100003ca8: e0 07 00 f9 	str	x0, [sp, #8]
100003cac: e1 07 00 b9 	str	w1, [sp, #4]
100003cb0: e0 07 40 f9 	ldr	x0, [sp, #8]
100003cb4: 08 20 40 b9 	ldr	w8, [x0, #32]
100003cb8: e9 07 40 b9 	ldr	w9, [sp, #4]
100003cbc: 01 01 09 2a 	orr	w1, w8, w9
100003cc0: 57 00 00 94 	bl	0x100003e1c <_strlen+0x100003e1c>
100003cc4: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003cc8: ff 83 00 91 	add	sp, sp, #32
100003ccc: c0 03 5f d6 	ret

0000000100003cd0 <__ZNKSt3__113__atomic_baseIiLb0EE4loadENS_12memory_orderE>:
100003cd0: ff 83 00 d1 	sub	sp, sp, #32
100003cd4: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003cd8: fd 43 00 91 	add	x29, sp, #16
100003cdc: e0 07 00 f9 	str	x0, [sp, #8]
100003ce0: e1 07 00 b9 	str	w1, [sp, #4]
100003ce4: e0 07 40 f9 	ldr	x0, [sp, #8]
100003ce8: e1 07 40 b9 	ldr	w1, [sp, #4]
100003cec: 04 00 00 94 	bl	0x100003cfc <__ZNSt3__1L17__cxx_atomic_loadIiEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE>
100003cf0: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003cf4: ff 83 00 91 	add	sp, sp, #32
100003cf8: c0 03 5f d6 	ret

0000000100003cfc <__ZNSt3__1L17__cxx_atomic_loadIiEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE>:
100003cfc: ff 83 00 d1 	sub	sp, sp, #32
100003d00: e0 0f 00 f9 	str	x0, [sp, #24]
100003d04: e1 17 00 b9 	str	w1, [sp, #20]
100003d08: e8 0f 40 f9 	ldr	x8, [sp, #24]
100003d0c: e8 03 00 f9 	str	x8, [sp]
100003d10: e8 17 40 b9 	ldr	w8, [sp, #20]
100003d14: e8 0f 00 b9 	str	w8, [sp, #12]
100003d18: 08 05 00 71 	subs	w8, w8, #1
100003d1c: 08 05 00 71 	subs	w8, w8, #1
100003d20: 49 01 00 54 	b.ls	0x100003d48 <__ZNSt3__1L17__cxx_atomic_loadIiEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE+0x4c>
100003d24: 01 00 00 14 	b	0x100003d28 <__ZNSt3__1L17__cxx_atomic_loadIiEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE+0x2c>
100003d28: e8 0f 40 b9 	ldr	w8, [sp, #12]
100003d2c: 08 15 00 71 	subs	w8, w8, #5
100003d30: 40 01 00 54 	b.eq	0x100003d58 <__ZNSt3__1L17__cxx_atomic_loadIiEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE+0x5c>
100003d34: 01 00 00 14 	b	0x100003d38 <__ZNSt3__1L17__cxx_atomic_loadIiEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE+0x3c>
100003d38: e8 03 40 f9 	ldr	x8, [sp]
100003d3c: 08 01 40 b9 	ldr	w8, [x8]
100003d40: e8 13 00 b9 	str	w8, [sp, #16]
100003d44: 09 00 00 14 	b	0x100003d68 <__ZNSt3__1L17__cxx_atomic_loadIiEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE+0x6c>
100003d48: e8 03 40 f9 	ldr	x8, [sp]
100003d4c: 08 fd df 88 	ldar	w8, [x8]
100003d50: e8 13 00 b9 	str	w8, [sp, #16]
100003d54: 05 00 00 14 	b	0x100003d68 <__ZNSt3__1L17__cxx_atomic_loadIiEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE+0x6c>
100003d58: e8 03 40 f9 	ldr	x8, [sp]
100003d5c: 08 fd df 88 	ldar	w8, [x8]
100003d60: e8 13 00 b9 	str	w8, [sp, #16]
100003d64: 01 00 00 14 	b	0x100003d68 <__ZNSt3__1L17__cxx_atomic_loadIiEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE+0x6c>
100003d68: e0 13 40 b9 	ldr	w0, [sp, #16]
100003d6c: ff 83 00 91 	add	sp, sp, #32
100003d70: c0 03 5f d6 	ret

Disassembly of section __TEXT,__stubs:

0000000100003d74 <__stubs>:
100003d74: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x4>
100003d78: 10 02 40 f9 	ldr	x16, [x16]
100003d7c: 00 02 1f d6 	br	x16
100003d80: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x10>
100003d84: 10 06 40 f9 	ldr	x16, [x16, #8]
100003d88: 00 02 1f d6 	br	x16
100003d8c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x1c>
100003d90: 10 0a 40 f9 	ldr	x16, [x16, #16]
100003d94: 00 02 1f d6 	br	x16
100003d98: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x28>
100003d9c: 10 0e 40 f9 	ldr	x16, [x16, #24]
100003da0: 00 02 1f d6 	br	x16
100003da4: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x34>
100003da8: 10 12 40 f9 	ldr	x16, [x16, #32]
100003dac: 00 02 1f d6 	br	x16
100003db0: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x40>
100003db4: 10 16 40 f9 	ldr	x16, [x16, #40]
100003db8: 00 02 1f d6 	br	x16
100003dbc: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x4c>
100003dc0: 10 1a 40 f9 	ldr	x16, [x16, #48]
100003dc4: 00 02 1f d6 	br	x16
100003dc8: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x58>
100003dcc: 10 1e 40 f9 	ldr	x16, [x16, #56]
100003dd0: 00 02 1f d6 	br	x16
100003dd4: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x64>
100003dd8: 10 22 40 f9 	ldr	x16, [x16, #64]
100003ddc: 00 02 1f d6 	br	x16
100003de0: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x70>
100003de4: 10 26 40 f9 	ldr	x16, [x16, #72]
100003de8: 00 02 1f d6 	br	x16
100003dec: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x7c>
100003df0: 10 2a 40 f9 	ldr	x16, [x16, #80]
100003df4: 00 02 1f d6 	br	x16
100003df8: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x88>
100003dfc: 10 2e 40 f9 	ldr	x16, [x16, #88]
100003e00: 00 02 1f d6 	br	x16
100003e04: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x94>
100003e08: 10 3a 40 f9 	ldr	x16, [x16, #112]
100003e0c: 00 02 1f d6 	br	x16
100003e10: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xa0>
100003e14: 10 3e 40 f9 	ldr	x16, [x16, #120]
100003e18: 00 02 1f d6 	br	x16
100003e1c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xac>
100003e20: 10 42 40 f9 	ldr	x16, [x16, #128]
100003e24: 00 02 1f d6 	br	x16
100003e28: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xb8>
100003e2c: 10 46 40 f9 	ldr	x16, [x16, #136]
100003e30: 00 02 1f d6 	br	x16
100003e34: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xc4>
100003e38: 10 4a 40 f9 	ldr	x16, [x16, #144]
100003e3c: 00 02 1f d6 	br	x16
100003e40: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xd0>
100003e44: 10 52 40 f9 	ldr	x16, [x16, #160]
100003e48: 00 02 1f d6 	br	x16
100003e4c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xdc>
100003e50: 10 56 40 f9 	ldr	x16, [x16, #168]
100003e54: 00 02 1f d6 	br	x16
100003e58: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xe8>
100003e5c: 10 5e 40 f9 	ldr	x16, [x16, #184]
100003e60: 00 02 1f d6 	br	x16
100003e64: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xf4>
100003e68: 10 66 40 f9 	ldr	x16, [x16, #200]
100003e6c: 00 02 1f d6 	br	x16
100003e70: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x100>
100003e74: 10 6a 40 f9 	ldr	x16, [x16, #208]
100003e78: 00 02 1f d6 	br	x16
100003e7c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x10c>
100003e80: 10 6e 40 f9 	ldr	x16, [x16, #216]
100003e84: 00 02 1f d6 	br	x16
