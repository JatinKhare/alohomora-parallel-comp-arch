
mcs_tas_clang.o:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000100002b40 <__Z8print_llP5qnode>:
100002b40: ff 03 01 d1 	sub	sp, sp, #64
100002b44: fd 7b 03 a9 	stp	x29, x30, [sp, #48]
100002b48: fd c3 00 91 	add	x29, sp, #48
100002b4c: a0 83 1f f8 	stur	x0, [x29, #-8]
100002b50: bf 43 1f b8 	stur	wzr, [x29, #-12]
100002b54: 01 00 00 14 	b	0x100002b58 <__Z8print_llP5qnode+0x18>
100002b58: a8 83 5f f8 	ldur	x8, [x29, #-8]
100002b5c: 48 04 00 b4 	cbz	x8, 0x100002be4 <__Z8print_llP5qnode+0xa4>
100002b60: 01 00 00 14 	b	0x100002b64 <__Z8print_llP5qnode+0x24>
100002b64: 00 00 00 d0 	adrp	x0, 0x100004000 <__Z8print_llP5qnode+0x2c>
100002b68: 00 34 40 f9 	ldr	x0, [x0, #104]
100002b6c: 01 00 00 b0 	adrp	x1, 0x100003000 <__Z8print_llP5qnode+0x30>
100002b70: 21 a0 3a 91 	add	x1, x1, #3752
100002b74: e1 0b 00 f9 	str	x1, [sp, #16]
100002b78: 8b 04 00 94 	bl	0x100003da4 <_strlen+0x100003da4>
100002b7c: e0 07 00 f9 	str	x0, [sp, #8]
100002b80: 39 00 00 94 	bl	0x100002c64 <__ZNSt3__111this_threadL6get_idEv>
100002b84: e8 03 00 aa 	mov	x8, x0
100002b88: e0 07 40 f9 	ldr	x0, [sp, #8]
100002b8c: e8 0f 00 f9 	str	x8, [sp, #24]
100002b90: e1 0f 40 f9 	ldr	x1, [sp, #24]
100002b94: 29 00 00 94 	bl	0x100002c38 <__ZNSt3__1lsIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_11__thread_idE>
100002b98: 01 00 00 b0 	adrp	x1, 0x100003000 <__Z8print_llP5qnode+0x5c>
100002b9c: 21 a8 3a 91 	add	x1, x1, #3754
100002ba0: 81 04 00 94 	bl	0x100003da4 <_strlen+0x100003da4>
100002ba4: a1 83 5f f8 	ldur	x1, [x29, #-8]
100002ba8: 6d 04 00 94 	bl	0x100003d5c <_strlen+0x100003d5c>
100002bac: e1 0b 40 f9 	ldr	x1, [sp, #16]
100002bb0: 7d 04 00 94 	bl	0x100003da4 <_strlen+0x100003da4>
100002bb4: a1 43 5f b8 	ldur	w1, [x29, #-12]
100002bb8: 6c 04 00 94 	bl	0x100003d68 <_strlen+0x100003d68>
100002bbc: 01 00 00 b0 	adrp	x1, 0x100003000 <__Z8print_llP5qnode+0x80>
100002bc0: 21 b0 3a 91 	add	x1, x1, #3756
100002bc4: 78 04 00 94 	bl	0x100003da4 <_strlen+0x100003da4>
100002bc8: a8 83 5f f8 	ldur	x8, [x29, #-8]
100002bcc: 08 01 40 f9 	ldr	x8, [x8]
100002bd0: a8 83 1f f8 	stur	x8, [x29, #-8]
100002bd4: a8 43 5f b8 	ldur	w8, [x29, #-12]
100002bd8: 08 05 00 11 	add	w8, w8, #1
100002bdc: a8 43 1f b8 	stur	w8, [x29, #-12]
100002be0: de ff ff 17 	b	0x100002b58 <__Z8print_llP5qnode+0x18>
100002be4: fd 7b 43 a9 	ldp	x29, x30, [sp, #48]
100002be8: ff 03 01 91 	add	sp, sp, #64
100002bec: c0 03 5f d6 	ret

0000000100002bf0 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>:
100002bf0: ff c3 00 d1 	sub	sp, sp, #48
100002bf4: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100002bf8: fd 83 00 91 	add	x29, sp, #32
100002bfc: a0 83 1f f8 	stur	x0, [x29, #-8]
100002c00: e1 0b 00 f9 	str	x1, [sp, #16]
100002c04: a8 83 5f f8 	ldur	x8, [x29, #-8]
100002c08: e8 07 00 f9 	str	x8, [sp, #8]
100002c0c: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002c10: e8 03 00 f9 	str	x8, [sp]
100002c14: e0 0b 40 f9 	ldr	x0, [sp, #16]
100002c18: 42 04 00 94 	bl	0x100003d20 <_strlen+0x100003d20>
100002c1c: e1 03 40 f9 	ldr	x1, [sp]
100002c20: e2 03 00 aa 	mov	x2, x0
100002c24: e0 07 40 f9 	ldr	x0, [sp, #8]
100002c28: 53 04 00 94 	bl	0x100003d74 <_strlen+0x100003d74>
100002c2c: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100002c30: ff c3 00 91 	add	sp, sp, #48
100002c34: c0 03 5f d6 	ret

0000000100002c38 <__ZNSt3__1lsIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_11__thread_idE>:
100002c38: ff 83 00 d1 	sub	sp, sp, #32
100002c3c: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100002c40: fd 43 00 91 	add	x29, sp, #16
100002c44: e1 07 00 f9 	str	x1, [sp, #8]
100002c48: e0 03 00 f9 	str	x0, [sp]
100002c4c: e0 03 40 f9 	ldr	x0, [sp]
100002c50: e1 07 40 f9 	ldr	x1, [sp, #8]
100002c54: 42 04 00 94 	bl	0x100003d5c <_strlen+0x100003d5c>
100002c58: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100002c5c: ff 83 00 91 	add	sp, sp, #32
100002c60: c0 03 5f d6 	ret

0000000100002c64 <__ZNSt3__111this_threadL6get_idEv>:
100002c64: ff 83 00 d1 	sub	sp, sp, #32
100002c68: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100002c6c: fd 43 00 91 	add	x29, sp, #16
100002c70: 00 01 00 94 	bl	0x100003070 <__ZNSt3__1L30__libcpp_thread_get_current_idEv>
100002c74: e0 03 00 f9 	str	x0, [sp]
100002c78: 01 00 00 14 	b	0x100002c7c <__ZNSt3__111this_threadL6get_idEv+0x18>
100002c7c: e1 03 40 f9 	ldr	x1, [sp]
100002c80: e0 23 00 91 	add	x0, sp, #8
100002c84: 09 01 00 94 	bl	0x1000030a8 <__ZNSt3__111__thread_idC1EP17_opaque_pthread_t>
100002c88: 01 00 00 14 	b	0x100002c8c <__ZNSt3__111this_threadL6get_idEv+0x28>
100002c8c: e0 07 40 f9 	ldr	x0, [sp, #8]
100002c90: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100002c94: ff 83 00 91 	add	sp, sp, #32
100002c98: c0 03 5f d6 	ret
100002c9c: 00 01 00 94 	bl	0x10000309c <___clang_call_terminate>

0000000100002ca0 <__Z7my_lockP5qnodeS0_>:
100002ca0: ff c3 00 d1 	sub	sp, sp, #48
100002ca4: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100002ca8: fd 83 00 91 	add	x29, sp, #32
100002cac: a0 83 1f f8 	stur	x0, [x29, #-8]
100002cb0: e1 0b 00 f9 	str	x1, [sp, #16]
100002cb4: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002cb8: 1f 01 00 f9 	str	xzr, [x8]
100002cbc: 01 00 00 14 	b	0x100002cc0 <__Z7my_lockP5qnodeS0_+0x20>
100002cc0: 20 00 00 d0 	adrp	x0, 0x100008000 <__Z7my_lockP5qnodeS0_+0x38>
100002cc4: 00 00 03 91 	add	x0, x0, #192
100002cc8: 21 00 80 52 	mov	w1, #1
100002ccc: a2 00 80 52 	mov	w2, #5
100002cd0: 2a 00 00 94 	bl	0x100002d78 <__ZNSt3__113__atomic_baseIiLb0EE8exchangeEiNS_12memory_orderE>
100002cd4: 60 00 00 34 	cbz	w0, 0x100002ce0 <__Z7my_lockP5qnodeS0_+0x40>
100002cd8: 01 00 00 14 	b	0x100002cdc <__Z7my_lockP5qnodeS0_+0x3c>
100002cdc: f9 ff ff 17 	b	0x100002cc0 <__Z7my_lockP5qnodeS0_+0x20>
100002ce0: 00 02 80 d2 	mov	x0, #16
100002ce4: 36 04 00 94 	bl	0x100003dbc <_strlen+0x100003dbc>
100002ce8: e0 07 00 f9 	str	x0, [sp, #8]
100002cec: a8 83 5f f8 	ldur	x8, [x29, #-8]
100002cf0: e8 07 00 f9 	str	x8, [sp, #8]
100002cf4: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002cf8: a8 83 1f f8 	stur	x8, [x29, #-8]
100002cfc: 20 00 00 d0 	adrp	x0, 0x100008000 <__Z7my_lockP5qnodeS0_+0x74>
100002d00: 00 00 03 91 	add	x0, x0, #192
100002d04: 01 00 80 52 	mov	w1, #0
100002d08: a2 00 80 52 	mov	w2, #5
100002d0c: 1b 00 00 94 	bl	0x100002d78 <__ZNSt3__113__atomic_baseIiLb0EE8exchangeEiNS_12memory_orderE>
100002d10: e8 07 40 f9 	ldr	x8, [sp, #8]
100002d14: 88 02 00 b4 	cbz	x8, 0x100002d64 <__Z7my_lockP5qnodeS0_+0xc4>
100002d18: 01 00 00 14 	b	0x100002d1c <__Z7my_lockP5qnodeS0_+0x7c>
100002d1c: e9 0b 40 f9 	ldr	x9, [sp, #16]
100002d20: 28 00 80 52 	mov	w8, #1
100002d24: 28 21 00 39 	strb	w8, [x9, #8]
100002d28: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002d2c: e9 07 40 f9 	ldr	x9, [sp, #8]
100002d30: 28 01 00 f9 	str	x8, [x9]
100002d34: 01 00 00 14 	b	0x100002d38 <__Z7my_lockP5qnodeS0_+0x98>
100002d38: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002d3c: 08 21 40 39 	ldrb	w8, [x8, #8]
100002d40: 08 01 00 36 	tbz	w8, #0, 0x100002d60 <__Z7my_lockP5qnodeS0_+0xc0>
100002d44: 01 00 00 14 	b	0x100002d48 <__Z7my_lockP5qnodeS0_+0xa8>
100002d48: 00 00 00 d0 	adrp	x0, 0x100004000 <__Z7my_lockP5qnodeS0_+0xb0>
100002d4c: 00 34 40 f9 	ldr	x0, [x0, #104]
100002d50: 01 00 00 b0 	adrp	x1, 0x100003000 <__Z7my_lockP5qnodeS0_+0xb4>
100002d54: 21 c8 3a 91 	add	x1, x1, #3762
100002d58: 13 04 00 94 	bl	0x100003da4 <_strlen+0x100003da4>
100002d5c: f7 ff ff 17 	b	0x100002d38 <__Z7my_lockP5qnodeS0_+0x98>
100002d60: 01 00 00 14 	b	0x100002d64 <__Z7my_lockP5qnodeS0_+0xc4>
100002d64: e0 07 40 f9 	ldr	x0, [sp, #8]
100002d68: 21 04 00 94 	bl	0x100003dec <_strlen+0x100003dec>
100002d6c: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100002d70: ff c3 00 91 	add	sp, sp, #48
100002d74: c0 03 5f d6 	ret

0000000100002d78 <__ZNSt3__113__atomic_baseIiLb0EE8exchangeEiNS_12memory_orderE>:
100002d78: ff 83 00 d1 	sub	sp, sp, #32
100002d7c: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100002d80: fd 43 00 91 	add	x29, sp, #16
100002d84: e0 07 00 f9 	str	x0, [sp, #8]
100002d88: e1 07 00 b9 	str	w1, [sp, #4]
100002d8c: e2 03 00 b9 	str	w2, [sp]
100002d90: e0 07 40 f9 	ldr	x0, [sp, #8]
100002d94: e1 07 40 b9 	ldr	w1, [sp, #4]
100002d98: e2 03 40 b9 	ldr	w2, [sp]
100002d9c: 8f 03 00 94 	bl	0x100003bd8 <__ZNSt3__1L21__cxx_atomic_exchangeIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE>
100002da0: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100002da4: ff 83 00 91 	add	sp, sp, #32
100002da8: c0 03 5f d6 	ret

0000000100002dac <__Z9my_unlockP5qnodeS0_>:
100002dac: ff 83 00 d1 	sub	sp, sp, #32
100002db0: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100002db4: fd 43 00 91 	add	x29, sp, #16
100002db8: e0 07 00 f9 	str	x0, [sp, #8]
100002dbc: e1 03 00 f9 	str	x1, [sp]
100002dc0: e8 03 40 f9 	ldr	x8, [sp]
100002dc4: 08 01 40 f9 	ldr	x8, [x8]
100002dc8: 88 03 00 b5 	cbnz	x8, 0x100002e38 <__Z9my_unlockP5qnodeS0_+0x8c>
100002dcc: 01 00 00 14 	b	0x100002dd0 <__Z9my_unlockP5qnodeS0_+0x24>
100002dd0: 01 00 00 14 	b	0x100002dd4 <__Z9my_unlockP5qnodeS0_+0x28>
100002dd4: 20 00 00 d0 	adrp	x0, 0x100008000 <__Z9my_unlockP5qnodeS0_+0x40>
100002dd8: 00 10 03 91 	add	x0, x0, #196
100002ddc: 21 00 80 52 	mov	w1, #1
100002de0: a2 00 80 52 	mov	w2, #5
100002de4: e5 ff ff 97 	bl	0x100002d78 <__ZNSt3__113__atomic_baseIiLb0EE8exchangeEiNS_12memory_orderE>
100002de8: 60 00 00 34 	cbz	w0, 0x100002df4 <__Z9my_unlockP5qnodeS0_+0x48>
100002dec: 01 00 00 14 	b	0x100002df0 <__Z9my_unlockP5qnodeS0_+0x44>
100002df0: f9 ff ff 17 	b	0x100002dd4 <__Z9my_unlockP5qnodeS0_+0x28>
100002df4: e8 07 40 f9 	ldr	x8, [sp, #8]
100002df8: e9 03 40 f9 	ldr	x9, [sp]
100002dfc: 08 01 09 eb 	subs	x8, x8, x9
100002e00: 81 00 00 54 	b.ne	0x100002e10 <__Z9my_unlockP5qnodeS0_+0x64>
100002e04: 01 00 00 14 	b	0x100002e08 <__Z9my_unlockP5qnodeS0_+0x5c>
100002e08: ff 07 00 f9 	str	xzr, [sp, #8]
100002e0c: 01 00 00 14 	b	0x100002e10 <__Z9my_unlockP5qnodeS0_+0x64>
100002e10: 20 00 00 d0 	adrp	x0, 0x100008000 <__Z9my_unlockP5qnodeS0_+0x7c>
100002e14: 00 10 03 91 	add	x0, x0, #196
100002e18: 01 00 80 52 	mov	w1, #0
100002e1c: a2 00 80 52 	mov	w2, #5
100002e20: d6 ff ff 97 	bl	0x100002d78 <__ZNSt3__113__atomic_baseIiLb0EE8exchangeEiNS_12memory_orderE>
100002e24: e8 07 40 f9 	ldr	x8, [sp, #8]
100002e28: 68 00 00 b5 	cbnz	x8, 0x100002e34 <__Z9my_unlockP5qnodeS0_+0x88>
100002e2c: 01 00 00 14 	b	0x100002e30 <__Z9my_unlockP5qnodeS0_+0x84>
100002e30: 0c 00 00 14 	b	0x100002e60 <__Z9my_unlockP5qnodeS0_+0xb4>
100002e34: 01 00 00 14 	b	0x100002e38 <__Z9my_unlockP5qnodeS0_+0x8c>
100002e38: 01 00 00 14 	b	0x100002e3c <__Z9my_unlockP5qnodeS0_+0x90>
100002e3c: e8 03 40 f9 	ldr	x8, [sp]
100002e40: 08 01 40 f9 	ldr	x8, [x8]
100002e44: 68 00 00 b5 	cbnz	x8, 0x100002e50 <__Z9my_unlockP5qnodeS0_+0xa4>
100002e48: 01 00 00 14 	b	0x100002e4c <__Z9my_unlockP5qnodeS0_+0xa0>
100002e4c: fc ff ff 17 	b	0x100002e3c <__Z9my_unlockP5qnodeS0_+0x90>
100002e50: e8 03 40 f9 	ldr	x8, [sp]
100002e54: 08 01 40 f9 	ldr	x8, [x8]
100002e58: 1f 21 00 39 	strb	wzr, [x8, #8]
100002e5c: 01 00 00 14 	b	0x100002e60 <__Z9my_unlockP5qnodeS0_+0xb4>
100002e60: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100002e64: ff 83 00 91 	add	sp, sp, #32
100002e68: c0 03 5f d6 	ret

0000000100002e6c <__Z12lock_examplePv>:
100002e6c: ff c3 00 d1 	sub	sp, sp, #48
100002e70: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100002e74: fd 83 00 91 	add	x29, sp, #32
100002e78: a0 83 1f f8 	stur	x0, [x29, #-8]
100002e7c: 00 02 80 d2 	mov	x0, #16
100002e80: cf 03 00 94 	bl	0x100003dbc <_strlen+0x100003dbc>
100002e84: e0 0b 00 f9 	str	x0, [sp, #16]
100002e88: ff 0f 00 b9 	str	wzr, [sp, #12]
100002e8c: 01 00 00 14 	b	0x100002e90 <__Z12lock_examplePv+0x24>
100002e90: e8 0f 40 b9 	ldr	w8, [sp, #12]
100002e94: 08 41 1f 71 	subs	w8, w8, #2000
100002e98: 8a 02 00 54 	b.ge	0x100002ee8 <__Z12lock_examplePv+0x7c>
100002e9c: 01 00 00 14 	b	0x100002ea0 <__Z12lock_examplePv+0x34>
100002ea0: 28 00 00 d0 	adrp	x8, 0x100008000 <__Z12lock_examplePv+0x4c>
100002ea4: e8 03 00 f9 	str	x8, [sp]
100002ea8: 00 69 40 f9 	ldr	x0, [x8, #208]
100002eac: e1 0b 40 f9 	ldr	x1, [sp, #16]
100002eb0: 7c ff ff 97 	bl	0x100002ca0 <__Z7my_lockP5qnodeS0_>
100002eb4: e8 03 40 f9 	ldr	x8, [sp]
100002eb8: 2a 00 00 d0 	adrp	x10, 0x100008000 <__Z12lock_examplePv+0x64>
100002ebc: 49 c9 40 b9 	ldr	w9, [x10, #200]
100002ec0: 29 05 00 11 	add	w9, w9, #1
100002ec4: 49 c9 00 b9 	str	w9, [x10, #200]
100002ec8: 00 69 40 f9 	ldr	x0, [x8, #208]
100002ecc: e1 0b 40 f9 	ldr	x1, [sp, #16]
100002ed0: b7 ff ff 97 	bl	0x100002dac <__Z9my_unlockP5qnodeS0_>
100002ed4: 01 00 00 14 	b	0x100002ed8 <__Z12lock_examplePv+0x6c>
100002ed8: e8 0f 40 b9 	ldr	w8, [sp, #12]
100002edc: 08 05 00 11 	add	w8, w8, #1
100002ee0: e8 0f 00 b9 	str	w8, [sp, #12]
100002ee4: eb ff ff 17 	b	0x100002e90 <__Z12lock_examplePv+0x24>
100002ee8: e0 0b 40 f9 	ldr	x0, [sp, #16]
100002eec: c0 03 00 94 	bl	0x100003dec <_strlen+0x100003dec>
100002ef0: 00 00 80 d2 	mov	x0, #0
100002ef4: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100002ef8: ff c3 00 91 	add	sp, sp, #48
100002efc: c0 03 5f d6 	ret

0000000100002f00 <_main>:
100002f00: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
100002f04: fd 03 00 91 	mov	x29, sp
100002f08: ff 03 01 d1 	sub	sp, sp, #64
100002f0c: 08 00 00 d0 	adrp	x8, 0x100004000 <_main+0x14>
100002f10: 08 69 40 f9 	ldr	x8, [x8, #208]
100002f14: 08 01 40 f9 	ldr	x8, [x8]
100002f18: a8 83 1f f8 	stur	x8, [x29, #-8]
100002f1c: bf 43 1f b8 	stur	wzr, [x29, #-12]
100002f20: 28 00 00 d0 	adrp	x8, 0x100008000 <_main+0x38>
100002f24: 1f 69 00 f9 	str	xzr, [x8, #208]
100002f28: 88 0c 80 52 	mov	w8, #100
100002f2c: a8 03 1f b8 	stur	w8, [x29, #-16]
100002f30: a8 03 5f b8 	ldur	w8, [x29, #-16]
100002f34: e9 03 00 91 	mov	x9, sp
100002f38: a9 83 1e f8 	stur	x9, [x29, #-24]
100002f3c: 09 f1 7d d3 	lsl	x9, x8, #3
100002f40: 29 3d 00 91 	add	x9, x9, #15
100002f44: 29 ed 7c 92 	and	x9, x9, #0xfffffffffffffff0
100002f48: a9 83 1c f8 	stur	x9, [x29, #-56]
100002f4c: 10 00 00 d0 	adrp	x16, 0x100004000 <_main+0x54>
100002f50: 10 56 40 f9 	ldr	x16, [x16, #168]
100002f54: 00 02 3f d6 	blr	x16
100002f58: aa 83 5c f8 	ldur	x10, [x29, #-56]
100002f5c: e9 03 00 91 	mov	x9, sp
100002f60: 29 01 0a eb 	subs	x9, x9, x10
100002f64: 3f 01 00 91 	mov	sp, x9
100002f68: a9 03 1d f8 	stur	x9, [x29, #-48]
100002f6c: a8 03 1e f8 	stur	x8, [x29, #-32]
100002f70: bf c3 1d b8 	stur	wzr, [x29, #-36]
100002f74: 01 00 00 14 	b	0x100002f78 <_main+0x78>
100002f78: a8 c3 5d b8 	ldur	w8, [x29, #-36]
100002f7c: a9 03 5f b8 	ldur	w9, [x29, #-16]
100002f80: 08 01 09 6b 	subs	w8, w8, w9
100002f84: ea 01 00 54 	b.ge	0x100002fc0 <_main+0xc0>
100002f88: 01 00 00 14 	b	0x100002f8c <_main+0x8c>
100002f8c: a8 03 5d f8 	ldur	x8, [x29, #-48]
100002f90: a9 c3 9d b8 	ldursw	x9, [x29, #-36]
100002f94: 00 0d 09 8b 	add	x0, x8, x9, lsl #3
100002f98: 03 00 80 d2 	mov	x3, #0
100002f9c: e1 03 03 aa 	mov	x1, x3
100002fa0: 02 00 00 90 	adrp	x2, 0x100002000 <_main+0xa0>
100002fa4: 42 b0 39 91 	add	x2, x2, #3692
100002fa8: 94 03 00 94 	bl	0x100003df8 <_strlen+0x100003df8>
100002fac: 01 00 00 14 	b	0x100002fb0 <_main+0xb0>
100002fb0: a8 c3 5d b8 	ldur	w8, [x29, #-36]
100002fb4: 08 05 00 11 	add	w8, w8, #1
100002fb8: a8 c3 1d b8 	stur	w8, [x29, #-36]
100002fbc: ef ff ff 17 	b	0x100002f78 <_main+0x78>
100002fc0: bf 83 1d b8 	stur	wzr, [x29, #-40]
100002fc4: 01 00 00 14 	b	0x100002fc8 <_main+0xc8>
100002fc8: a8 83 5d b8 	ldur	w8, [x29, #-40]
100002fcc: a9 03 5f b8 	ldur	w9, [x29, #-16]
100002fd0: 08 01 09 6b 	subs	w8, w8, w9
100002fd4: 8a 01 00 54 	b.ge	0x100003004 <_main+0x104>
100002fd8: 01 00 00 14 	b	0x100002fdc <_main+0xdc>
100002fdc: a8 03 5d f8 	ldur	x8, [x29, #-48]
100002fe0: a9 83 9d b8 	ldursw	x9, [x29, #-40]
100002fe4: 00 79 69 f8 	ldr	x0, [x8, x9, lsl #3]
100002fe8: 01 00 80 d2 	mov	x1, #0
100002fec: 86 03 00 94 	bl	0x100003e04 <_strlen+0x100003e04>
100002ff0: 01 00 00 14 	b	0x100002ff4 <_main+0xf4>
100002ff4: a8 83 5d b8 	ldur	w8, [x29, #-40]
100002ff8: 08 05 00 11 	add	w8, w8, #1
100002ffc: a8 83 1d b8 	stur	w8, [x29, #-40]
100003000: f2 ff ff 17 	b	0x100002fc8 <_main+0xc8>
100003004: 00 00 00 b0 	adrp	x0, 0x100004000 <_main+0x108>
100003008: 00 34 40 f9 	ldr	x0, [x0, #104]
10000300c: 01 00 00 90 	adrp	x1, 0x100003000 <_main+0x10c>
100003010: 21 7c 3b 91 	add	x1, x1, #3807
100003014: 64 03 00 94 	bl	0x100003da4 <_strlen+0x100003da4>
100003018: 28 00 00 b0 	adrp	x8, 0x100008000 <_main+0x12c>
10000301c: 01 c9 40 b9 	ldr	w1, [x8, #200]
100003020: 52 03 00 94 	bl	0x100003d68 <_strlen+0x100003d68>
100003024: 01 00 00 90 	adrp	x1, 0x100003000 <_main+0x124>
100003028: 21 a8 3b 91 	add	x1, x1, #3818
10000302c: 5e 03 00 94 	bl	0x100003da4 <_strlen+0x100003da4>
100003030: a8 83 5e f8 	ldur	x8, [x29, #-24]
100003034: 1f 01 00 91 	mov	sp, x8
100003038: a8 43 5f b8 	ldur	w8, [x29, #-12]
10000303c: a8 43 1c b8 	stur	w8, [x29, #-60]
100003040: a9 83 5f f8 	ldur	x9, [x29, #-8]
100003044: 08 00 00 b0 	adrp	x8, 0x100004000 <_main+0x148>
100003048: 08 69 40 f9 	ldr	x8, [x8, #208]
10000304c: 08 01 40 f9 	ldr	x8, [x8]
100003050: 08 01 09 eb 	subs	x8, x8, x9
100003054: 60 00 00 54 	b.eq	0x100003060 <_main+0x160>
100003058: 01 00 00 14 	b	0x10000305c <_main+0x15c>
10000305c: 61 03 00 94 	bl	0x100003de0 <_strlen+0x100003de0>
100003060: a0 43 5c b8 	ldur	w0, [x29, #-60]
100003064: bf 03 00 91 	mov	sp, x29
100003068: fd 7b c1 a8 	ldp	x29, x30, [sp], #16
10000306c: c0 03 5f d6 	ret

0000000100003070 <__ZNSt3__1L30__libcpp_thread_get_current_idEv>:
100003070: ff 83 00 d1 	sub	sp, sp, #32
100003074: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003078: fd 43 00 91 	add	x29, sp, #16
10000307c: 65 03 00 94 	bl	0x100003e10 <_strlen+0x100003e10>
100003080: e8 03 00 aa 	mov	x8, x0
100003084: e0 23 00 91 	add	x0, sp, #8
100003088: e8 07 00 f9 	str	x8, [sp, #8]
10000308c: 14 00 00 94 	bl	0x1000030dc <__ZNSt3__1L22__libcpp_thread_get_idEPKP17_opaque_pthread_t>
100003090: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003094: ff 83 00 91 	add	sp, sp, #32
100003098: c0 03 5f d6 	ret

000000010000309c <___clang_call_terminate>:
10000309c: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
1000030a0: 4a 03 00 94 	bl	0x100003dc8 <_strlen+0x100003dc8>
1000030a4: 43 03 00 94 	bl	0x100003db0 <_strlen+0x100003db0>

00000001000030a8 <__ZNSt3__111__thread_idC1EP17_opaque_pthread_t>:
1000030a8: ff c3 00 d1 	sub	sp, sp, #48
1000030ac: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
1000030b0: fd 83 00 91 	add	x29, sp, #32
1000030b4: a0 83 1f f8 	stur	x0, [x29, #-8]
1000030b8: e1 0b 00 f9 	str	x1, [sp, #16]
1000030bc: a0 83 5f f8 	ldur	x0, [x29, #-8]
1000030c0: e0 07 00 f9 	str	x0, [sp, #8]
1000030c4: e1 0b 40 f9 	ldr	x1, [sp, #16]
1000030c8: 0b 00 00 94 	bl	0x1000030f4 <__ZNSt3__111__thread_idC2EP17_opaque_pthread_t>
1000030cc: e0 07 40 f9 	ldr	x0, [sp, #8]
1000030d0: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
1000030d4: ff c3 00 91 	add	sp, sp, #48
1000030d8: c0 03 5f d6 	ret

00000001000030dc <__ZNSt3__1L22__libcpp_thread_get_idEPKP17_opaque_pthread_t>:
1000030dc: ff 43 00 d1 	sub	sp, sp, #16
1000030e0: e0 07 00 f9 	str	x0, [sp, #8]
1000030e4: e8 07 40 f9 	ldr	x8, [sp, #8]
1000030e8: 00 01 40 f9 	ldr	x0, [x8]
1000030ec: ff 43 00 91 	add	sp, sp, #16
1000030f0: c0 03 5f d6 	ret

00000001000030f4 <__ZNSt3__111__thread_idC2EP17_opaque_pthread_t>:
1000030f4: ff 43 00 d1 	sub	sp, sp, #16
1000030f8: e0 07 00 f9 	str	x0, [sp, #8]
1000030fc: e1 03 00 f9 	str	x1, [sp]
100003100: e0 07 40 f9 	ldr	x0, [sp, #8]
100003104: e8 03 40 f9 	ldr	x8, [sp]
100003108: 08 00 00 f9 	str	x8, [x0]
10000310c: ff 43 00 91 	add	sp, sp, #16
100003110: c0 03 5f d6 	ret

0000000100003114 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>:
100003114: ff 83 02 d1 	sub	sp, sp, #160
100003118: fd 7b 09 a9 	stp	x29, x30, [sp, #144]
10000311c: fd 43 02 91 	add	x29, sp, #144
100003120: a0 83 1f f8 	stur	x0, [x29, #-8]
100003124: a1 03 1f f8 	stur	x1, [x29, #-16]
100003128: a2 83 1e f8 	stur	x2, [x29, #-24]
10000312c: a1 83 5f f8 	ldur	x1, [x29, #-8]
100003130: a0 a3 00 d1 	sub	x0, x29, #40
100003134: 04 03 00 94 	bl	0x100003d44 <_strlen+0x100003d44>
100003138: 01 00 00 14 	b	0x10000313c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x28>
10000313c: a0 a3 00 d1 	sub	x0, x29, #40
100003140: 78 00 00 94 	bl	0x100003320 <__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv>
100003144: e0 47 00 b9 	str	w0, [sp, #68]
100003148: 01 00 00 14 	b	0x10000314c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x38>
10000314c: e8 47 40 b9 	ldr	w8, [sp, #68]
100003150: e8 0b 00 36 	tbz	w8, #0, 0x1000032cc <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b8>
100003154: 01 00 00 14 	b	0x100003158 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x44>
100003158: a1 83 5f f8 	ldur	x1, [x29, #-8]
10000315c: e0 23 01 91 	add	x0, sp, #72
100003160: fc 00 00 94 	bl	0x100003550 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE>
100003164: a8 03 5f f8 	ldur	x8, [x29, #-16]
100003168: e8 1f 00 f9 	str	x8, [sp, #56]
10000316c: a8 83 5f f8 	ldur	x8, [x29, #-8]
100003170: 09 01 40 f9 	ldr	x9, [x8]
100003174: 29 81 5e f8 	ldur	x9, [x9, #-24]
100003178: 00 01 09 8b 	add	x0, x8, x9
10000317c: 02 01 00 94 	bl	0x100003584 <__ZNKSt3__18ios_base5flagsEv>
100003180: e0 43 00 b9 	str	w0, [sp, #64]
100003184: 01 00 00 14 	b	0x100003188 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x74>
100003188: e8 43 40 b9 	ldr	w8, [sp, #64]
10000318c: 09 16 80 52 	mov	w9, #176
100003190: 08 01 09 0a 	and	w8, w8, w9
100003194: 08 81 00 71 	subs	w8, w8, #32
100003198: e1 00 00 54 	b.ne	0x1000031b4 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xa0>
10000319c: 01 00 00 14 	b	0x1000031a0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x8c>
1000031a0: a8 03 5f f8 	ldur	x8, [x29, #-16]
1000031a4: a9 83 5e f8 	ldur	x9, [x29, #-24]
1000031a8: 08 01 09 8b 	add	x8, x8, x9
1000031ac: e8 1b 00 f9 	str	x8, [sp, #48]
1000031b0: 04 00 00 14 	b	0x1000031c0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xac>
1000031b4: a8 03 5f f8 	ldur	x8, [x29, #-16]
1000031b8: e8 1b 00 f9 	str	x8, [sp, #48]
1000031bc: 01 00 00 14 	b	0x1000031c0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xac>
1000031c0: e8 1b 40 f9 	ldr	x8, [sp, #48]
1000031c4: e8 0b 00 f9 	str	x8, [sp, #16]
1000031c8: a8 03 5f f8 	ldur	x8, [x29, #-16]
1000031cc: a9 83 5e f8 	ldur	x9, [x29, #-24]
1000031d0: 08 01 09 8b 	add	x8, x8, x9
1000031d4: e8 0f 00 f9 	str	x8, [sp, #24]
1000031d8: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000031dc: 09 01 40 f9 	ldr	x9, [x8]
1000031e0: 29 81 5e f8 	ldur	x9, [x9, #-24]
1000031e4: 08 01 09 8b 	add	x8, x8, x9
1000031e8: e8 13 00 f9 	str	x8, [sp, #32]
1000031ec: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000031f0: 09 01 40 f9 	ldr	x9, [x8]
1000031f4: 29 81 5e f8 	ldur	x9, [x9, #-24]
1000031f8: 00 01 09 8b 	add	x0, x8, x9
1000031fc: e8 00 00 94 	bl	0x10000359c <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv>
100003200: e0 2f 00 b9 	str	w0, [sp, #44]
100003204: 01 00 00 14 	b	0x100003208 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xf4>
100003208: e8 2f 40 b9 	ldr	w8, [sp, #44]
10000320c: e4 13 40 f9 	ldr	x4, [sp, #32]
100003210: e3 0f 40 f9 	ldr	x3, [sp, #24]
100003214: e2 0b 40 f9 	ldr	x2, [sp, #16]
100003218: e1 1f 40 f9 	ldr	x1, [sp, #56]
10000321c: e0 27 40 f9 	ldr	x0, [sp, #72]
100003220: 05 1d 00 13 	sxtb	w5, w8
100003224: 46 00 00 94 	bl	0x10000333c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>
100003228: e0 07 00 f9 	str	x0, [sp, #8]
10000322c: 01 00 00 14 	b	0x100003230 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x11c>
100003230: e8 07 40 f9 	ldr	x8, [sp, #8]
100003234: a0 03 01 d1 	sub	x0, x29, #64
100003238: a8 03 1c f8 	stur	x8, [x29, #-64]
10000323c: f1 00 00 94 	bl	0x100003600 <__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv>
100003240: 40 04 00 36 	tbz	w0, #0, 0x1000032c8 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b4>
100003244: 01 00 00 14 	b	0x100003248 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x134>
100003248: a8 83 5f f8 	ldur	x8, [x29, #-8]
10000324c: 09 01 40 f9 	ldr	x9, [x8]
100003250: 29 81 5e f8 	ldur	x9, [x9, #-24]
100003254: 00 01 09 8b 	add	x0, x8, x9
100003258: a1 00 80 52 	mov	w1, #5
10000325c: f2 00 00 94 	bl	0x100003624 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj>
100003260: 01 00 00 14 	b	0x100003264 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x150>
100003264: 19 00 00 14 	b	0x1000032c8 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b4>
100003268: e8 03 01 aa 	mov	x8, x1
10000326c: a0 03 1d f8 	stur	x0, [x29, #-48]
100003270: a8 c3 1c b8 	stur	w8, [x29, #-52]
100003274: 07 00 00 14 	b	0x100003290 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x17c>
100003278: e8 03 01 aa 	mov	x8, x1
10000327c: a0 03 1d f8 	stur	x0, [x29, #-48]
100003280: a8 c3 1c b8 	stur	w8, [x29, #-52]
100003284: a0 a3 00 d1 	sub	x0, x29, #40
100003288: b2 02 00 94 	bl	0x100003d50 <_strlen+0x100003d50>
10000328c: 01 00 00 14 	b	0x100003290 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x17c>
100003290: a0 03 5d f8 	ldur	x0, [x29, #-48]
100003294: cd 02 00 94 	bl	0x100003dc8 <_strlen+0x100003dc8>
100003298: a8 83 5f f8 	ldur	x8, [x29, #-8]
10000329c: 09 01 40 f9 	ldr	x9, [x8]
1000032a0: 29 81 5e f8 	ldur	x9, [x9, #-24]
1000032a4: 00 01 09 8b 	add	x0, x8, x9
1000032a8: b9 02 00 94 	bl	0x100003d8c <_strlen+0x100003d8c>
1000032ac: 01 00 00 14 	b	0x1000032b0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x19c>
1000032b0: c9 02 00 94 	bl	0x100003dd4 <_strlen+0x100003dd4>
1000032b4: 01 00 00 14 	b	0x1000032b8 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1a4>
1000032b8: a0 83 5f f8 	ldur	x0, [x29, #-8]
1000032bc: fd 7b 49 a9 	ldp	x29, x30, [sp, #144]
1000032c0: ff 83 02 91 	add	sp, sp, #160
1000032c4: c0 03 5f d6 	ret
1000032c8: 01 00 00 14 	b	0x1000032cc <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b8>
1000032cc: a0 a3 00 d1 	sub	x0, x29, #40
1000032d0: a0 02 00 94 	bl	0x100003d50 <_strlen+0x100003d50>
1000032d4: f9 ff ff 17 	b	0x1000032b8 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1a4>
1000032d8: e8 03 01 aa 	mov	x8, x1
1000032dc: a0 03 1d f8 	stur	x0, [x29, #-48]
1000032e0: a8 c3 1c b8 	stur	w8, [x29, #-52]
1000032e4: bc 02 00 94 	bl	0x100003dd4 <_strlen+0x100003dd4>
1000032e8: 01 00 00 14 	b	0x1000032ec <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1d8>
1000032ec: 01 00 00 14 	b	0x1000032f0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1dc>
1000032f0: a0 03 5d f8 	ldur	x0, [x29, #-48]
1000032f4: 7c 02 00 94 	bl	0x100003ce4 <_strlen+0x100003ce4>
1000032f8: 69 ff ff 97 	bl	0x10000309c <___clang_call_terminate>

00000001000032fc <__ZNSt3__111char_traitsIcE6lengthEPKc>:
1000032fc: ff 83 00 d1 	sub	sp, sp, #32
100003300: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003304: fd 43 00 91 	add	x29, sp, #16
100003308: e0 07 00 f9 	str	x0, [sp, #8]
10000330c: e0 07 40 f9 	ldr	x0, [sp, #8]
100003310: c3 02 00 94 	bl	0x100003e1c <_strlen+0x100003e1c>
100003314: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003318: ff 83 00 91 	add	sp, sp, #32
10000331c: c0 03 5f d6 	ret

0000000100003320 <__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv>:
100003320: ff 43 00 d1 	sub	sp, sp, #16
100003324: e0 07 00 f9 	str	x0, [sp, #8]
100003328: e8 07 40 f9 	ldr	x8, [sp, #8]
10000332c: 08 01 40 39 	ldrb	w8, [x8]
100003330: 00 01 00 12 	and	w0, w8, #0x1
100003334: ff 43 00 91 	add	sp, sp, #16
100003338: c0 03 5f d6 	ret

000000010000333c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>:
10000333c: ff 83 02 d1 	sub	sp, sp, #160
100003340: fd 7b 09 a9 	stp	x29, x30, [sp, #144]
100003344: fd 43 02 91 	add	x29, sp, #144
100003348: a0 03 1f f8 	stur	x0, [x29, #-16]
10000334c: a1 83 1e f8 	stur	x1, [x29, #-24]
100003350: a2 03 1e f8 	stur	x2, [x29, #-32]
100003354: a3 83 1d f8 	stur	x3, [x29, #-40]
100003358: a4 03 1d f8 	stur	x4, [x29, #-48]
10000335c: a5 f3 1c 38 	sturb	w5, [x29, #-49]
100003360: a8 03 5f f8 	ldur	x8, [x29, #-16]
100003364: a8 00 00 b5 	cbnz	x8, 0x100003378 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x3c>
100003368: 01 00 00 14 	b	0x10000336c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x30>
10000336c: a8 03 5f f8 	ldur	x8, [x29, #-16]
100003370: a8 83 1f f8 	stur	x8, [x29, #-8]
100003374: 71 00 00 14 	b	0x100003538 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
100003378: a8 83 5d f8 	ldur	x8, [x29, #-40]
10000337c: a9 83 5e f8 	ldur	x9, [x29, #-24]
100003380: 08 01 09 eb 	subs	x8, x8, x9
100003384: a8 03 1c f8 	stur	x8, [x29, #-64]
100003388: a0 03 5d f8 	ldur	x0, [x29, #-48]
10000338c: b1 00 00 94 	bl	0x100003650 <__ZNKSt3__18ios_base5widthEv>
100003390: e0 27 00 f9 	str	x0, [sp, #72]
100003394: e8 27 40 f9 	ldr	x8, [sp, #72]
100003398: a9 03 5c f8 	ldur	x9, [x29, #-64]
10000339c: 08 01 09 eb 	subs	x8, x8, x9
1000033a0: ed 00 00 54 	b.le	0x1000033bc <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x80>
1000033a4: 01 00 00 14 	b	0x1000033a8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x6c>
1000033a8: a9 03 5c f8 	ldur	x9, [x29, #-64]
1000033ac: e8 27 40 f9 	ldr	x8, [sp, #72]
1000033b0: 08 01 09 eb 	subs	x8, x8, x9
1000033b4: e8 27 00 f9 	str	x8, [sp, #72]
1000033b8: 03 00 00 14 	b	0x1000033c4 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x88>
1000033bc: ff 27 00 f9 	str	xzr, [sp, #72]
1000033c0: 01 00 00 14 	b	0x1000033c4 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x88>
1000033c4: a8 03 5e f8 	ldur	x8, [x29, #-32]
1000033c8: a9 83 5e f8 	ldur	x9, [x29, #-24]
1000033cc: 08 01 09 eb 	subs	x8, x8, x9
1000033d0: e8 23 00 f9 	str	x8, [sp, #64]
1000033d4: e8 23 40 f9 	ldr	x8, [sp, #64]
1000033d8: 08 01 00 f1 	subs	x8, x8, #0
1000033dc: ed 01 00 54 	b.le	0x100003418 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdc>
1000033e0: 01 00 00 14 	b	0x1000033e4 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xa8>
1000033e4: a0 03 5f f8 	ldur	x0, [x29, #-16]
1000033e8: a1 83 5e f8 	ldur	x1, [x29, #-24]
1000033ec: e2 23 40 f9 	ldr	x2, [sp, #64]
1000033f0: 9e 00 00 94 	bl	0x100003668 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>
1000033f4: e8 23 40 f9 	ldr	x8, [sp, #64]
1000033f8: 08 00 08 eb 	subs	x8, x0, x8
1000033fc: c0 00 00 54 	b.eq	0x100003414 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xd8>
100003400: 01 00 00 14 	b	0x100003404 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xc8>
100003404: bf 03 1f f8 	stur	xzr, [x29, #-16]
100003408: a8 03 5f f8 	ldur	x8, [x29, #-16]
10000340c: a8 83 1f f8 	stur	x8, [x29, #-8]
100003410: 4a 00 00 14 	b	0x100003538 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
100003414: 01 00 00 14 	b	0x100003418 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdc>
100003418: e8 27 40 f9 	ldr	x8, [sp, #72]
10000341c: 08 01 00 f1 	subs	x8, x8, #0
100003420: 6d 05 00 54 	b.le	0x1000034cc <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x190>
100003424: 01 00 00 14 	b	0x100003428 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xec>
100003428: e1 27 40 f9 	ldr	x1, [sp, #72]
10000342c: a2 f3 dc 38 	ldursb	w2, [x29, #-49]
100003430: e0 a3 00 91 	add	x0, sp, #40
100003434: e0 03 00 f9 	str	x0, [sp]
100003438: 9b 00 00 94 	bl	0x1000036a4 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc>
10000343c: e0 03 40 f9 	ldr	x0, [sp]
100003440: a8 03 5f f8 	ldur	x8, [x29, #-16]
100003444: e8 07 00 f9 	str	x8, [sp, #8]
100003448: a6 00 00 94 	bl	0x1000036e0 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv>
10000344c: e1 03 00 aa 	mov	x1, x0
100003450: e0 07 40 f9 	ldr	x0, [sp, #8]
100003454: e2 27 40 f9 	ldr	x2, [sp, #72]
100003458: 84 00 00 94 	bl	0x100003668 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>
10000345c: e0 0b 00 f9 	str	x0, [sp, #16]
100003460: 01 00 00 14 	b	0x100003464 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x128>
100003464: e8 0b 40 f9 	ldr	x8, [sp, #16]
100003468: e9 27 40 f9 	ldr	x9, [sp, #72]
10000346c: 08 01 09 eb 	subs	x8, x8, x9
100003470: c0 01 00 54 	b.eq	0x1000034a8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x16c>
100003474: 01 00 00 14 	b	0x100003478 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x13c>
100003478: bf 03 1f f8 	stur	xzr, [x29, #-16]
10000347c: a8 03 5f f8 	ldur	x8, [x29, #-16]
100003480: a8 83 1f f8 	stur	x8, [x29, #-8]
100003484: 28 00 80 52 	mov	w8, #1
100003488: e8 1b 00 b9 	str	w8, [sp, #24]
10000348c: 09 00 00 14 	b	0x1000034b0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x174>
100003490: e8 03 01 aa 	mov	x8, x1
100003494: e0 13 00 f9 	str	x0, [sp, #32]
100003498: e8 1f 00 b9 	str	w8, [sp, #28]
10000349c: e0 a3 00 91 	add	x0, sp, #40
1000034a0: 26 02 00 94 	bl	0x100003d38 <_strlen+0x100003d38>
1000034a4: 29 00 00 14 	b	0x100003548 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x20c>
1000034a8: ff 1b 00 b9 	str	wzr, [sp, #24]
1000034ac: 01 00 00 14 	b	0x1000034b0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x174>
1000034b0: e0 a3 00 91 	add	x0, sp, #40
1000034b4: 21 02 00 94 	bl	0x100003d38 <_strlen+0x100003d38>
1000034b8: e8 1b 40 b9 	ldr	w8, [sp, #24]
1000034bc: 68 00 00 34 	cbz	w8, 0x1000034c8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x18c>
1000034c0: 01 00 00 14 	b	0x1000034c4 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x188>
1000034c4: 1d 00 00 14 	b	0x100003538 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
1000034c8: 01 00 00 14 	b	0x1000034cc <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x190>
1000034cc: a8 83 5d f8 	ldur	x8, [x29, #-40]
1000034d0: a9 03 5e f8 	ldur	x9, [x29, #-32]
1000034d4: 08 01 09 eb 	subs	x8, x8, x9
1000034d8: e8 23 00 f9 	str	x8, [sp, #64]
1000034dc: e8 23 40 f9 	ldr	x8, [sp, #64]
1000034e0: 08 01 00 f1 	subs	x8, x8, #0
1000034e4: ed 01 00 54 	b.le	0x100003520 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e4>
1000034e8: 01 00 00 14 	b	0x1000034ec <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1b0>
1000034ec: a0 03 5f f8 	ldur	x0, [x29, #-16]
1000034f0: a1 03 5e f8 	ldur	x1, [x29, #-32]
1000034f4: e2 23 40 f9 	ldr	x2, [sp, #64]
1000034f8: 5c 00 00 94 	bl	0x100003668 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>
1000034fc: e8 23 40 f9 	ldr	x8, [sp, #64]
100003500: 08 00 08 eb 	subs	x8, x0, x8
100003504: c0 00 00 54 	b.eq	0x10000351c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e0>
100003508: 01 00 00 14 	b	0x10000350c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1d0>
10000350c: bf 03 1f f8 	stur	xzr, [x29, #-16]
100003510: a8 03 5f f8 	ldur	x8, [x29, #-16]
100003514: a8 83 1f f8 	stur	x8, [x29, #-8]
100003518: 08 00 00 14 	b	0x100003538 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
10000351c: 01 00 00 14 	b	0x100003520 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e4>
100003520: a0 03 5d f8 	ldur	x0, [x29, #-48]
100003524: 01 00 80 d2 	mov	x1, #0
100003528: 78 00 00 94 	bl	0x100003708 <__ZNSt3__18ios_base5widthEl>
10000352c: a8 03 5f f8 	ldur	x8, [x29, #-16]
100003530: a8 83 1f f8 	stur	x8, [x29, #-8]
100003534: 01 00 00 14 	b	0x100003538 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
100003538: a0 83 5f f8 	ldur	x0, [x29, #-8]
10000353c: fd 7b 49 a9 	ldp	x29, x30, [sp, #144]
100003540: ff 83 02 91 	add	sp, sp, #160
100003544: c0 03 5f d6 	ret
100003548: e0 13 40 f9 	ldr	x0, [sp, #32]
10000354c: e6 01 00 94 	bl	0x100003ce4 <_strlen+0x100003ce4>

0000000100003550 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE>:
100003550: ff c3 00 d1 	sub	sp, sp, #48
100003554: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003558: fd 83 00 91 	add	x29, sp, #32
10000355c: a0 83 1f f8 	stur	x0, [x29, #-8]
100003560: e1 0b 00 f9 	str	x1, [sp, #16]
100003564: a0 83 5f f8 	ldur	x0, [x29, #-8]
100003568: e0 07 00 f9 	str	x0, [sp, #8]
10000356c: e1 0b 40 f9 	ldr	x1, [sp, #16]
100003570: 23 01 00 94 	bl	0x1000039fc <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE>
100003574: e0 07 40 f9 	ldr	x0, [sp, #8]
100003578: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
10000357c: ff c3 00 91 	add	sp, sp, #48
100003580: c0 03 5f d6 	ret

0000000100003584 <__ZNKSt3__18ios_base5flagsEv>:
100003584: ff 43 00 d1 	sub	sp, sp, #16
100003588: e0 07 00 f9 	str	x0, [sp, #8]
10000358c: e8 07 40 f9 	ldr	x8, [sp, #8]
100003590: 00 09 40 b9 	ldr	w0, [x8, #8]
100003594: ff 43 00 91 	add	sp, sp, #16
100003598: c0 03 5f d6 	ret

000000010000359c <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv>:
10000359c: ff 83 00 d1 	sub	sp, sp, #32
1000035a0: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
1000035a4: fd 43 00 91 	add	x29, sp, #16
1000035a8: e0 07 00 f9 	str	x0, [sp, #8]
1000035ac: e8 07 40 f9 	ldr	x8, [sp, #8]
1000035b0: e8 03 00 f9 	str	x8, [sp]
1000035b4: d8 01 00 94 	bl	0x100003d14 <_strlen+0x100003d14>
1000035b8: e8 03 40 f9 	ldr	x8, [sp]
1000035bc: 01 91 40 b9 	ldr	w1, [x8, #144]
1000035c0: d2 01 00 94 	bl	0x100003d08 <_strlen+0x100003d08>
1000035c4: 20 01 00 36 	tbz	w0, #0, 0x1000035e8 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv+0x4c>
1000035c8: 01 00 00 14 	b	0x1000035cc <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv+0x30>
1000035cc: e0 03 40 f9 	ldr	x0, [sp]
1000035d0: 01 04 80 52 	mov	w1, #32
1000035d4: 3a 01 00 94 	bl	0x100003abc <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc>
1000035d8: e9 03 40 f9 	ldr	x9, [sp]
1000035dc: 08 1c 00 13 	sxtb	w8, w0
1000035e0: 28 91 00 b9 	str	w8, [x9, #144]
1000035e4: 01 00 00 14 	b	0x1000035e8 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv+0x4c>
1000035e8: e8 03 40 f9 	ldr	x8, [sp]
1000035ec: 08 91 40 b9 	ldr	w8, [x8, #144]
1000035f0: 00 1d 00 13 	sxtb	w0, w8
1000035f4: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
1000035f8: ff 83 00 91 	add	sp, sp, #32
1000035fc: c0 03 5f d6 	ret

0000000100003600 <__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv>:
100003600: ff 43 00 d1 	sub	sp, sp, #16
100003604: e0 07 00 f9 	str	x0, [sp, #8]
100003608: e8 07 40 f9 	ldr	x8, [sp, #8]
10000360c: 08 01 40 f9 	ldr	x8, [x8]
100003610: 08 01 00 f1 	subs	x8, x8, #0
100003614: e8 17 9f 1a 	cset	w8, eq
100003618: 00 01 00 12 	and	w0, w8, #0x1
10000361c: ff 43 00 91 	add	sp, sp, #16
100003620: c0 03 5f d6 	ret

0000000100003624 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj>:
100003624: ff 83 00 d1 	sub	sp, sp, #32
100003628: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
10000362c: fd 43 00 91 	add	x29, sp, #16
100003630: e0 07 00 f9 	str	x0, [sp, #8]
100003634: e1 07 00 b9 	str	w1, [sp, #4]
100003638: e0 07 40 f9 	ldr	x0, [sp, #8]
10000363c: e1 07 40 b9 	ldr	w1, [sp, #4]
100003640: 59 01 00 94 	bl	0x100003ba4 <__ZNSt3__18ios_base8setstateEj>
100003644: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003648: ff 83 00 91 	add	sp, sp, #32
10000364c: c0 03 5f d6 	ret

0000000100003650 <__ZNKSt3__18ios_base5widthEv>:
100003650: ff 43 00 d1 	sub	sp, sp, #16
100003654: e0 07 00 f9 	str	x0, [sp, #8]
100003658: e8 07 40 f9 	ldr	x8, [sp, #8]
10000365c: 00 0d 40 f9 	ldr	x0, [x8, #24]
100003660: ff 43 00 91 	add	sp, sp, #16
100003664: c0 03 5f d6 	ret

0000000100003668 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>:
100003668: ff c3 00 d1 	sub	sp, sp, #48
10000366c: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003670: fd 83 00 91 	add	x29, sp, #32
100003674: a0 83 1f f8 	stur	x0, [x29, #-8]
100003678: e1 0b 00 f9 	str	x1, [sp, #16]
10000367c: e2 07 00 f9 	str	x2, [sp, #8]
100003680: a0 83 5f f8 	ldur	x0, [x29, #-8]
100003684: e1 0b 40 f9 	ldr	x1, [sp, #16]
100003688: e2 07 40 f9 	ldr	x2, [sp, #8]
10000368c: 08 00 40 f9 	ldr	x8, [x0]
100003690: 08 31 40 f9 	ldr	x8, [x8, #96]
100003694: 00 01 3f d6 	blr	x8
100003698: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
10000369c: ff c3 00 91 	add	sp, sp, #48
1000036a0: c0 03 5f d6 	ret

00000001000036a4 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc>:
1000036a4: ff c3 00 d1 	sub	sp, sp, #48
1000036a8: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
1000036ac: fd 83 00 91 	add	x29, sp, #32
1000036b0: a0 83 1f f8 	stur	x0, [x29, #-8]
1000036b4: e1 0b 00 f9 	str	x1, [sp, #16]
1000036b8: e2 3f 00 39 	strb	w2, [sp, #15]
1000036bc: a0 83 5f f8 	ldur	x0, [x29, #-8]
1000036c0: e0 03 00 f9 	str	x0, [sp]
1000036c4: e1 0b 40 f9 	ldr	x1, [sp, #16]
1000036c8: e2 3f c0 39 	ldrsb	w2, [sp, #15]
1000036cc: 1a 00 00 94 	bl	0x100003734 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc>
1000036d0: e0 03 40 f9 	ldr	x0, [sp]
1000036d4: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
1000036d8: ff c3 00 91 	add	sp, sp, #48
1000036dc: c0 03 5f d6 	ret

00000001000036e0 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv>:
1000036e0: ff 83 00 d1 	sub	sp, sp, #32
1000036e4: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
1000036e8: fd 43 00 91 	add	x29, sp, #16
1000036ec: e0 07 00 f9 	str	x0, [sp, #8]
1000036f0: e0 07 40 f9 	ldr	x0, [sp, #8]
1000036f4: 70 00 00 94 	bl	0x1000038b4 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv>
1000036f8: 6a 00 00 94 	bl	0x1000038a0 <__ZNSt3__1L12__to_addressIKcEEPT_S3_>
1000036fc: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003700: ff 83 00 91 	add	sp, sp, #32
100003704: c0 03 5f d6 	ret

0000000100003708 <__ZNSt3__18ios_base5widthEl>:
100003708: ff 83 00 d1 	sub	sp, sp, #32
10000370c: e0 0f 00 f9 	str	x0, [sp, #24]
100003710: e1 0b 00 f9 	str	x1, [sp, #16]
100003714: e9 0f 40 f9 	ldr	x9, [sp, #24]
100003718: 28 0d 40 f9 	ldr	x8, [x9, #24]
10000371c: e8 07 00 f9 	str	x8, [sp, #8]
100003720: e8 0b 40 f9 	ldr	x8, [sp, #16]
100003724: 28 0d 00 f9 	str	x8, [x9, #24]
100003728: e0 07 40 f9 	ldr	x0, [sp, #8]
10000372c: ff 83 00 91 	add	sp, sp, #32
100003730: c0 03 5f d6 	ret

0000000100003734 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc>:
100003734: ff c3 00 d1 	sub	sp, sp, #48
100003738: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
10000373c: fd 83 00 91 	add	x29, sp, #32
100003740: a0 83 1f f8 	stur	x0, [x29, #-8]
100003744: e1 0b 00 f9 	str	x1, [sp, #16]
100003748: e2 3f 00 39 	strb	w2, [sp, #15]
10000374c: a0 83 5f f8 	ldur	x0, [x29, #-8]
100003750: e0 03 00 f9 	str	x0, [sp]
100003754: e1 3b 00 91 	add	x1, sp, #14
100003758: e2 37 00 91 	add	x2, sp, #13
10000375c: 09 00 00 94 	bl	0x100003780 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_>
100003760: e0 03 40 f9 	ldr	x0, [sp]
100003764: e1 0b 40 f9 	ldr	x1, [sp, #16]
100003768: e2 3f c0 39 	ldrsb	w2, [sp, #15]
10000376c: 70 01 00 94 	bl	0x100003d2c <_strlen+0x100003d2c>
100003770: e0 03 40 f9 	ldr	x0, [sp]
100003774: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003778: ff c3 00 91 	add	sp, sp, #48
10000377c: c0 03 5f d6 	ret

0000000100003780 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_>:
100003780: ff c3 00 d1 	sub	sp, sp, #48
100003784: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003788: fd 83 00 91 	add	x29, sp, #32
10000378c: a0 83 1f f8 	stur	x0, [x29, #-8]
100003790: e1 0b 00 f9 	str	x1, [sp, #16]
100003794: e2 07 00 f9 	str	x2, [sp, #8]
100003798: a0 83 5f f8 	ldur	x0, [x29, #-8]
10000379c: e0 03 00 f9 	str	x0, [sp]
1000037a0: e1 0b 40 f9 	ldr	x1, [sp, #16]
1000037a4: e2 07 40 f9 	ldr	x2, [sp, #8]
1000037a8: 05 00 00 94 	bl	0x1000037bc <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_>
1000037ac: e0 03 40 f9 	ldr	x0, [sp]
1000037b0: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
1000037b4: ff c3 00 91 	add	sp, sp, #48
1000037b8: c0 03 5f d6 	ret

00000001000037bc <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_>:
1000037bc: ff 03 01 d1 	sub	sp, sp, #64
1000037c0: fd 7b 03 a9 	stp	x29, x30, [sp, #48]
1000037c4: fd c3 00 91 	add	x29, sp, #48
1000037c8: a0 83 1f f8 	stur	x0, [x29, #-8]
1000037cc: a1 03 1f f8 	stur	x1, [x29, #-16]
1000037d0: e2 0f 00 f9 	str	x2, [sp, #24]
1000037d4: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000037d8: e8 07 00 f9 	str	x8, [sp, #8]
1000037dc: a0 03 5f f8 	ldur	x0, [x29, #-16]
1000037e0: 0b 00 00 94 	bl	0x10000380c <__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE>
1000037e4: e0 07 40 f9 	ldr	x0, [sp, #8]
1000037e8: 0e 00 00 94 	bl	0x100003820 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE>
1000037ec: e0 0f 40 f9 	ldr	x0, [sp, #24]
1000037f0: 07 00 00 94 	bl	0x10000380c <__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE>
1000037f4: e0 07 40 f9 	ldr	x0, [sp, #8]
1000037f8: 0f 00 00 94 	bl	0x100003834 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE>
1000037fc: e0 07 40 f9 	ldr	x0, [sp, #8]
100003800: fd 7b 43 a9 	ldp	x29, x30, [sp, #48]
100003804: ff 03 01 91 	add	sp, sp, #64
100003808: c0 03 5f d6 	ret

000000010000380c <__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE>:
10000380c: ff 43 00 d1 	sub	sp, sp, #16
100003810: e0 07 00 f9 	str	x0, [sp, #8]
100003814: e0 07 40 f9 	ldr	x0, [sp, #8]
100003818: ff 43 00 91 	add	sp, sp, #16
10000381c: c0 03 5f d6 	ret

0000000100003820 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE>:
100003820: ff 43 00 d1 	sub	sp, sp, #16
100003824: e0 03 00 f9 	str	x0, [sp]
100003828: e0 03 40 f9 	ldr	x0, [sp]
10000382c: ff 43 00 91 	add	sp, sp, #16
100003830: c0 03 5f d6 	ret

0000000100003834 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE>:
100003834: ff c3 00 d1 	sub	sp, sp, #48
100003838: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
10000383c: fd 83 00 91 	add	x29, sp, #32
100003840: e0 0b 00 f9 	str	x0, [sp, #16]
100003844: e0 0b 40 f9 	ldr	x0, [sp, #16]
100003848: e0 07 00 f9 	str	x0, [sp, #8]
10000384c: 05 00 00 94 	bl	0x100003860 <__ZNSt3__19allocatorIcEC2Ev>
100003850: e0 07 40 f9 	ldr	x0, [sp, #8]
100003854: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003858: ff c3 00 91 	add	sp, sp, #48
10000385c: c0 03 5f d6 	ret

0000000100003860 <__ZNSt3__19allocatorIcEC2Ev>:
100003860: ff 83 00 d1 	sub	sp, sp, #32
100003864: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003868: fd 43 00 91 	add	x29, sp, #16
10000386c: e0 07 00 f9 	str	x0, [sp, #8]
100003870: e0 07 40 f9 	ldr	x0, [sp, #8]
100003874: e0 03 00 f9 	str	x0, [sp]
100003878: 05 00 00 94 	bl	0x10000388c <__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev>
10000387c: e0 03 40 f9 	ldr	x0, [sp]
100003880: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003884: ff 83 00 91 	add	sp, sp, #32
100003888: c0 03 5f d6 	ret

000000010000388c <__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev>:
10000388c: ff 43 00 d1 	sub	sp, sp, #16
100003890: e0 07 00 f9 	str	x0, [sp, #8]
100003894: e0 07 40 f9 	ldr	x0, [sp, #8]
100003898: ff 43 00 91 	add	sp, sp, #16
10000389c: c0 03 5f d6 	ret

00000001000038a0 <__ZNSt3__1L12__to_addressIKcEEPT_S3_>:
1000038a0: ff 43 00 d1 	sub	sp, sp, #16
1000038a4: e0 07 00 f9 	str	x0, [sp, #8]
1000038a8: e0 07 40 f9 	ldr	x0, [sp, #8]
1000038ac: ff 43 00 91 	add	sp, sp, #16
1000038b0: c0 03 5f d6 	ret

00000001000038b4 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv>:
1000038b4: ff c3 00 d1 	sub	sp, sp, #48
1000038b8: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
1000038bc: fd 83 00 91 	add	x29, sp, #32
1000038c0: a0 83 1f f8 	stur	x0, [x29, #-8]
1000038c4: a0 83 5f f8 	ldur	x0, [x29, #-8]
1000038c8: e0 0b 00 f9 	str	x0, [sp, #16]
1000038cc: 0f 00 00 94 	bl	0x100003908 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv>
1000038d0: c0 00 00 36 	tbz	w0, #0, 0x1000038e8 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x34>
1000038d4: 01 00 00 14 	b	0x1000038d8 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x24>
1000038d8: e0 0b 40 f9 	ldr	x0, [sp, #16]
1000038dc: 18 00 00 94 	bl	0x10000393c <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv>
1000038e0: e0 07 00 f9 	str	x0, [sp, #8]
1000038e4: 05 00 00 14 	b	0x1000038f8 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x44>
1000038e8: e0 0b 40 f9 	ldr	x0, [sp, #16]
1000038ec: 1e 00 00 94 	bl	0x100003964 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv>
1000038f0: e0 07 00 f9 	str	x0, [sp, #8]
1000038f4: 01 00 00 14 	b	0x1000038f8 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x44>
1000038f8: e0 07 40 f9 	ldr	x0, [sp, #8]
1000038fc: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003900: ff c3 00 91 	add	sp, sp, #48
100003904: c0 03 5f d6 	ret

0000000100003908 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv>:
100003908: ff 83 00 d1 	sub	sp, sp, #32
10000390c: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003910: fd 43 00 91 	add	x29, sp, #16
100003914: e0 07 00 f9 	str	x0, [sp, #8]
100003918: e0 07 40 f9 	ldr	x0, [sp, #8]
10000391c: 1c 00 00 94 	bl	0x10000398c <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
100003920: 08 5c 40 39 	ldrb	w8, [x0, #23]
100003924: 08 01 79 f2 	ands	x8, x8, #0x80
100003928: e8 07 9f 1a 	cset	w8, ne
10000392c: 00 01 00 12 	and	w0, w8, #0x1
100003930: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003934: ff 83 00 91 	add	sp, sp, #32
100003938: c0 03 5f d6 	ret

000000010000393c <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv>:
10000393c: ff 83 00 d1 	sub	sp, sp, #32
100003940: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003944: fd 43 00 91 	add	x29, sp, #16
100003948: e0 07 00 f9 	str	x0, [sp, #8]
10000394c: e0 07 40 f9 	ldr	x0, [sp, #8]
100003950: 0f 00 00 94 	bl	0x10000398c <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
100003954: 00 00 40 f9 	ldr	x0, [x0]
100003958: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
10000395c: ff 83 00 91 	add	sp, sp, #32
100003960: c0 03 5f d6 	ret

0000000100003964 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv>:
100003964: ff 83 00 d1 	sub	sp, sp, #32
100003968: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
10000396c: fd 43 00 91 	add	x29, sp, #16
100003970: e0 07 00 f9 	str	x0, [sp, #8]
100003974: e0 07 40 f9 	ldr	x0, [sp, #8]
100003978: 05 00 00 94 	bl	0x10000398c <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
10000397c: 12 00 00 94 	bl	0x1000039c4 <__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_>
100003980: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003984: ff 83 00 91 	add	sp, sp, #32
100003988: c0 03 5f d6 	ret

000000010000398c <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>:
10000398c: ff 83 00 d1 	sub	sp, sp, #32
100003990: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003994: fd 43 00 91 	add	x29, sp, #16
100003998: e0 07 00 f9 	str	x0, [sp, #8]
10000399c: e0 07 40 f9 	ldr	x0, [sp, #8]
1000039a0: 04 00 00 94 	bl	0x1000039b0 <__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv>
1000039a4: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
1000039a8: ff 83 00 91 	add	sp, sp, #32
1000039ac: c0 03 5f d6 	ret

00000001000039b0 <__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv>:
1000039b0: ff 43 00 d1 	sub	sp, sp, #16
1000039b4: e0 07 00 f9 	str	x0, [sp, #8]
1000039b8: e0 07 40 f9 	ldr	x0, [sp, #8]
1000039bc: ff 43 00 91 	add	sp, sp, #16
1000039c0: c0 03 5f d6 	ret

00000001000039c4 <__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_>:
1000039c4: ff 83 00 d1 	sub	sp, sp, #32
1000039c8: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
1000039cc: fd 43 00 91 	add	x29, sp, #16
1000039d0: e0 07 00 f9 	str	x0, [sp, #8]
1000039d4: e0 07 40 f9 	ldr	x0, [sp, #8]
1000039d8: 04 00 00 94 	bl	0x1000039e8 <__ZNSt3__1L9addressofIKcEEPT_RS2_>
1000039dc: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
1000039e0: ff 83 00 91 	add	sp, sp, #32
1000039e4: c0 03 5f d6 	ret

00000001000039e8 <__ZNSt3__1L9addressofIKcEEPT_RS2_>:
1000039e8: ff 43 00 d1 	sub	sp, sp, #16
1000039ec: e0 07 00 f9 	str	x0, [sp, #8]
1000039f0: e0 07 40 f9 	ldr	x0, [sp, #8]
1000039f4: ff 43 00 91 	add	sp, sp, #16
1000039f8: c0 03 5f d6 	ret

00000001000039fc <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE>:
1000039fc: ff c3 00 d1 	sub	sp, sp, #48
100003a00: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003a04: fd 83 00 91 	add	x29, sp, #32
100003a08: a0 83 1f f8 	stur	x0, [x29, #-8]
100003a0c: e1 0b 00 f9 	str	x1, [sp, #16]
100003a10: a8 83 5f f8 	ldur	x8, [x29, #-8]
100003a14: e8 03 00 f9 	str	x8, [sp]
100003a18: e8 0b 40 f9 	ldr	x8, [sp, #16]
100003a1c: 09 01 40 f9 	ldr	x9, [x8]
100003a20: 29 81 5e f8 	ldur	x9, [x9, #-24]
100003a24: 00 01 09 8b 	add	x0, x8, x9
100003a28: 0a 00 00 94 	bl	0x100003a50 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv>
100003a2c: e0 07 00 f9 	str	x0, [sp, #8]
100003a30: 01 00 00 14 	b	0x100003a34 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE+0x38>
100003a34: e0 03 40 f9 	ldr	x0, [sp]
100003a38: e8 07 40 f9 	ldr	x8, [sp, #8]
100003a3c: 08 00 00 f9 	str	x8, [x0]
100003a40: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003a44: ff c3 00 91 	add	sp, sp, #48
100003a48: c0 03 5f d6 	ret
100003a4c: 94 fd ff 97 	bl	0x10000309c <___clang_call_terminate>

0000000100003a50 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv>:
100003a50: ff 83 00 d1 	sub	sp, sp, #32
100003a54: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003a58: fd 43 00 91 	add	x29, sp, #16
100003a5c: e0 07 00 f9 	str	x0, [sp, #8]
100003a60: e0 07 40 f9 	ldr	x0, [sp, #8]
100003a64: 04 00 00 94 	bl	0x100003a74 <__ZNKSt3__18ios_base5rdbufEv>
100003a68: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003a6c: ff 83 00 91 	add	sp, sp, #32
100003a70: c0 03 5f d6 	ret

0000000100003a74 <__ZNKSt3__18ios_base5rdbufEv>:
100003a74: ff 43 00 d1 	sub	sp, sp, #16
100003a78: e0 07 00 f9 	str	x0, [sp, #8]
100003a7c: e8 07 40 f9 	ldr	x8, [sp, #8]
100003a80: 00 15 40 f9 	ldr	x0, [x8, #40]
100003a84: ff 43 00 91 	add	sp, sp, #16
100003a88: c0 03 5f d6 	ret

0000000100003a8c <__ZNSt3__111char_traitsIcE11eq_int_typeEii>:
100003a8c: ff 43 00 d1 	sub	sp, sp, #16
100003a90: e0 0f 00 b9 	str	w0, [sp, #12]
100003a94: e1 0b 00 b9 	str	w1, [sp, #8]
100003a98: e8 0f 40 b9 	ldr	w8, [sp, #12]
100003a9c: e9 0b 40 b9 	ldr	w9, [sp, #8]
100003aa0: 08 01 09 6b 	subs	w8, w8, w9
100003aa4: e8 17 9f 1a 	cset	w8, eq
100003aa8: 00 01 00 12 	and	w0, w8, #0x1
100003aac: ff 43 00 91 	add	sp, sp, #16
100003ab0: c0 03 5f d6 	ret

0000000100003ab4 <__ZNSt3__111char_traitsIcE3eofEv>:
100003ab4: 00 00 80 12 	mov	w0, #-1
100003ab8: c0 03 5f d6 	ret

0000000100003abc <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc>:
100003abc: ff 43 01 d1 	sub	sp, sp, #80
100003ac0: fd 7b 04 a9 	stp	x29, x30, [sp, #64]
100003ac4: fd 03 01 91 	add	x29, sp, #64
100003ac8: a0 83 1f f8 	stur	x0, [x29, #-8]
100003acc: a1 73 1f 38 	sturb	w1, [x29, #-9]
100003ad0: a0 83 5f f8 	ldur	x0, [x29, #-8]
100003ad4: a8 63 00 d1 	sub	x8, x29, #24
100003ad8: e8 07 00 f9 	str	x8, [sp, #8]
100003adc: 88 00 00 94 	bl	0x100003cfc <_strlen+0x100003cfc>
100003ae0: e0 07 40 f9 	ldr	x0, [sp, #8]
100003ae4: 17 00 00 94 	bl	0x100003b40 <__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE>
100003ae8: e0 0b 00 f9 	str	x0, [sp, #16]
100003aec: 01 00 00 14 	b	0x100003af0 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc+0x34>
100003af0: e0 0b 40 f9 	ldr	x0, [sp, #16]
100003af4: a1 73 df 38 	ldursb	w1, [x29, #-9]
100003af8: 1d 00 00 94 	bl	0x100003b6c <__ZNKSt3__15ctypeIcE5widenEc>
100003afc: e0 07 00 b9 	str	w0, [sp, #4]
100003b00: 01 00 00 14 	b	0x100003b04 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc+0x48>
100003b04: a0 63 00 d1 	sub	x0, x29, #24
100003b08: 9e 00 00 94 	bl	0x100003d80 <_strlen+0x100003d80>
100003b0c: e8 07 40 b9 	ldr	w8, [sp, #4]
100003b10: 00 1d 00 13 	sxtb	w0, w8
100003b14: fd 7b 44 a9 	ldp	x29, x30, [sp, #64]
100003b18: ff 43 01 91 	add	sp, sp, #80
100003b1c: c0 03 5f d6 	ret
100003b20: e8 03 01 aa 	mov	x8, x1
100003b24: e0 13 00 f9 	str	x0, [sp, #32]
100003b28: e8 1f 00 b9 	str	w8, [sp, #28]
100003b2c: a0 63 00 d1 	sub	x0, x29, #24
100003b30: 94 00 00 94 	bl	0x100003d80 <_strlen+0x100003d80>
100003b34: 01 00 00 14 	b	0x100003b38 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc+0x7c>
100003b38: e0 13 40 f9 	ldr	x0, [sp, #32]
100003b3c: 6a 00 00 94 	bl	0x100003ce4 <_strlen+0x100003ce4>

0000000100003b40 <__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE>:
100003b40: ff 83 00 d1 	sub	sp, sp, #32
100003b44: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003b48: fd 43 00 91 	add	x29, sp, #16
100003b4c: e0 07 00 f9 	str	x0, [sp, #8]
100003b50: e0 07 40 f9 	ldr	x0, [sp, #8]
100003b54: 01 00 00 b0 	adrp	x1, 0x100004000 <__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE+0x18>
100003b58: 21 38 40 f9 	ldr	x1, [x1, #112]
100003b5c: 65 00 00 94 	bl	0x100003cf0 <_strlen+0x100003cf0>
100003b60: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003b64: ff 83 00 91 	add	sp, sp, #32
100003b68: c0 03 5f d6 	ret

0000000100003b6c <__ZNKSt3__15ctypeIcE5widenEc>:
100003b6c: ff 83 00 d1 	sub	sp, sp, #32
100003b70: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003b74: fd 43 00 91 	add	x29, sp, #16
100003b78: e0 07 00 f9 	str	x0, [sp, #8]
100003b7c: e1 1f 00 39 	strb	w1, [sp, #7]
100003b80: e0 07 40 f9 	ldr	x0, [sp, #8]
100003b84: e1 1f c0 39 	ldrsb	w1, [sp, #7]
100003b88: 08 00 40 f9 	ldr	x8, [x0]
100003b8c: 08 1d 40 f9 	ldr	x8, [x8, #56]
100003b90: 00 01 3f d6 	blr	x8
100003b94: 00 1c 00 13 	sxtb	w0, w0
100003b98: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003b9c: ff 83 00 91 	add	sp, sp, #32
100003ba0: c0 03 5f d6 	ret

0000000100003ba4 <__ZNSt3__18ios_base8setstateEj>:
100003ba4: ff 83 00 d1 	sub	sp, sp, #32
100003ba8: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003bac: fd 43 00 91 	add	x29, sp, #16
100003bb0: e0 07 00 f9 	str	x0, [sp, #8]
100003bb4: e1 07 00 b9 	str	w1, [sp, #4]
100003bb8: e0 07 40 f9 	ldr	x0, [sp, #8]
100003bbc: 08 20 40 b9 	ldr	w8, [x0, #32]
100003bc0: e9 07 40 b9 	ldr	w9, [sp, #4]
100003bc4: 01 01 09 2a 	orr	w1, w8, w9
100003bc8: 74 00 00 94 	bl	0x100003d98 <_strlen+0x100003d98>
100003bcc: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003bd0: ff 83 00 91 	add	sp, sp, #32
100003bd4: c0 03 5f d6 	ret

0000000100003bd8 <__ZNSt3__1L21__cxx_atomic_exchangeIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE>:
100003bd8: ff c3 00 d1 	sub	sp, sp, #48
100003bdc: e0 17 00 f9 	str	x0, [sp, #40]
100003be0: e1 27 00 b9 	str	w1, [sp, #36]
100003be4: e2 23 00 b9 	str	w2, [sp, #32]
100003be8: e8 17 40 f9 	ldr	x8, [sp, #40]
100003bec: e8 07 00 f9 	str	x8, [sp, #8]
100003bf0: e8 23 40 b9 	ldr	w8, [sp, #32]
100003bf4: e9 27 40 b9 	ldr	w9, [sp, #36]
100003bf8: e9 1f 00 b9 	str	w9, [sp, #28]
100003bfc: 08 05 00 71 	subs	w8, w8, #1
100003c00: e8 0b 00 f9 	str	x8, [sp, #16]
100003c04: 08 11 00 f1 	subs	x8, x8, #4
100003c08: 08 01 00 54 	b.hi	0x100003c28 <__ZNSt3__1L21__cxx_atomic_exchangeIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE+0x50>
100003c0c: eb 0b 40 f9 	ldr	x11, [sp, #16]
100003c10: 0a 00 00 90 	adrp	x10, 0x100003000 <__ZNSt3__1L21__cxx_atomic_exchangeIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE+0x38>
100003c14: 4a 61 32 91 	add	x10, x10, #3224
100003c18: 08 00 00 10 	adr	x8, #0
100003c1c: 49 79 ab b8 	ldrsw	x9, [x10, x11, lsl #2]
100003c20: 08 01 09 8b 	add	x8, x8, x9
100003c24: 00 01 1f d6 	br	x8
100003c28: e9 07 40 f9 	ldr	x9, [sp, #8]
100003c2c: e8 1f 40 b9 	ldr	w8, [sp, #28]
100003c30: 28 81 28 b8 	<unknown>
100003c34: e8 1b 00 b9 	str	w8, [sp, #24]
100003c38: 15 00 00 14 	b	0x100003c8c <__ZNSt3__1L21__cxx_atomic_exchangeIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE+0xb4>
100003c3c: e9 07 40 f9 	ldr	x9, [sp, #8]
100003c40: e8 1f 40 b9 	ldr	w8, [sp, #28]
100003c44: 28 81 a8 b8 	<unknown>
100003c48: e8 1b 00 b9 	str	w8, [sp, #24]
100003c4c: 10 00 00 14 	b	0x100003c8c <__ZNSt3__1L21__cxx_atomic_exchangeIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE+0xb4>
100003c50: e9 07 40 f9 	ldr	x9, [sp, #8]
100003c54: e8 1f 40 b9 	ldr	w8, [sp, #28]
100003c58: 28 81 68 b8 	<unknown>
100003c5c: e8 1b 00 b9 	str	w8, [sp, #24]
100003c60: 0b 00 00 14 	b	0x100003c8c <__ZNSt3__1L21__cxx_atomic_exchangeIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE+0xb4>
100003c64: e9 07 40 f9 	ldr	x9, [sp, #8]
100003c68: e8 1f 40 b9 	ldr	w8, [sp, #28]
100003c6c: 28 81 e8 b8 	<unknown>
100003c70: e8 1b 00 b9 	str	w8, [sp, #24]
100003c74: 06 00 00 14 	b	0x100003c8c <__ZNSt3__1L21__cxx_atomic_exchangeIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE+0xb4>
100003c78: e9 07 40 f9 	ldr	x9, [sp, #8]
100003c7c: e8 1f 40 b9 	ldr	w8, [sp, #28]
100003c80: 28 81 e8 b8 	<unknown>
100003c84: e8 1b 00 b9 	str	w8, [sp, #24]
100003c88: 01 00 00 14 	b	0x100003c8c <__ZNSt3__1L21__cxx_atomic_exchangeIiEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE+0xb4>
100003c8c: e0 1b 40 b9 	ldr	w0, [sp, #24]
100003c90: ff c3 00 91 	add	sp, sp, #48
100003c94: c0 03 5f d6 	ret
100003c98: 24 00 00 00 	udf	#36
100003c9c: 24 00 00 00 	udf	#36
100003ca0: 38 00 00 00 	udf	#56
100003ca4: 4c 00 00 00 	udf	#76
100003ca8: 60 00 00 00 	udf	#96

0000000100003cac <___cxx_global_var_init>:
100003cac: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
100003cb0: fd 03 00 91 	mov	x29, sp
100003cb4: 08 02 80 52 	mov	w8, #16
100003cb8: e0 03 08 aa 	mov	x0, x8
100003cbc: 40 00 00 94 	bl	0x100003dbc <_strlen+0x100003dbc>
100003cc0: 28 00 00 b0 	adrp	x8, 0x100008000 <__GLOBAL__sub_I_mcs_tas.cpp+0x4>
100003cc4: 00 69 00 f9 	str	x0, [x8, #208]
100003cc8: fd 7b c1 a8 	ldp	x29, x30, [sp], #16
100003ccc: c0 03 5f d6 	ret

0000000100003cd0 <__GLOBAL__sub_I_mcs_tas.cpp>:
100003cd0: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
100003cd4: fd 03 00 91 	mov	x29, sp
100003cd8: f5 ff ff 97 	bl	0x100003cac <___cxx_global_var_init>
100003cdc: fd 7b c1 a8 	ldp	x29, x30, [sp], #16
100003ce0: c0 03 5f d6 	ret

Disassembly of section __TEXT,__stubs:

0000000100003ce4 <__stubs>:
100003ce4: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x4>
100003ce8: 10 02 40 f9 	ldr	x16, [x16]
100003cec: 00 02 1f d6 	br	x16
100003cf0: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x10>
100003cf4: 10 06 40 f9 	ldr	x16, [x16, #8]
100003cf8: 00 02 1f d6 	br	x16
100003cfc: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x1c>
100003d00: 10 0a 40 f9 	ldr	x16, [x16, #16]
100003d04: 00 02 1f d6 	br	x16
100003d08: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x28>
100003d0c: 10 0e 40 f9 	ldr	x16, [x16, #24]
100003d10: 00 02 1f d6 	br	x16
100003d14: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x34>
100003d18: 10 12 40 f9 	ldr	x16, [x16, #32]
100003d1c: 00 02 1f d6 	br	x16
100003d20: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x40>
100003d24: 10 16 40 f9 	ldr	x16, [x16, #40]
100003d28: 00 02 1f d6 	br	x16
100003d2c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x4c>
100003d30: 10 1a 40 f9 	ldr	x16, [x16, #48]
100003d34: 00 02 1f d6 	br	x16
100003d38: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x58>
100003d3c: 10 1e 40 f9 	ldr	x16, [x16, #56]
100003d40: 00 02 1f d6 	br	x16
100003d44: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x64>
100003d48: 10 22 40 f9 	ldr	x16, [x16, #64]
100003d4c: 00 02 1f d6 	br	x16
100003d50: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x70>
100003d54: 10 26 40 f9 	ldr	x16, [x16, #72]
100003d58: 00 02 1f d6 	br	x16
100003d5c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x7c>
100003d60: 10 2a 40 f9 	ldr	x16, [x16, #80]
100003d64: 00 02 1f d6 	br	x16
100003d68: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x88>
100003d6c: 10 2e 40 f9 	ldr	x16, [x16, #88]
100003d70: 00 02 1f d6 	br	x16
100003d74: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x94>
100003d78: 10 32 40 f9 	ldr	x16, [x16, #96]
100003d7c: 00 02 1f d6 	br	x16
100003d80: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xa0>
100003d84: 10 3e 40 f9 	ldr	x16, [x16, #120]
100003d88: 00 02 1f d6 	br	x16
100003d8c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xac>
100003d90: 10 42 40 f9 	ldr	x16, [x16, #128]
100003d94: 00 02 1f d6 	br	x16
100003d98: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xb8>
100003d9c: 10 46 40 f9 	ldr	x16, [x16, #136]
100003da0: 00 02 1f d6 	br	x16
100003da4: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xc4>
100003da8: 10 4a 40 f9 	ldr	x16, [x16, #144]
100003dac: 00 02 1f d6 	br	x16
100003db0: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xd0>
100003db4: 10 4e 40 f9 	ldr	x16, [x16, #152]
100003db8: 00 02 1f d6 	br	x16
100003dbc: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xdc>
100003dc0: 10 52 40 f9 	ldr	x16, [x16, #160]
100003dc4: 00 02 1f d6 	br	x16
100003dc8: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xe8>
100003dcc: 10 5a 40 f9 	ldr	x16, [x16, #176]
100003dd0: 00 02 1f d6 	br	x16
100003dd4: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xf4>
100003dd8: 10 5e 40 f9 	ldr	x16, [x16, #184]
100003ddc: 00 02 1f d6 	br	x16
100003de0: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x100>
100003de4: 10 66 40 f9 	ldr	x16, [x16, #200]
100003de8: 00 02 1f d6 	br	x16
100003dec: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x10c>
100003df0: 10 6e 40 f9 	ldr	x16, [x16, #216]
100003df4: 00 02 1f d6 	br	x16
100003df8: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x118>
100003dfc: 10 72 40 f9 	ldr	x16, [x16, #224]
100003e00: 00 02 1f d6 	br	x16
100003e04: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x124>
100003e08: 10 76 40 f9 	ldr	x16, [x16, #232]
100003e0c: 00 02 1f d6 	br	x16
100003e10: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x130>
100003e14: 10 7a 40 f9 	ldr	x16, [x16, #240]
100003e18: 00 02 1f d6 	br	x16
100003e1c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x13c>
100003e20: 10 7e 40 f9 	ldr	x16, [x16, #248]
100003e24: 00 02 1f d6 	br	x16
