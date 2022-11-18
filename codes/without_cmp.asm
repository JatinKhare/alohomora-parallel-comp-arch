
mcs_lock_working_clang.o:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000100002a38 <__Z8print_llP5qnode>:
100002a38: ff 03 01 d1 	sub	sp, sp, #64
100002a3c: fd 7b 03 a9 	stp	x29, x30, [sp, #48]
100002a40: fd c3 00 91 	add	x29, sp, #48
100002a44: a0 83 1f f8 	stur	x0, [x29, #-8]
100002a48: bf 43 1f b8 	stur	wzr, [x29, #-12]
100002a4c: 01 00 00 14 	b	0x100002a50 <__Z8print_llP5qnode+0x18>
100002a50: a8 83 5f f8 	ldur	x8, [x29, #-8]
100002a54: 48 04 00 b4 	cbz	x8, 0x100002adc <__Z8print_llP5qnode+0xa4>
100002a58: 01 00 00 14 	b	0x100002a5c <__Z8print_llP5qnode+0x24>
100002a5c: 00 00 00 d0 	adrp	x0, 0x100004000 <__Z8print_llP5qnode+0x2c>
100002a60: 00 34 40 f9 	ldr	x0, [x0, #104]
100002a64: 01 00 00 b0 	adrp	x1, 0x100003000 <__Z8print_llP5qnode+0x30>
100002a68: 21 c0 3a 91 	add	x1, x1, #3760
100002a6c: e1 0b 00 f9 	str	x1, [sp, #16]
100002a70: c9 04 00 94 	bl	0x100003d94 <_strlen+0x100003d94>
100002a74: e0 07 00 f9 	str	x0, [sp, #8]
100002a78: 3e 00 00 94 	bl	0x100002b70 <__ZNSt3__111this_threadL6get_idEv>
100002a7c: e8 03 00 aa 	mov	x8, x0
100002a80: e0 07 40 f9 	ldr	x0, [sp, #8]
100002a84: e8 0f 00 f9 	str	x8, [sp, #24]
100002a88: e1 0f 40 f9 	ldr	x1, [sp, #24]
100002a8c: 2e 00 00 94 	bl	0x100002b44 <__ZNSt3__1lsIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_11__thread_idE>
100002a90: 01 00 00 b0 	adrp	x1, 0x100003000 <__Z8print_llP5qnode+0x5c>
100002a94: 21 c8 3a 91 	add	x1, x1, #3762
100002a98: bf 04 00 94 	bl	0x100003d94 <_strlen+0x100003d94>
100002a9c: a1 83 5f f8 	ldur	x1, [x29, #-8]
100002aa0: ab 04 00 94 	bl	0x100003d4c <_strlen+0x100003d4c>
100002aa4: e1 0b 40 f9 	ldr	x1, [sp, #16]
100002aa8: bb 04 00 94 	bl	0x100003d94 <_strlen+0x100003d94>
100002aac: a1 43 5f b8 	ldur	w1, [x29, #-12]
100002ab0: aa 04 00 94 	bl	0x100003d58 <_strlen+0x100003d58>
100002ab4: 01 00 00 b0 	adrp	x1, 0x100003000 <__Z8print_llP5qnode+0x80>
100002ab8: 21 d0 3a 91 	add	x1, x1, #3764
100002abc: b6 04 00 94 	bl	0x100003d94 <_strlen+0x100003d94>
100002ac0: a8 83 5f f8 	ldur	x8, [x29, #-8]
100002ac4: 08 01 40 f9 	ldr	x8, [x8]
100002ac8: a8 83 1f f8 	stur	x8, [x29, #-8]
100002acc: a8 43 5f b8 	ldur	w8, [x29, #-12]
100002ad0: 08 05 00 11 	add	w8, w8, #1
100002ad4: a8 43 1f b8 	stur	w8, [x29, #-12]
100002ad8: de ff ff 17 	b	0x100002a50 <__Z8print_llP5qnode+0x18>
100002adc: 00 00 00 d0 	adrp	x0, 0x100004000 <__Z8print_llP5qnode+0xac>
100002ae0: 00 34 40 f9 	ldr	x0, [x0, #104]
100002ae4: 01 00 00 b0 	adrp	x1, 0x100003000 <__Z8print_llP5qnode+0xb0>
100002ae8: 21 e8 3a 91 	add	x1, x1, #3770
100002aec: aa 04 00 94 	bl	0x100003d94 <_strlen+0x100003d94>
100002af0: fd 7b 43 a9 	ldp	x29, x30, [sp, #48]
100002af4: ff 03 01 91 	add	sp, sp, #64
100002af8: c0 03 5f d6 	ret

0000000100002afc <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>:
100002afc: ff c3 00 d1 	sub	sp, sp, #48
100002b00: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100002b04: fd 83 00 91 	add	x29, sp, #32
100002b08: a0 83 1f f8 	stur	x0, [x29, #-8]
100002b0c: e1 0b 00 f9 	str	x1, [sp, #16]
100002b10: a8 83 5f f8 	ldur	x8, [x29, #-8]
100002b14: e8 07 00 f9 	str	x8, [sp, #8]
100002b18: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002b1c: e8 03 00 f9 	str	x8, [sp]
100002b20: e0 0b 40 f9 	ldr	x0, [sp, #16]
100002b24: 7b 04 00 94 	bl	0x100003d10 <_strlen+0x100003d10>
100002b28: e1 03 40 f9 	ldr	x1, [sp]
100002b2c: e2 03 00 aa 	mov	x2, x0
100002b30: e0 07 40 f9 	ldr	x0, [sp, #8]
100002b34: 8c 04 00 94 	bl	0x100003d64 <_strlen+0x100003d64>
100002b38: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100002b3c: ff c3 00 91 	add	sp, sp, #48
100002b40: c0 03 5f d6 	ret

0000000100002b44 <__ZNSt3__1lsIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_11__thread_idE>:
100002b44: ff 83 00 d1 	sub	sp, sp, #32
100002b48: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100002b4c: fd 43 00 91 	add	x29, sp, #16
100002b50: e1 07 00 f9 	str	x1, [sp, #8]
100002b54: e0 03 00 f9 	str	x0, [sp]
100002b58: e0 03 40 f9 	ldr	x0, [sp]
100002b5c: e1 07 40 f9 	ldr	x1, [sp, #8]
100002b60: 7b 04 00 94 	bl	0x100003d4c <_strlen+0x100003d4c>
100002b64: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100002b68: ff 83 00 91 	add	sp, sp, #32
100002b6c: c0 03 5f d6 	ret

0000000100002b70 <__ZNSt3__111this_threadL6get_idEv>:
100002b70: ff 83 00 d1 	sub	sp, sp, #32
100002b74: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100002b78: fd 43 00 91 	add	x29, sp, #16
100002b7c: 0d 01 00 94 	bl	0x100002fb0 <__ZNSt3__1L30__libcpp_thread_get_current_idEv>
100002b80: e0 03 00 f9 	str	x0, [sp]
100002b84: 01 00 00 14 	b	0x100002b88 <__ZNSt3__111this_threadL6get_idEv+0x18>
100002b88: e1 03 40 f9 	ldr	x1, [sp]
100002b8c: e0 23 00 91 	add	x0, sp, #8
100002b90: 16 01 00 94 	bl	0x100002fe8 <__ZNSt3__111__thread_idC1EP17_opaque_pthread_t>
100002b94: 01 00 00 14 	b	0x100002b98 <__ZNSt3__111this_threadL6get_idEv+0x28>
100002b98: e0 07 40 f9 	ldr	x0, [sp, #8]
100002b9c: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100002ba0: ff 83 00 91 	add	sp, sp, #32
100002ba4: c0 03 5f d6 	ret
100002ba8: 0d 01 00 94 	bl	0x100002fdc <___clang_call_terminate>

0000000100002bac <__Z4lockPNSt3__16atomicIP5qnodeEES2_>:
100002bac: ff c3 00 d1 	sub	sp, sp, #48
100002bb0: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100002bb4: fd 83 00 91 	add	x29, sp, #32
100002bb8: a0 83 1f f8 	stur	x0, [x29, #-8]
100002bbc: e1 0b 00 f9 	str	x1, [sp, #16]
100002bc0: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002bc4: 1f 01 00 f9 	str	xzr, [x8]
100002bc8: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002bcc: e8 07 00 f9 	str	x8, [sp, #8]
100002bd0: a0 83 5f f8 	ldur	x0, [x29, #-8]
100002bd4: e1 07 40 f9 	ldr	x1, [sp, #8]
100002bd8: a2 00 80 52 	mov	w2, #5
100002bdc: 15 00 00 94 	bl	0x100002c30 <__ZNSt3__113__atomic_baseIP5qnodeLb0EE8exchangeES2_NS_12memory_orderE>
100002be0: e0 07 00 f9 	str	x0, [sp, #8]
100002be4: e8 07 40 f9 	ldr	x8, [sp, #8]
100002be8: e8 01 00 b4 	cbz	x8, 0x100002c24 <__Z4lockPNSt3__16atomicIP5qnodeEES2_+0x78>
100002bec: 01 00 00 14 	b	0x100002bf0 <__Z4lockPNSt3__16atomicIP5qnodeEES2_+0x44>
100002bf0: e9 0b 40 f9 	ldr	x9, [sp, #16]
100002bf4: 28 00 80 52 	mov	w8, #1
100002bf8: 28 21 00 39 	strb	w8, [x9, #8]
100002bfc: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002c00: e9 07 40 f9 	ldr	x9, [sp, #8]
100002c04: 28 01 00 f9 	str	x8, [x9]
100002c08: 01 00 00 14 	b	0x100002c0c <__Z4lockPNSt3__16atomicIP5qnodeEES2_+0x60>
100002c0c: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002c10: 08 21 40 39 	ldrb	w8, [x8, #8]
100002c14: 68 00 00 36 	tbz	w8, #0, 0x100002c20 <__Z4lockPNSt3__16atomicIP5qnodeEES2_+0x74>
100002c18: 01 00 00 14 	b	0x100002c1c <__Z4lockPNSt3__16atomicIP5qnodeEES2_+0x70>
100002c1c: fc ff ff 17 	b	0x100002c0c <__Z4lockPNSt3__16atomicIP5qnodeEES2_+0x60>
100002c20: 01 00 00 14 	b	0x100002c24 <__Z4lockPNSt3__16atomicIP5qnodeEES2_+0x78>
100002c24: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100002c28: ff c3 00 91 	add	sp, sp, #48
100002c2c: c0 03 5f d6 	ret

0000000100002c30 <__ZNSt3__113__atomic_baseIP5qnodeLb0EE8exchangeES2_NS_12memory_orderE>:
100002c30: ff c3 00 d1 	sub	sp, sp, #48
100002c34: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100002c38: fd 83 00 91 	add	x29, sp, #32
100002c3c: a0 83 1f f8 	stur	x0, [x29, #-8]
100002c40: e1 0b 00 f9 	str	x1, [sp, #16]
100002c44: e2 0f 00 b9 	str	w2, [sp, #12]
100002c48: a0 83 5f f8 	ldur	x0, [x29, #-8]
100002c4c: e1 0b 40 f9 	ldr	x1, [sp, #16]
100002c50: e2 0f 40 b9 	ldr	w2, [sp, #12]
100002c54: b1 03 00 94 	bl	0x100003b18 <__ZNSt3__1L21__cxx_atomic_exchangeIP5qnodeEET_PNS_22__cxx_atomic_base_implIS3_EES3_NS_12memory_orderE>
100002c58: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100002c5c: ff c3 00 91 	add	sp, sp, #48
100002c60: c0 03 5f d6 	ret

0000000100002c64 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_>:
100002c64: ff c3 00 d1 	sub	sp, sp, #48
100002c68: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100002c6c: fd 83 00 91 	add	x29, sp, #32
100002c70: a0 83 1f f8 	stur	x0, [x29, #-8]
100002c74: e1 0b 00 f9 	str	x1, [sp, #16]
100002c78: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002c7c: 08 01 40 f9 	ldr	x8, [x8]
100002c80: c8 00 00 b4 	cbz	x8, 0x100002c98 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0x34>
100002c84: 01 00 00 14 	b	0x100002c88 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0x24>
100002c88: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002c8c: 08 01 40 f9 	ldr	x8, [x8]
100002c90: 1f 21 00 39 	strb	wzr, [x8, #8]
100002c94: 27 00 00 14 	b	0x100002d30 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0xcc>
100002c98: ff 07 00 f9 	str	xzr, [sp, #8]
100002c9c: a0 83 5f f8 	ldur	x0, [x29, #-8]
100002ca0: e1 07 40 f9 	ldr	x1, [sp, #8]
100002ca4: a2 00 80 52 	mov	w2, #5
100002ca8: e2 ff ff 97 	bl	0x100002c30 <__ZNSt3__113__atomic_baseIP5qnodeLb0EE8exchangeES2_NS_12memory_orderE>
100002cac: e0 07 00 f9 	str	x0, [sp, #8]
100002cb0: e8 07 40 f9 	ldr	x8, [sp, #8]
100002cb4: e9 0b 40 f9 	ldr	x9, [sp, #16]
100002cb8: 08 01 09 eb 	subs	x8, x8, x9
100002cbc: 61 00 00 54 	b.ne	0x100002cc8 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0x64>
100002cc0: 01 00 00 14 	b	0x100002cc4 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0x60>
100002cc4: 1b 00 00 14 	b	0x100002d30 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0xcc>
100002cc8: e8 07 40 f9 	ldr	x8, [sp, #8]
100002ccc: e8 03 00 f9 	str	x8, [sp]
100002cd0: a0 83 5f f8 	ldur	x0, [x29, #-8]
100002cd4: e1 03 40 f9 	ldr	x1, [sp]
100002cd8: a2 00 80 52 	mov	w2, #5
100002cdc: d5 ff ff 97 	bl	0x100002c30 <__ZNSt3__113__atomic_baseIP5qnodeLb0EE8exchangeES2_NS_12memory_orderE>
100002ce0: e0 03 00 f9 	str	x0, [sp]
100002ce4: 01 00 00 14 	b	0x100002ce8 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0x84>
100002ce8: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002cec: 08 01 40 f9 	ldr	x8, [x8]
100002cf0: 68 00 00 b5 	cbnz	x8, 0x100002cfc <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0x98>
100002cf4: 01 00 00 14 	b	0x100002cf8 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0x94>
100002cf8: fc ff ff 17 	b	0x100002ce8 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0x84>
100002cfc: e8 03 40 f9 	ldr	x8, [sp]
100002d00: e8 00 00 b4 	cbz	x8, 0x100002d1c <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0xb8>
100002d04: 01 00 00 14 	b	0x100002d08 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0xa4>
100002d08: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002d0c: 08 01 40 f9 	ldr	x8, [x8]
100002d10: e9 03 40 f9 	ldr	x9, [sp]
100002d14: 28 01 00 f9 	str	x8, [x9]
100002d18: 05 00 00 14 	b	0x100002d2c <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0xc8>
100002d1c: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002d20: 08 01 40 f9 	ldr	x8, [x8]
100002d24: 1f 21 00 39 	strb	wzr, [x8, #8]
100002d28: 01 00 00 14 	b	0x100002d2c <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0xc8>
100002d2c: 01 00 00 14 	b	0x100002d30 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0xcc>
100002d30: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100002d34: ff c3 00 91 	add	sp, sp, #48
100002d38: c0 03 5f d6 	ret

0000000100002d3c <__Z12lock_examplePv>:
100002d3c: ff c3 00 d1 	sub	sp, sp, #48
100002d40: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100002d44: fd 83 00 91 	add	x29, sp, #32
100002d48: a0 83 1f f8 	stur	x0, [x29, #-8]
100002d4c: bf 43 1f b8 	stur	wzr, [x29, #-12]
100002d50: 01 00 00 14 	b	0x100002d54 <__Z12lock_examplePv+0x18>
100002d54: a8 43 5f b8 	ldur	w8, [x29, #-12]
100002d58: 08 41 00 71 	subs	w8, w8, #16
100002d5c: 2a 03 00 54 	b.ge	0x100002dc0 <__Z12lock_examplePv+0x84>
100002d60: 01 00 00 14 	b	0x100002d64 <__Z12lock_examplePv+0x28>
100002d64: 00 02 80 d2 	mov	x0, #16
100002d68: 11 04 00 94 	bl	0x100003dac <_strlen+0x100003dac>
100002d6c: e0 07 00 f9 	str	x0, [sp, #8]
100002d70: 28 00 00 d0 	adrp	x8, 0x100008000 <__Z12lock_examplePv+0x4c>
100002d74: e8 03 00 f9 	str	x8, [sp]
100002d78: 00 25 40 f9 	ldr	x0, [x8, #72]
100002d7c: e1 07 40 f9 	ldr	x1, [sp, #8]
100002d80: 8b ff ff 97 	bl	0x100002bac <__Z4lockPNSt3__16atomicIP5qnodeEES2_>
100002d84: e8 03 40 f9 	ldr	x8, [sp]
100002d88: 2a 00 00 d0 	adrp	x10, 0x100008000 <__Z12lock_examplePv+0x64>
100002d8c: 49 41 40 b9 	ldr	w9, [x10, #64]
100002d90: 29 05 00 11 	add	w9, w9, #1
100002d94: 49 41 00 b9 	str	w9, [x10, #64]
100002d98: 00 25 40 f9 	ldr	x0, [x8, #72]
100002d9c: e1 07 40 f9 	ldr	x1, [sp, #8]
100002da0: b1 ff ff 97 	bl	0x100002c64 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_>
100002da4: e0 07 40 f9 	ldr	x0, [sp, #8]
100002da8: 0d 04 00 94 	bl	0x100003ddc <_strlen+0x100003ddc>
100002dac: 01 00 00 14 	b	0x100002db0 <__Z12lock_examplePv+0x74>
100002db0: a8 43 5f b8 	ldur	w8, [x29, #-12]
100002db4: 08 05 00 11 	add	w8, w8, #1
100002db8: a8 43 1f b8 	stur	w8, [x29, #-12]
100002dbc: e6 ff ff 17 	b	0x100002d54 <__Z12lock_examplePv+0x18>
100002dc0: 00 00 80 d2 	mov	x0, #0
100002dc4: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100002dc8: ff c3 00 91 	add	sp, sp, #48
100002dcc: c0 03 5f d6 	ret

0000000100002dd0 <_main>:
100002dd0: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
100002dd4: fd 03 00 91 	mov	x29, sp
100002dd8: ff 03 01 d1 	sub	sp, sp, #64
100002ddc: 08 00 00 d0 	adrp	x8, 0x100004000 <_main+0x14>
100002de0: 08 69 40 f9 	ldr	x8, [x8, #208]
100002de4: 08 01 40 f9 	ldr	x8, [x8]
100002de8: a8 83 1f f8 	stur	x8, [x29, #-8]
100002dec: bf 43 1f b8 	stur	wzr, [x29, #-12]
100002df0: 20 00 00 d0 	adrp	x0, 0x100008000 <_main+0x38>
100002df4: 00 00 00 91 	add	x0, x0, #0
100002df8: 01 00 80 d2 	mov	x1, #0
100002dfc: 04 04 00 94 	bl	0x100003e0c <_strlen+0x100003e0c>
100002e00: 00 01 00 34 	cbz	w0, 0x100002e20 <_main+0x50>
100002e04: 01 00 00 14 	b	0x100002e08 <_main+0x38>
100002e08: 00 00 00 b0 	adrp	x0, 0x100003000 <_main+0x3c>
100002e0c: 00 f0 3a 91 	add	x0, x0, #3772
100002e10: f6 03 00 94 	bl	0x100003de8 <_strlen+0x100003de8>
100002e14: 28 00 80 52 	mov	w8, #1
100002e18: a8 43 1f b8 	stur	w8, [x29, #-12]
100002e1c: 4a 00 00 14 	b	0x100002f44 <_main+0x174>
100002e20: 28 00 00 d0 	adrp	x8, 0x100008000 <_main+0x68>
100002e24: 00 25 40 f9 	ldr	x0, [x8, #72]
100002e28: 01 00 80 d2 	mov	x1, #0
100002e2c: 54 00 00 94 	bl	0x100002f7c <__ZNSt3__16atomicIP5qnodeEaSES2_>
100002e30: 08 08 80 52 	mov	w8, #64
100002e34: a8 03 1f b8 	stur	w8, [x29, #-16]
100002e38: a8 03 5f b8 	ldur	w8, [x29, #-16]
100002e3c: e9 03 00 91 	mov	x9, sp
100002e40: a9 83 1e f8 	stur	x9, [x29, #-24]
100002e44: 09 f1 7d d3 	lsl	x9, x8, #3
100002e48: 29 3d 00 91 	add	x9, x9, #15
100002e4c: 29 ed 7c 92 	and	x9, x9, #0xfffffffffffffff0
100002e50: a9 83 1c f8 	stur	x9, [x29, #-56]
100002e54: 10 00 00 d0 	adrp	x16, 0x100004000 <_main+0x8c>
100002e58: 10 56 40 f9 	ldr	x16, [x16, #168]
100002e5c: 00 02 3f d6 	blr	x16
100002e60: aa 83 5c f8 	ldur	x10, [x29, #-56]
100002e64: e9 03 00 91 	mov	x9, sp
100002e68: 29 01 0a eb 	subs	x9, x9, x10
100002e6c: 3f 01 00 91 	mov	sp, x9
100002e70: a9 03 1d f8 	stur	x9, [x29, #-48]
100002e74: a8 03 1e f8 	stur	x8, [x29, #-32]
100002e78: bf c3 1d b8 	stur	wzr, [x29, #-36]
100002e7c: 01 00 00 14 	b	0x100002e80 <_main+0xb0>
100002e80: a8 c3 5d b8 	ldur	w8, [x29, #-36]
100002e84: a9 03 5f b8 	ldur	w9, [x29, #-16]
100002e88: 08 01 09 6b 	subs	w8, w8, w9
100002e8c: ea 01 00 54 	b.ge	0x100002ec8 <_main+0xf8>
100002e90: 01 00 00 14 	b	0x100002e94 <_main+0xc4>
100002e94: a8 03 5d f8 	ldur	x8, [x29, #-48]
100002e98: a9 c3 9d b8 	ldursw	x9, [x29, #-36]
100002e9c: 00 0d 09 8b 	add	x0, x8, x9, lsl #3
100002ea0: 03 00 80 d2 	mov	x3, #0
100002ea4: e1 03 03 aa 	mov	x1, x3
100002ea8: 02 00 00 90 	adrp	x2, 0x100002000 <_main+0xd8>
100002eac: 42 f0 34 91 	add	x2, x2, #3388
100002eb0: d1 03 00 94 	bl	0x100003df4 <_strlen+0x100003df4>
100002eb4: 01 00 00 14 	b	0x100002eb8 <_main+0xe8>
100002eb8: a8 c3 5d b8 	ldur	w8, [x29, #-36]
100002ebc: 08 05 00 11 	add	w8, w8, #1
100002ec0: a8 c3 1d b8 	stur	w8, [x29, #-36]
100002ec4: ef ff ff 17 	b	0x100002e80 <_main+0xb0>
100002ec8: bf 83 1d b8 	stur	wzr, [x29, #-40]
100002ecc: 01 00 00 14 	b	0x100002ed0 <_main+0x100>
100002ed0: a8 83 5d b8 	ldur	w8, [x29, #-40]
100002ed4: a9 03 5f b8 	ldur	w9, [x29, #-16]
100002ed8: 08 01 09 6b 	subs	w8, w8, w9
100002edc: 8a 01 00 54 	b.ge	0x100002f0c <_main+0x13c>
100002ee0: 01 00 00 14 	b	0x100002ee4 <_main+0x114>
100002ee4: a8 03 5d f8 	ldur	x8, [x29, #-48]
100002ee8: a9 83 9d b8 	ldursw	x9, [x29, #-40]
100002eec: 00 79 69 f8 	ldr	x0, [x8, x9, lsl #3]
100002ef0: 01 00 80 d2 	mov	x1, #0
100002ef4: c3 03 00 94 	bl	0x100003e00 <_strlen+0x100003e00>
100002ef8: 01 00 00 14 	b	0x100002efc <_main+0x12c>
100002efc: a8 83 5d b8 	ldur	w8, [x29, #-40]
100002f00: 08 05 00 11 	add	w8, w8, #1
100002f04: a8 83 1d b8 	stur	w8, [x29, #-40]
100002f08: f2 ff ff 17 	b	0x100002ed0 <_main+0x100>
100002f0c: 00 00 00 d0 	adrp	x0, 0x100004000 <_main+0x144>
100002f10: 00 34 40 f9 	ldr	x0, [x0, #104]
100002f14: 01 00 00 b0 	adrp	x1, 0x100003000 <_main+0x148>
100002f18: 21 54 3b 91 	add	x1, x1, #3797
100002f1c: 9e 03 00 94 	bl	0x100003d94 <_strlen+0x100003d94>
100002f20: 28 00 00 d0 	adrp	x8, 0x100008000 <_main+0x168>
100002f24: 01 41 40 b9 	ldr	w1, [x8, #64]
100002f28: 8c 03 00 94 	bl	0x100003d58 <_strlen+0x100003d58>
100002f2c: 01 00 00 b0 	adrp	x1, 0x100003000 <_main+0x160>
100002f30: 21 e8 3a 91 	add	x1, x1, #3770
100002f34: 98 03 00 94 	bl	0x100003d94 <_strlen+0x100003d94>
100002f38: a8 83 5e f8 	ldur	x8, [x29, #-24]
100002f3c: 1f 01 00 91 	mov	sp, x8
100002f40: 01 00 00 14 	b	0x100002f44 <_main+0x174>
100002f44: a8 43 5f b8 	ldur	w8, [x29, #-12]
100002f48: a8 43 1c b8 	stur	w8, [x29, #-60]
100002f4c: a9 83 5f f8 	ldur	x9, [x29, #-8]
100002f50: 08 00 00 d0 	adrp	x8, 0x100004000 <_main+0x188>
100002f54: 08 69 40 f9 	ldr	x8, [x8, #208]
100002f58: 08 01 40 f9 	ldr	x8, [x8]
100002f5c: 08 01 09 eb 	subs	x8, x8, x9
100002f60: 60 00 00 54 	b.eq	0x100002f6c <_main+0x19c>
100002f64: 01 00 00 14 	b	0x100002f68 <_main+0x198>
100002f68: 9a 03 00 94 	bl	0x100003dd0 <_strlen+0x100003dd0>
100002f6c: a0 43 5c b8 	ldur	w0, [x29, #-60]
100002f70: bf 03 00 91 	mov	sp, x29
100002f74: fd 7b c1 a8 	ldp	x29, x30, [sp], #16
100002f78: c0 03 5f d6 	ret

0000000100002f7c <__ZNSt3__16atomicIP5qnodeEaSES2_>:
100002f7c: ff 83 00 d1 	sub	sp, sp, #32
100002f80: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100002f84: fd 43 00 91 	add	x29, sp, #16
100002f88: e0 07 00 f9 	str	x0, [sp, #8]
100002f8c: e1 03 00 f9 	str	x1, [sp]
100002f90: e0 07 40 f9 	ldr	x0, [sp, #8]
100002f94: e1 03 40 f9 	ldr	x1, [sp]
100002f98: a2 00 80 52 	mov	w2, #5
100002f9c: 14 03 00 94 	bl	0x100003bec <__ZNSt3__113__atomic_baseIP5qnodeLb0EE5storeES2_NS_12memory_orderE>
100002fa0: e0 03 40 f9 	ldr	x0, [sp]
100002fa4: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100002fa8: ff 83 00 91 	add	sp, sp, #32
100002fac: c0 03 5f d6 	ret

0000000100002fb0 <__ZNSt3__1L30__libcpp_thread_get_current_idEv>:
100002fb0: ff 83 00 d1 	sub	sp, sp, #32
100002fb4: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100002fb8: fd 43 00 91 	add	x29, sp, #16
100002fbc: 97 03 00 94 	bl	0x100003e18 <_strlen+0x100003e18>
100002fc0: e8 03 00 aa 	mov	x8, x0
100002fc4: e0 23 00 91 	add	x0, sp, #8
100002fc8: e8 07 00 f9 	str	x8, [sp, #8]
100002fcc: 14 00 00 94 	bl	0x10000301c <__ZNSt3__1L22__libcpp_thread_get_idEPKP17_opaque_pthread_t>
100002fd0: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100002fd4: ff 83 00 91 	add	sp, sp, #32
100002fd8: c0 03 5f d6 	ret

0000000100002fdc <___clang_call_terminate>:
100002fdc: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
100002fe0: 76 03 00 94 	bl	0x100003db8 <_strlen+0x100003db8>
100002fe4: 6f 03 00 94 	bl	0x100003da0 <_strlen+0x100003da0>

0000000100002fe8 <__ZNSt3__111__thread_idC1EP17_opaque_pthread_t>:
100002fe8: ff c3 00 d1 	sub	sp, sp, #48
100002fec: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100002ff0: fd 83 00 91 	add	x29, sp, #32
100002ff4: a0 83 1f f8 	stur	x0, [x29, #-8]
100002ff8: e1 0b 00 f9 	str	x1, [sp, #16]
100002ffc: a0 83 5f f8 	ldur	x0, [x29, #-8]
100003000: e0 07 00 f9 	str	x0, [sp, #8]
100003004: e1 0b 40 f9 	ldr	x1, [sp, #16]
100003008: 0b 00 00 94 	bl	0x100003034 <__ZNSt3__111__thread_idC2EP17_opaque_pthread_t>
10000300c: e0 07 40 f9 	ldr	x0, [sp, #8]
100003010: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003014: ff c3 00 91 	add	sp, sp, #48
100003018: c0 03 5f d6 	ret

000000010000301c <__ZNSt3__1L22__libcpp_thread_get_idEPKP17_opaque_pthread_t>:
10000301c: ff 43 00 d1 	sub	sp, sp, #16
100003020: e0 07 00 f9 	str	x0, [sp, #8]
100003024: e8 07 40 f9 	ldr	x8, [sp, #8]
100003028: 00 01 40 f9 	ldr	x0, [x8]
10000302c: ff 43 00 91 	add	sp, sp, #16
100003030: c0 03 5f d6 	ret

0000000100003034 <__ZNSt3__111__thread_idC2EP17_opaque_pthread_t>:
100003034: ff 43 00 d1 	sub	sp, sp, #16
100003038: e0 07 00 f9 	str	x0, [sp, #8]
10000303c: e1 03 00 f9 	str	x1, [sp]
100003040: e0 07 40 f9 	ldr	x0, [sp, #8]
100003044: e8 03 40 f9 	ldr	x8, [sp]
100003048: 08 00 00 f9 	str	x8, [x0]
10000304c: ff 43 00 91 	add	sp, sp, #16
100003050: c0 03 5f d6 	ret

0000000100003054 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>:
100003054: ff 83 02 d1 	sub	sp, sp, #160
100003058: fd 7b 09 a9 	stp	x29, x30, [sp, #144]
10000305c: fd 43 02 91 	add	x29, sp, #144
100003060: a0 83 1f f8 	stur	x0, [x29, #-8]
100003064: a1 03 1f f8 	stur	x1, [x29, #-16]
100003068: a2 83 1e f8 	stur	x2, [x29, #-24]
10000306c: a1 83 5f f8 	ldur	x1, [x29, #-8]
100003070: a0 a3 00 d1 	sub	x0, x29, #40
100003074: 30 03 00 94 	bl	0x100003d34 <_strlen+0x100003d34>
100003078: 01 00 00 14 	b	0x10000307c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x28>
10000307c: a0 a3 00 d1 	sub	x0, x29, #40
100003080: 78 00 00 94 	bl	0x100003260 <__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv>
100003084: e0 47 00 b9 	str	w0, [sp, #68]
100003088: 01 00 00 14 	b	0x10000308c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x38>
10000308c: e8 47 40 b9 	ldr	w8, [sp, #68]
100003090: e8 0b 00 36 	tbz	w8, #0, 0x10000320c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b8>
100003094: 01 00 00 14 	b	0x100003098 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x44>
100003098: a1 83 5f f8 	ldur	x1, [x29, #-8]
10000309c: e0 23 01 91 	add	x0, sp, #72
1000030a0: fc 00 00 94 	bl	0x100003490 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE>
1000030a4: a8 03 5f f8 	ldur	x8, [x29, #-16]
1000030a8: e8 1f 00 f9 	str	x8, [sp, #56]
1000030ac: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000030b0: 09 01 40 f9 	ldr	x9, [x8]
1000030b4: 29 81 5e f8 	ldur	x9, [x9, #-24]
1000030b8: 00 01 09 8b 	add	x0, x8, x9
1000030bc: 02 01 00 94 	bl	0x1000034c4 <__ZNKSt3__18ios_base5flagsEv>
1000030c0: e0 43 00 b9 	str	w0, [sp, #64]
1000030c4: 01 00 00 14 	b	0x1000030c8 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x74>
1000030c8: e8 43 40 b9 	ldr	w8, [sp, #64]
1000030cc: 09 16 80 52 	mov	w9, #176
1000030d0: 08 01 09 0a 	and	w8, w8, w9
1000030d4: 08 81 00 71 	subs	w8, w8, #32
1000030d8: e1 00 00 54 	b.ne	0x1000030f4 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xa0>
1000030dc: 01 00 00 14 	b	0x1000030e0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x8c>
1000030e0: a8 03 5f f8 	ldur	x8, [x29, #-16]
1000030e4: a9 83 5e f8 	ldur	x9, [x29, #-24]
1000030e8: 08 01 09 8b 	add	x8, x8, x9
1000030ec: e8 1b 00 f9 	str	x8, [sp, #48]
1000030f0: 04 00 00 14 	b	0x100003100 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xac>
1000030f4: a8 03 5f f8 	ldur	x8, [x29, #-16]
1000030f8: e8 1b 00 f9 	str	x8, [sp, #48]
1000030fc: 01 00 00 14 	b	0x100003100 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xac>
100003100: e8 1b 40 f9 	ldr	x8, [sp, #48]
100003104: e8 0b 00 f9 	str	x8, [sp, #16]
100003108: a8 03 5f f8 	ldur	x8, [x29, #-16]
10000310c: a9 83 5e f8 	ldur	x9, [x29, #-24]
100003110: 08 01 09 8b 	add	x8, x8, x9
100003114: e8 0f 00 f9 	str	x8, [sp, #24]
100003118: a8 83 5f f8 	ldur	x8, [x29, #-8]
10000311c: 09 01 40 f9 	ldr	x9, [x8]
100003120: 29 81 5e f8 	ldur	x9, [x9, #-24]
100003124: 08 01 09 8b 	add	x8, x8, x9
100003128: e8 13 00 f9 	str	x8, [sp, #32]
10000312c: a8 83 5f f8 	ldur	x8, [x29, #-8]
100003130: 09 01 40 f9 	ldr	x9, [x8]
100003134: 29 81 5e f8 	ldur	x9, [x9, #-24]
100003138: 00 01 09 8b 	add	x0, x8, x9
10000313c: e8 00 00 94 	bl	0x1000034dc <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv>
100003140: e0 2f 00 b9 	str	w0, [sp, #44]
100003144: 01 00 00 14 	b	0x100003148 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xf4>
100003148: e8 2f 40 b9 	ldr	w8, [sp, #44]
10000314c: e4 13 40 f9 	ldr	x4, [sp, #32]
100003150: e3 0f 40 f9 	ldr	x3, [sp, #24]
100003154: e2 0b 40 f9 	ldr	x2, [sp, #16]
100003158: e1 1f 40 f9 	ldr	x1, [sp, #56]
10000315c: e0 27 40 f9 	ldr	x0, [sp, #72]
100003160: 05 1d 00 13 	sxtb	w5, w8
100003164: 46 00 00 94 	bl	0x10000327c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>
100003168: e0 07 00 f9 	str	x0, [sp, #8]
10000316c: 01 00 00 14 	b	0x100003170 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x11c>
100003170: e8 07 40 f9 	ldr	x8, [sp, #8]
100003174: a0 03 01 d1 	sub	x0, x29, #64
100003178: a8 03 1c f8 	stur	x8, [x29, #-64]
10000317c: f1 00 00 94 	bl	0x100003540 <__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv>
100003180: 40 04 00 36 	tbz	w0, #0, 0x100003208 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b4>
100003184: 01 00 00 14 	b	0x100003188 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x134>
100003188: a8 83 5f f8 	ldur	x8, [x29, #-8]
10000318c: 09 01 40 f9 	ldr	x9, [x8]
100003190: 29 81 5e f8 	ldur	x9, [x9, #-24]
100003194: 00 01 09 8b 	add	x0, x8, x9
100003198: a1 00 80 52 	mov	w1, #5
10000319c: f2 00 00 94 	bl	0x100003564 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj>
1000031a0: 01 00 00 14 	b	0x1000031a4 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x150>
1000031a4: 19 00 00 14 	b	0x100003208 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b4>
1000031a8: e8 03 01 aa 	mov	x8, x1
1000031ac: a0 03 1d f8 	stur	x0, [x29, #-48]
1000031b0: a8 c3 1c b8 	stur	w8, [x29, #-52]
1000031b4: 07 00 00 14 	b	0x1000031d0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x17c>
1000031b8: e8 03 01 aa 	mov	x8, x1
1000031bc: a0 03 1d f8 	stur	x0, [x29, #-48]
1000031c0: a8 c3 1c b8 	stur	w8, [x29, #-52]
1000031c4: a0 a3 00 d1 	sub	x0, x29, #40
1000031c8: de 02 00 94 	bl	0x100003d40 <_strlen+0x100003d40>
1000031cc: 01 00 00 14 	b	0x1000031d0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x17c>
1000031d0: a0 03 5d f8 	ldur	x0, [x29, #-48]
1000031d4: f9 02 00 94 	bl	0x100003db8 <_strlen+0x100003db8>
1000031d8: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000031dc: 09 01 40 f9 	ldr	x9, [x8]
1000031e0: 29 81 5e f8 	ldur	x9, [x9, #-24]
1000031e4: 00 01 09 8b 	add	x0, x8, x9
1000031e8: e5 02 00 94 	bl	0x100003d7c <_strlen+0x100003d7c>
1000031ec: 01 00 00 14 	b	0x1000031f0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x19c>
1000031f0: f5 02 00 94 	bl	0x100003dc4 <_strlen+0x100003dc4>
1000031f4: 01 00 00 14 	b	0x1000031f8 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1a4>
1000031f8: a0 83 5f f8 	ldur	x0, [x29, #-8]
1000031fc: fd 7b 49 a9 	ldp	x29, x30, [sp, #144]
100003200: ff 83 02 91 	add	sp, sp, #160
100003204: c0 03 5f d6 	ret
100003208: 01 00 00 14 	b	0x10000320c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b8>
10000320c: a0 a3 00 d1 	sub	x0, x29, #40
100003210: cc 02 00 94 	bl	0x100003d40 <_strlen+0x100003d40>
100003214: f9 ff ff 17 	b	0x1000031f8 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1a4>
100003218: e8 03 01 aa 	mov	x8, x1
10000321c: a0 03 1d f8 	stur	x0, [x29, #-48]
100003220: a8 c3 1c b8 	stur	w8, [x29, #-52]
100003224: e8 02 00 94 	bl	0x100003dc4 <_strlen+0x100003dc4>
100003228: 01 00 00 14 	b	0x10000322c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1d8>
10000322c: 01 00 00 14 	b	0x100003230 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1dc>
100003230: a0 03 5d f8 	ldur	x0, [x29, #-48]
100003234: a8 02 00 94 	bl	0x100003cd4 <_strlen+0x100003cd4>
100003238: 69 ff ff 97 	bl	0x100002fdc <___clang_call_terminate>

000000010000323c <__ZNSt3__111char_traitsIcE6lengthEPKc>:
10000323c: ff 83 00 d1 	sub	sp, sp, #32
100003240: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003244: fd 43 00 91 	add	x29, sp, #16
100003248: e0 07 00 f9 	str	x0, [sp, #8]
10000324c: e0 07 40 f9 	ldr	x0, [sp, #8]
100003250: f5 02 00 94 	bl	0x100003e24 <_strlen+0x100003e24>
100003254: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003258: ff 83 00 91 	add	sp, sp, #32
10000325c: c0 03 5f d6 	ret

0000000100003260 <__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv>:
100003260: ff 43 00 d1 	sub	sp, sp, #16
100003264: e0 07 00 f9 	str	x0, [sp, #8]
100003268: e8 07 40 f9 	ldr	x8, [sp, #8]
10000326c: 08 01 40 39 	ldrb	w8, [x8]
100003270: 00 01 00 12 	and	w0, w8, #0x1
100003274: ff 43 00 91 	add	sp, sp, #16
100003278: c0 03 5f d6 	ret

000000010000327c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>:
10000327c: ff 83 02 d1 	sub	sp, sp, #160
100003280: fd 7b 09 a9 	stp	x29, x30, [sp, #144]
100003284: fd 43 02 91 	add	x29, sp, #144
100003288: a0 03 1f f8 	stur	x0, [x29, #-16]
10000328c: a1 83 1e f8 	stur	x1, [x29, #-24]
100003290: a2 03 1e f8 	stur	x2, [x29, #-32]
100003294: a3 83 1d f8 	stur	x3, [x29, #-40]
100003298: a4 03 1d f8 	stur	x4, [x29, #-48]
10000329c: a5 f3 1c 38 	sturb	w5, [x29, #-49]
1000032a0: a8 03 5f f8 	ldur	x8, [x29, #-16]
1000032a4: a8 00 00 b5 	cbnz	x8, 0x1000032b8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x3c>
1000032a8: 01 00 00 14 	b	0x1000032ac <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x30>
1000032ac: a8 03 5f f8 	ldur	x8, [x29, #-16]
1000032b0: a8 83 1f f8 	stur	x8, [x29, #-8]
1000032b4: 71 00 00 14 	b	0x100003478 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
1000032b8: a8 83 5d f8 	ldur	x8, [x29, #-40]
1000032bc: a9 83 5e f8 	ldur	x9, [x29, #-24]
1000032c0: 08 01 09 eb 	subs	x8, x8, x9
1000032c4: a8 03 1c f8 	stur	x8, [x29, #-64]
1000032c8: a0 03 5d f8 	ldur	x0, [x29, #-48]
1000032cc: b1 00 00 94 	bl	0x100003590 <__ZNKSt3__18ios_base5widthEv>
1000032d0: e0 27 00 f9 	str	x0, [sp, #72]
1000032d4: e8 27 40 f9 	ldr	x8, [sp, #72]
1000032d8: a9 03 5c f8 	ldur	x9, [x29, #-64]
1000032dc: 08 01 09 eb 	subs	x8, x8, x9
1000032e0: ed 00 00 54 	b.le	0x1000032fc <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x80>
1000032e4: 01 00 00 14 	b	0x1000032e8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x6c>
1000032e8: a9 03 5c f8 	ldur	x9, [x29, #-64]
1000032ec: e8 27 40 f9 	ldr	x8, [sp, #72]
1000032f0: 08 01 09 eb 	subs	x8, x8, x9
1000032f4: e8 27 00 f9 	str	x8, [sp, #72]
1000032f8: 03 00 00 14 	b	0x100003304 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x88>
1000032fc: ff 27 00 f9 	str	xzr, [sp, #72]
100003300: 01 00 00 14 	b	0x100003304 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x88>
100003304: a8 03 5e f8 	ldur	x8, [x29, #-32]
100003308: a9 83 5e f8 	ldur	x9, [x29, #-24]
10000330c: 08 01 09 eb 	subs	x8, x8, x9
100003310: e8 23 00 f9 	str	x8, [sp, #64]
100003314: e8 23 40 f9 	ldr	x8, [sp, #64]
100003318: 08 01 00 f1 	subs	x8, x8, #0
10000331c: ed 01 00 54 	b.le	0x100003358 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdc>
100003320: 01 00 00 14 	b	0x100003324 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xa8>
100003324: a0 03 5f f8 	ldur	x0, [x29, #-16]
100003328: a1 83 5e f8 	ldur	x1, [x29, #-24]
10000332c: e2 23 40 f9 	ldr	x2, [sp, #64]
100003330: 9e 00 00 94 	bl	0x1000035a8 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>
100003334: e8 23 40 f9 	ldr	x8, [sp, #64]
100003338: 08 00 08 eb 	subs	x8, x0, x8
10000333c: c0 00 00 54 	b.eq	0x100003354 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xd8>
100003340: 01 00 00 14 	b	0x100003344 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xc8>
100003344: bf 03 1f f8 	stur	xzr, [x29, #-16]
100003348: a8 03 5f f8 	ldur	x8, [x29, #-16]
10000334c: a8 83 1f f8 	stur	x8, [x29, #-8]
100003350: 4a 00 00 14 	b	0x100003478 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
100003354: 01 00 00 14 	b	0x100003358 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdc>
100003358: e8 27 40 f9 	ldr	x8, [sp, #72]
10000335c: 08 01 00 f1 	subs	x8, x8, #0
100003360: 6d 05 00 54 	b.le	0x10000340c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x190>
100003364: 01 00 00 14 	b	0x100003368 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xec>
100003368: e1 27 40 f9 	ldr	x1, [sp, #72]
10000336c: a2 f3 dc 38 	ldursb	w2, [x29, #-49]
100003370: e0 a3 00 91 	add	x0, sp, #40
100003374: e0 03 00 f9 	str	x0, [sp]
100003378: 9b 00 00 94 	bl	0x1000035e4 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc>
10000337c: e0 03 40 f9 	ldr	x0, [sp]
100003380: a8 03 5f f8 	ldur	x8, [x29, #-16]
100003384: e8 07 00 f9 	str	x8, [sp, #8]
100003388: a6 00 00 94 	bl	0x100003620 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv>
10000338c: e1 03 00 aa 	mov	x1, x0
100003390: e0 07 40 f9 	ldr	x0, [sp, #8]
100003394: e2 27 40 f9 	ldr	x2, [sp, #72]
100003398: 84 00 00 94 	bl	0x1000035a8 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>
10000339c: e0 0b 00 f9 	str	x0, [sp, #16]
1000033a0: 01 00 00 14 	b	0x1000033a4 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x128>
1000033a4: e8 0b 40 f9 	ldr	x8, [sp, #16]
1000033a8: e9 27 40 f9 	ldr	x9, [sp, #72]
1000033ac: 08 01 09 eb 	subs	x8, x8, x9
1000033b0: c0 01 00 54 	b.eq	0x1000033e8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x16c>
1000033b4: 01 00 00 14 	b	0x1000033b8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x13c>
1000033b8: bf 03 1f f8 	stur	xzr, [x29, #-16]
1000033bc: a8 03 5f f8 	ldur	x8, [x29, #-16]
1000033c0: a8 83 1f f8 	stur	x8, [x29, #-8]
1000033c4: 28 00 80 52 	mov	w8, #1
1000033c8: e8 1b 00 b9 	str	w8, [sp, #24]
1000033cc: 09 00 00 14 	b	0x1000033f0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x174>
1000033d0: e8 03 01 aa 	mov	x8, x1
1000033d4: e0 13 00 f9 	str	x0, [sp, #32]
1000033d8: e8 1f 00 b9 	str	w8, [sp, #28]
1000033dc: e0 a3 00 91 	add	x0, sp, #40
1000033e0: 52 02 00 94 	bl	0x100003d28 <_strlen+0x100003d28>
1000033e4: 29 00 00 14 	b	0x100003488 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x20c>
1000033e8: ff 1b 00 b9 	str	wzr, [sp, #24]
1000033ec: 01 00 00 14 	b	0x1000033f0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x174>
1000033f0: e0 a3 00 91 	add	x0, sp, #40
1000033f4: 4d 02 00 94 	bl	0x100003d28 <_strlen+0x100003d28>
1000033f8: e8 1b 40 b9 	ldr	w8, [sp, #24]
1000033fc: 68 00 00 34 	cbz	w8, 0x100003408 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x18c>
100003400: 01 00 00 14 	b	0x100003404 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x188>
100003404: 1d 00 00 14 	b	0x100003478 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
100003408: 01 00 00 14 	b	0x10000340c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x190>
10000340c: a8 83 5d f8 	ldur	x8, [x29, #-40]
100003410: a9 03 5e f8 	ldur	x9, [x29, #-32]
100003414: 08 01 09 eb 	subs	x8, x8, x9
100003418: e8 23 00 f9 	str	x8, [sp, #64]
10000341c: e8 23 40 f9 	ldr	x8, [sp, #64]
100003420: 08 01 00 f1 	subs	x8, x8, #0
100003424: ed 01 00 54 	b.le	0x100003460 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e4>
100003428: 01 00 00 14 	b	0x10000342c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1b0>
10000342c: a0 03 5f f8 	ldur	x0, [x29, #-16]
100003430: a1 03 5e f8 	ldur	x1, [x29, #-32]
100003434: e2 23 40 f9 	ldr	x2, [sp, #64]
100003438: 5c 00 00 94 	bl	0x1000035a8 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>
10000343c: e8 23 40 f9 	ldr	x8, [sp, #64]
100003440: 08 00 08 eb 	subs	x8, x0, x8
100003444: c0 00 00 54 	b.eq	0x10000345c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e0>
100003448: 01 00 00 14 	b	0x10000344c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1d0>
10000344c: bf 03 1f f8 	stur	xzr, [x29, #-16]
100003450: a8 03 5f f8 	ldur	x8, [x29, #-16]
100003454: a8 83 1f f8 	stur	x8, [x29, #-8]
100003458: 08 00 00 14 	b	0x100003478 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
10000345c: 01 00 00 14 	b	0x100003460 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e4>
100003460: a0 03 5d f8 	ldur	x0, [x29, #-48]
100003464: 01 00 80 d2 	mov	x1, #0
100003468: 78 00 00 94 	bl	0x100003648 <__ZNSt3__18ios_base5widthEl>
10000346c: a8 03 5f f8 	ldur	x8, [x29, #-16]
100003470: a8 83 1f f8 	stur	x8, [x29, #-8]
100003474: 01 00 00 14 	b	0x100003478 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
100003478: a0 83 5f f8 	ldur	x0, [x29, #-8]
10000347c: fd 7b 49 a9 	ldp	x29, x30, [sp, #144]
100003480: ff 83 02 91 	add	sp, sp, #160
100003484: c0 03 5f d6 	ret
100003488: e0 13 40 f9 	ldr	x0, [sp, #32]
10000348c: 12 02 00 94 	bl	0x100003cd4 <_strlen+0x100003cd4>

0000000100003490 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE>:
100003490: ff c3 00 d1 	sub	sp, sp, #48
100003494: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003498: fd 83 00 91 	add	x29, sp, #32
10000349c: a0 83 1f f8 	stur	x0, [x29, #-8]
1000034a0: e1 0b 00 f9 	str	x1, [sp, #16]
1000034a4: a0 83 5f f8 	ldur	x0, [x29, #-8]
1000034a8: e0 07 00 f9 	str	x0, [sp, #8]
1000034ac: e1 0b 40 f9 	ldr	x1, [sp, #16]
1000034b0: 23 01 00 94 	bl	0x10000393c <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE>
1000034b4: e0 07 40 f9 	ldr	x0, [sp, #8]
1000034b8: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
1000034bc: ff c3 00 91 	add	sp, sp, #48
1000034c0: c0 03 5f d6 	ret

00000001000034c4 <__ZNKSt3__18ios_base5flagsEv>:
1000034c4: ff 43 00 d1 	sub	sp, sp, #16
1000034c8: e0 07 00 f9 	str	x0, [sp, #8]
1000034cc: e8 07 40 f9 	ldr	x8, [sp, #8]
1000034d0: 00 09 40 b9 	ldr	w0, [x8, #8]
1000034d4: ff 43 00 91 	add	sp, sp, #16
1000034d8: c0 03 5f d6 	ret

00000001000034dc <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv>:
1000034dc: ff 83 00 d1 	sub	sp, sp, #32
1000034e0: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
1000034e4: fd 43 00 91 	add	x29, sp, #16
1000034e8: e0 07 00 f9 	str	x0, [sp, #8]
1000034ec: e8 07 40 f9 	ldr	x8, [sp, #8]
1000034f0: e8 03 00 f9 	str	x8, [sp]
1000034f4: 04 02 00 94 	bl	0x100003d04 <_strlen+0x100003d04>
1000034f8: e8 03 40 f9 	ldr	x8, [sp]
1000034fc: 01 91 40 b9 	ldr	w1, [x8, #144]
100003500: fe 01 00 94 	bl	0x100003cf8 <_strlen+0x100003cf8>
100003504: 20 01 00 36 	tbz	w0, #0, 0x100003528 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv+0x4c>
100003508: 01 00 00 14 	b	0x10000350c <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv+0x30>
10000350c: e0 03 40 f9 	ldr	x0, [sp]
100003510: 01 04 80 52 	mov	w1, #32
100003514: 3a 01 00 94 	bl	0x1000039fc <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc>
100003518: e9 03 40 f9 	ldr	x9, [sp]
10000351c: 08 1c 00 13 	sxtb	w8, w0
100003520: 28 91 00 b9 	str	w8, [x9, #144]
100003524: 01 00 00 14 	b	0x100003528 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv+0x4c>
100003528: e8 03 40 f9 	ldr	x8, [sp]
10000352c: 08 91 40 b9 	ldr	w8, [x8, #144]
100003530: 00 1d 00 13 	sxtb	w0, w8
100003534: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003538: ff 83 00 91 	add	sp, sp, #32
10000353c: c0 03 5f d6 	ret

0000000100003540 <__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv>:
100003540: ff 43 00 d1 	sub	sp, sp, #16
100003544: e0 07 00 f9 	str	x0, [sp, #8]
100003548: e8 07 40 f9 	ldr	x8, [sp, #8]
10000354c: 08 01 40 f9 	ldr	x8, [x8]
100003550: 08 01 00 f1 	subs	x8, x8, #0
100003554: e8 17 9f 1a 	cset	w8, eq
100003558: 00 01 00 12 	and	w0, w8, #0x1
10000355c: ff 43 00 91 	add	sp, sp, #16
100003560: c0 03 5f d6 	ret

0000000100003564 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj>:
100003564: ff 83 00 d1 	sub	sp, sp, #32
100003568: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
10000356c: fd 43 00 91 	add	x29, sp, #16
100003570: e0 07 00 f9 	str	x0, [sp, #8]
100003574: e1 07 00 b9 	str	w1, [sp, #4]
100003578: e0 07 40 f9 	ldr	x0, [sp, #8]
10000357c: e1 07 40 b9 	ldr	w1, [sp, #4]
100003580: 59 01 00 94 	bl	0x100003ae4 <__ZNSt3__18ios_base8setstateEj>
100003584: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003588: ff 83 00 91 	add	sp, sp, #32
10000358c: c0 03 5f d6 	ret

0000000100003590 <__ZNKSt3__18ios_base5widthEv>:
100003590: ff 43 00 d1 	sub	sp, sp, #16
100003594: e0 07 00 f9 	str	x0, [sp, #8]
100003598: e8 07 40 f9 	ldr	x8, [sp, #8]
10000359c: 00 0d 40 f9 	ldr	x0, [x8, #24]
1000035a0: ff 43 00 91 	add	sp, sp, #16
1000035a4: c0 03 5f d6 	ret

00000001000035a8 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>:
1000035a8: ff c3 00 d1 	sub	sp, sp, #48
1000035ac: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
1000035b0: fd 83 00 91 	add	x29, sp, #32
1000035b4: a0 83 1f f8 	stur	x0, [x29, #-8]
1000035b8: e1 0b 00 f9 	str	x1, [sp, #16]
1000035bc: e2 07 00 f9 	str	x2, [sp, #8]
1000035c0: a0 83 5f f8 	ldur	x0, [x29, #-8]
1000035c4: e1 0b 40 f9 	ldr	x1, [sp, #16]
1000035c8: e2 07 40 f9 	ldr	x2, [sp, #8]
1000035cc: 08 00 40 f9 	ldr	x8, [x0]
1000035d0: 08 31 40 f9 	ldr	x8, [x8, #96]
1000035d4: 00 01 3f d6 	blr	x8
1000035d8: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
1000035dc: ff c3 00 91 	add	sp, sp, #48
1000035e0: c0 03 5f d6 	ret

00000001000035e4 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc>:
1000035e4: ff c3 00 d1 	sub	sp, sp, #48
1000035e8: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
1000035ec: fd 83 00 91 	add	x29, sp, #32
1000035f0: a0 83 1f f8 	stur	x0, [x29, #-8]
1000035f4: e1 0b 00 f9 	str	x1, [sp, #16]
1000035f8: e2 3f 00 39 	strb	w2, [sp, #15]
1000035fc: a0 83 5f f8 	ldur	x0, [x29, #-8]
100003600: e0 03 00 f9 	str	x0, [sp]
100003604: e1 0b 40 f9 	ldr	x1, [sp, #16]
100003608: e2 3f c0 39 	ldrsb	w2, [sp, #15]
10000360c: 1a 00 00 94 	bl	0x100003674 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc>
100003610: e0 03 40 f9 	ldr	x0, [sp]
100003614: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003618: ff c3 00 91 	add	sp, sp, #48
10000361c: c0 03 5f d6 	ret

0000000100003620 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv>:
100003620: ff 83 00 d1 	sub	sp, sp, #32
100003624: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003628: fd 43 00 91 	add	x29, sp, #16
10000362c: e0 07 00 f9 	str	x0, [sp, #8]
100003630: e0 07 40 f9 	ldr	x0, [sp, #8]
100003634: 70 00 00 94 	bl	0x1000037f4 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv>
100003638: 6a 00 00 94 	bl	0x1000037e0 <__ZNSt3__1L12__to_addressIKcEEPT_S3_>
10000363c: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003640: ff 83 00 91 	add	sp, sp, #32
100003644: c0 03 5f d6 	ret

0000000100003648 <__ZNSt3__18ios_base5widthEl>:
100003648: ff 83 00 d1 	sub	sp, sp, #32
10000364c: e0 0f 00 f9 	str	x0, [sp, #24]
100003650: e1 0b 00 f9 	str	x1, [sp, #16]
100003654: e9 0f 40 f9 	ldr	x9, [sp, #24]
100003658: 28 0d 40 f9 	ldr	x8, [x9, #24]
10000365c: e8 07 00 f9 	str	x8, [sp, #8]
100003660: e8 0b 40 f9 	ldr	x8, [sp, #16]
100003664: 28 0d 00 f9 	str	x8, [x9, #24]
100003668: e0 07 40 f9 	ldr	x0, [sp, #8]
10000366c: ff 83 00 91 	add	sp, sp, #32
100003670: c0 03 5f d6 	ret

0000000100003674 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc>:
100003674: ff c3 00 d1 	sub	sp, sp, #48
100003678: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
10000367c: fd 83 00 91 	add	x29, sp, #32
100003680: a0 83 1f f8 	stur	x0, [x29, #-8]
100003684: e1 0b 00 f9 	str	x1, [sp, #16]
100003688: e2 3f 00 39 	strb	w2, [sp, #15]
10000368c: a0 83 5f f8 	ldur	x0, [x29, #-8]
100003690: e0 03 00 f9 	str	x0, [sp]
100003694: e1 3b 00 91 	add	x1, sp, #14
100003698: e2 37 00 91 	add	x2, sp, #13
10000369c: 09 00 00 94 	bl	0x1000036c0 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_>
1000036a0: e0 03 40 f9 	ldr	x0, [sp]
1000036a4: e1 0b 40 f9 	ldr	x1, [sp, #16]
1000036a8: e2 3f c0 39 	ldrsb	w2, [sp, #15]
1000036ac: 9c 01 00 94 	bl	0x100003d1c <_strlen+0x100003d1c>
1000036b0: e0 03 40 f9 	ldr	x0, [sp]
1000036b4: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
1000036b8: ff c3 00 91 	add	sp, sp, #48
1000036bc: c0 03 5f d6 	ret

00000001000036c0 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_>:
1000036c0: ff c3 00 d1 	sub	sp, sp, #48
1000036c4: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
1000036c8: fd 83 00 91 	add	x29, sp, #32
1000036cc: a0 83 1f f8 	stur	x0, [x29, #-8]
1000036d0: e1 0b 00 f9 	str	x1, [sp, #16]
1000036d4: e2 07 00 f9 	str	x2, [sp, #8]
1000036d8: a0 83 5f f8 	ldur	x0, [x29, #-8]
1000036dc: e0 03 00 f9 	str	x0, [sp]
1000036e0: e1 0b 40 f9 	ldr	x1, [sp, #16]
1000036e4: e2 07 40 f9 	ldr	x2, [sp, #8]
1000036e8: 05 00 00 94 	bl	0x1000036fc <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_>
1000036ec: e0 03 40 f9 	ldr	x0, [sp]
1000036f0: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
1000036f4: ff c3 00 91 	add	sp, sp, #48
1000036f8: c0 03 5f d6 	ret

00000001000036fc <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_>:
1000036fc: ff 03 01 d1 	sub	sp, sp, #64
100003700: fd 7b 03 a9 	stp	x29, x30, [sp, #48]
100003704: fd c3 00 91 	add	x29, sp, #48
100003708: a0 83 1f f8 	stur	x0, [x29, #-8]
10000370c: a1 03 1f f8 	stur	x1, [x29, #-16]
100003710: e2 0f 00 f9 	str	x2, [sp, #24]
100003714: a8 83 5f f8 	ldur	x8, [x29, #-8]
100003718: e8 07 00 f9 	str	x8, [sp, #8]
10000371c: a0 03 5f f8 	ldur	x0, [x29, #-16]
100003720: 0b 00 00 94 	bl	0x10000374c <__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE>
100003724: e0 07 40 f9 	ldr	x0, [sp, #8]
100003728: 0e 00 00 94 	bl	0x100003760 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE>
10000372c: e0 0f 40 f9 	ldr	x0, [sp, #24]
100003730: 07 00 00 94 	bl	0x10000374c <__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE>
100003734: e0 07 40 f9 	ldr	x0, [sp, #8]
100003738: 0f 00 00 94 	bl	0x100003774 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE>
10000373c: e0 07 40 f9 	ldr	x0, [sp, #8]
100003740: fd 7b 43 a9 	ldp	x29, x30, [sp, #48]
100003744: ff 03 01 91 	add	sp, sp, #64
100003748: c0 03 5f d6 	ret

000000010000374c <__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE>:
10000374c: ff 43 00 d1 	sub	sp, sp, #16
100003750: e0 07 00 f9 	str	x0, [sp, #8]
100003754: e0 07 40 f9 	ldr	x0, [sp, #8]
100003758: ff 43 00 91 	add	sp, sp, #16
10000375c: c0 03 5f d6 	ret

0000000100003760 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE>:
100003760: ff 43 00 d1 	sub	sp, sp, #16
100003764: e0 03 00 f9 	str	x0, [sp]
100003768: e0 03 40 f9 	ldr	x0, [sp]
10000376c: ff 43 00 91 	add	sp, sp, #16
100003770: c0 03 5f d6 	ret

0000000100003774 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE>:
100003774: ff c3 00 d1 	sub	sp, sp, #48
100003778: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
10000377c: fd 83 00 91 	add	x29, sp, #32
100003780: e0 0b 00 f9 	str	x0, [sp, #16]
100003784: e0 0b 40 f9 	ldr	x0, [sp, #16]
100003788: e0 07 00 f9 	str	x0, [sp, #8]
10000378c: 05 00 00 94 	bl	0x1000037a0 <__ZNSt3__19allocatorIcEC2Ev>
100003790: e0 07 40 f9 	ldr	x0, [sp, #8]
100003794: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003798: ff c3 00 91 	add	sp, sp, #48
10000379c: c0 03 5f d6 	ret

00000001000037a0 <__ZNSt3__19allocatorIcEC2Ev>:
1000037a0: ff 83 00 d1 	sub	sp, sp, #32
1000037a4: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
1000037a8: fd 43 00 91 	add	x29, sp, #16
1000037ac: e0 07 00 f9 	str	x0, [sp, #8]
1000037b0: e0 07 40 f9 	ldr	x0, [sp, #8]
1000037b4: e0 03 00 f9 	str	x0, [sp]
1000037b8: 05 00 00 94 	bl	0x1000037cc <__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev>
1000037bc: e0 03 40 f9 	ldr	x0, [sp]
1000037c0: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
1000037c4: ff 83 00 91 	add	sp, sp, #32
1000037c8: c0 03 5f d6 	ret

00000001000037cc <__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev>:
1000037cc: ff 43 00 d1 	sub	sp, sp, #16
1000037d0: e0 07 00 f9 	str	x0, [sp, #8]
1000037d4: e0 07 40 f9 	ldr	x0, [sp, #8]
1000037d8: ff 43 00 91 	add	sp, sp, #16
1000037dc: c0 03 5f d6 	ret

00000001000037e0 <__ZNSt3__1L12__to_addressIKcEEPT_S3_>:
1000037e0: ff 43 00 d1 	sub	sp, sp, #16
1000037e4: e0 07 00 f9 	str	x0, [sp, #8]
1000037e8: e0 07 40 f9 	ldr	x0, [sp, #8]
1000037ec: ff 43 00 91 	add	sp, sp, #16
1000037f0: c0 03 5f d6 	ret

00000001000037f4 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv>:
1000037f4: ff c3 00 d1 	sub	sp, sp, #48
1000037f8: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
1000037fc: fd 83 00 91 	add	x29, sp, #32
100003800: a0 83 1f f8 	stur	x0, [x29, #-8]
100003804: a0 83 5f f8 	ldur	x0, [x29, #-8]
100003808: e0 0b 00 f9 	str	x0, [sp, #16]
10000380c: 0f 00 00 94 	bl	0x100003848 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv>
100003810: c0 00 00 36 	tbz	w0, #0, 0x100003828 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x34>
100003814: 01 00 00 14 	b	0x100003818 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x24>
100003818: e0 0b 40 f9 	ldr	x0, [sp, #16]
10000381c: 18 00 00 94 	bl	0x10000387c <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv>
100003820: e0 07 00 f9 	str	x0, [sp, #8]
100003824: 05 00 00 14 	b	0x100003838 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x44>
100003828: e0 0b 40 f9 	ldr	x0, [sp, #16]
10000382c: 1e 00 00 94 	bl	0x1000038a4 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv>
100003830: e0 07 00 f9 	str	x0, [sp, #8]
100003834: 01 00 00 14 	b	0x100003838 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x44>
100003838: e0 07 40 f9 	ldr	x0, [sp, #8]
10000383c: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003840: ff c3 00 91 	add	sp, sp, #48
100003844: c0 03 5f d6 	ret

0000000100003848 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv>:
100003848: ff 83 00 d1 	sub	sp, sp, #32
10000384c: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003850: fd 43 00 91 	add	x29, sp, #16
100003854: e0 07 00 f9 	str	x0, [sp, #8]
100003858: e0 07 40 f9 	ldr	x0, [sp, #8]
10000385c: 1c 00 00 94 	bl	0x1000038cc <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
100003860: 08 5c 40 39 	ldrb	w8, [x0, #23]
100003864: 08 01 79 f2 	ands	x8, x8, #0x80
100003868: e8 07 9f 1a 	cset	w8, ne
10000386c: 00 01 00 12 	and	w0, w8, #0x1
100003870: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003874: ff 83 00 91 	add	sp, sp, #32
100003878: c0 03 5f d6 	ret

000000010000387c <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv>:
10000387c: ff 83 00 d1 	sub	sp, sp, #32
100003880: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003884: fd 43 00 91 	add	x29, sp, #16
100003888: e0 07 00 f9 	str	x0, [sp, #8]
10000388c: e0 07 40 f9 	ldr	x0, [sp, #8]
100003890: 0f 00 00 94 	bl	0x1000038cc <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
100003894: 00 00 40 f9 	ldr	x0, [x0]
100003898: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
10000389c: ff 83 00 91 	add	sp, sp, #32
1000038a0: c0 03 5f d6 	ret

00000001000038a4 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv>:
1000038a4: ff 83 00 d1 	sub	sp, sp, #32
1000038a8: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
1000038ac: fd 43 00 91 	add	x29, sp, #16
1000038b0: e0 07 00 f9 	str	x0, [sp, #8]
1000038b4: e0 07 40 f9 	ldr	x0, [sp, #8]
1000038b8: 05 00 00 94 	bl	0x1000038cc <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
1000038bc: 12 00 00 94 	bl	0x100003904 <__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_>
1000038c0: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
1000038c4: ff 83 00 91 	add	sp, sp, #32
1000038c8: c0 03 5f d6 	ret

00000001000038cc <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>:
1000038cc: ff 83 00 d1 	sub	sp, sp, #32
1000038d0: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
1000038d4: fd 43 00 91 	add	x29, sp, #16
1000038d8: e0 07 00 f9 	str	x0, [sp, #8]
1000038dc: e0 07 40 f9 	ldr	x0, [sp, #8]
1000038e0: 04 00 00 94 	bl	0x1000038f0 <__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv>
1000038e4: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
1000038e8: ff 83 00 91 	add	sp, sp, #32
1000038ec: c0 03 5f d6 	ret

00000001000038f0 <__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv>:
1000038f0: ff 43 00 d1 	sub	sp, sp, #16
1000038f4: e0 07 00 f9 	str	x0, [sp, #8]
1000038f8: e0 07 40 f9 	ldr	x0, [sp, #8]
1000038fc: ff 43 00 91 	add	sp, sp, #16
100003900: c0 03 5f d6 	ret

0000000100003904 <__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_>:
100003904: ff 83 00 d1 	sub	sp, sp, #32
100003908: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
10000390c: fd 43 00 91 	add	x29, sp, #16
100003910: e0 07 00 f9 	str	x0, [sp, #8]
100003914: e0 07 40 f9 	ldr	x0, [sp, #8]
100003918: 04 00 00 94 	bl	0x100003928 <__ZNSt3__1L9addressofIKcEEPT_RS2_>
10000391c: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003920: ff 83 00 91 	add	sp, sp, #32
100003924: c0 03 5f d6 	ret

0000000100003928 <__ZNSt3__1L9addressofIKcEEPT_RS2_>:
100003928: ff 43 00 d1 	sub	sp, sp, #16
10000392c: e0 07 00 f9 	str	x0, [sp, #8]
100003930: e0 07 40 f9 	ldr	x0, [sp, #8]
100003934: ff 43 00 91 	add	sp, sp, #16
100003938: c0 03 5f d6 	ret

000000010000393c <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE>:
10000393c: ff c3 00 d1 	sub	sp, sp, #48
100003940: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003944: fd 83 00 91 	add	x29, sp, #32
100003948: a0 83 1f f8 	stur	x0, [x29, #-8]
10000394c: e1 0b 00 f9 	str	x1, [sp, #16]
100003950: a8 83 5f f8 	ldur	x8, [x29, #-8]
100003954: e8 03 00 f9 	str	x8, [sp]
100003958: e8 0b 40 f9 	ldr	x8, [sp, #16]
10000395c: 09 01 40 f9 	ldr	x9, [x8]
100003960: 29 81 5e f8 	ldur	x9, [x9, #-24]
100003964: 00 01 09 8b 	add	x0, x8, x9
100003968: 0a 00 00 94 	bl	0x100003990 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv>
10000396c: e0 07 00 f9 	str	x0, [sp, #8]
100003970: 01 00 00 14 	b	0x100003974 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE+0x38>
100003974: e0 03 40 f9 	ldr	x0, [sp]
100003978: e8 07 40 f9 	ldr	x8, [sp, #8]
10000397c: 08 00 00 f9 	str	x8, [x0]
100003980: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003984: ff c3 00 91 	add	sp, sp, #48
100003988: c0 03 5f d6 	ret
10000398c: 94 fd ff 97 	bl	0x100002fdc <___clang_call_terminate>

0000000100003990 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv>:
100003990: ff 83 00 d1 	sub	sp, sp, #32
100003994: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003998: fd 43 00 91 	add	x29, sp, #16
10000399c: e0 07 00 f9 	str	x0, [sp, #8]
1000039a0: e0 07 40 f9 	ldr	x0, [sp, #8]
1000039a4: 04 00 00 94 	bl	0x1000039b4 <__ZNKSt3__18ios_base5rdbufEv>
1000039a8: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
1000039ac: ff 83 00 91 	add	sp, sp, #32
1000039b0: c0 03 5f d6 	ret

00000001000039b4 <__ZNKSt3__18ios_base5rdbufEv>:
1000039b4: ff 43 00 d1 	sub	sp, sp, #16
1000039b8: e0 07 00 f9 	str	x0, [sp, #8]
1000039bc: e8 07 40 f9 	ldr	x8, [sp, #8]
1000039c0: 00 15 40 f9 	ldr	x0, [x8, #40]
1000039c4: ff 43 00 91 	add	sp, sp, #16
1000039c8: c0 03 5f d6 	ret

00000001000039cc <__ZNSt3__111char_traitsIcE11eq_int_typeEii>:
1000039cc: ff 43 00 d1 	sub	sp, sp, #16
1000039d0: e0 0f 00 b9 	str	w0, [sp, #12]
1000039d4: e1 0b 00 b9 	str	w1, [sp, #8]
1000039d8: e8 0f 40 b9 	ldr	w8, [sp, #12]
1000039dc: e9 0b 40 b9 	ldr	w9, [sp, #8]
1000039e0: 08 01 09 6b 	subs	w8, w8, w9
1000039e4: e8 17 9f 1a 	cset	w8, eq
1000039e8: 00 01 00 12 	and	w0, w8, #0x1
1000039ec: ff 43 00 91 	add	sp, sp, #16
1000039f0: c0 03 5f d6 	ret

00000001000039f4 <__ZNSt3__111char_traitsIcE3eofEv>:
1000039f4: 00 00 80 12 	mov	w0, #-1
1000039f8: c0 03 5f d6 	ret

00000001000039fc <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc>:
1000039fc: ff 43 01 d1 	sub	sp, sp, #80
100003a00: fd 7b 04 a9 	stp	x29, x30, [sp, #64]
100003a04: fd 03 01 91 	add	x29, sp, #64
100003a08: a0 83 1f f8 	stur	x0, [x29, #-8]
100003a0c: a1 73 1f 38 	sturb	w1, [x29, #-9]
100003a10: a0 83 5f f8 	ldur	x0, [x29, #-8]
100003a14: a8 63 00 d1 	sub	x8, x29, #24
100003a18: e8 07 00 f9 	str	x8, [sp, #8]
100003a1c: b4 00 00 94 	bl	0x100003cec <_strlen+0x100003cec>
100003a20: e0 07 40 f9 	ldr	x0, [sp, #8]
100003a24: 17 00 00 94 	bl	0x100003a80 <__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE>
100003a28: e0 0b 00 f9 	str	x0, [sp, #16]
100003a2c: 01 00 00 14 	b	0x100003a30 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc+0x34>
100003a30: e0 0b 40 f9 	ldr	x0, [sp, #16]
100003a34: a1 73 df 38 	ldursb	w1, [x29, #-9]
100003a38: 1d 00 00 94 	bl	0x100003aac <__ZNKSt3__15ctypeIcE5widenEc>
100003a3c: e0 07 00 b9 	str	w0, [sp, #4]
100003a40: 01 00 00 14 	b	0x100003a44 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc+0x48>
100003a44: a0 63 00 d1 	sub	x0, x29, #24
100003a48: ca 00 00 94 	bl	0x100003d70 <_strlen+0x100003d70>
100003a4c: e8 07 40 b9 	ldr	w8, [sp, #4]
100003a50: 00 1d 00 13 	sxtb	w0, w8
100003a54: fd 7b 44 a9 	ldp	x29, x30, [sp, #64]
100003a58: ff 43 01 91 	add	sp, sp, #80
100003a5c: c0 03 5f d6 	ret
100003a60: e8 03 01 aa 	mov	x8, x1
100003a64: e0 13 00 f9 	str	x0, [sp, #32]
100003a68: e8 1f 00 b9 	str	w8, [sp, #28]
100003a6c: a0 63 00 d1 	sub	x0, x29, #24
100003a70: c0 00 00 94 	bl	0x100003d70 <_strlen+0x100003d70>
100003a74: 01 00 00 14 	b	0x100003a78 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc+0x7c>
100003a78: e0 13 40 f9 	ldr	x0, [sp, #32]
100003a7c: 96 00 00 94 	bl	0x100003cd4 <_strlen+0x100003cd4>

0000000100003a80 <__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE>:
100003a80: ff 83 00 d1 	sub	sp, sp, #32
100003a84: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003a88: fd 43 00 91 	add	x29, sp, #16
100003a8c: e0 07 00 f9 	str	x0, [sp, #8]
100003a90: e0 07 40 f9 	ldr	x0, [sp, #8]
100003a94: 01 00 00 b0 	adrp	x1, 0x100004000 <__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE+0x18>
100003a98: 21 38 40 f9 	ldr	x1, [x1, #112]
100003a9c: 91 00 00 94 	bl	0x100003ce0 <_strlen+0x100003ce0>
100003aa0: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003aa4: ff 83 00 91 	add	sp, sp, #32
100003aa8: c0 03 5f d6 	ret

0000000100003aac <__ZNKSt3__15ctypeIcE5widenEc>:
100003aac: ff 83 00 d1 	sub	sp, sp, #32
100003ab0: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003ab4: fd 43 00 91 	add	x29, sp, #16
100003ab8: e0 07 00 f9 	str	x0, [sp, #8]
100003abc: e1 1f 00 39 	strb	w1, [sp, #7]
100003ac0: e0 07 40 f9 	ldr	x0, [sp, #8]
100003ac4: e1 1f c0 39 	ldrsb	w1, [sp, #7]
100003ac8: 08 00 40 f9 	ldr	x8, [x0]
100003acc: 08 1d 40 f9 	ldr	x8, [x8, #56]
100003ad0: 00 01 3f d6 	blr	x8
100003ad4: 00 1c 00 13 	sxtb	w0, w0
100003ad8: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003adc: ff 83 00 91 	add	sp, sp, #32
100003ae0: c0 03 5f d6 	ret

0000000100003ae4 <__ZNSt3__18ios_base8setstateEj>:
100003ae4: ff 83 00 d1 	sub	sp, sp, #32
100003ae8: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003aec: fd 43 00 91 	add	x29, sp, #16
100003af0: e0 07 00 f9 	str	x0, [sp, #8]
100003af4: e1 07 00 b9 	str	w1, [sp, #4]
100003af8: e0 07 40 f9 	ldr	x0, [sp, #8]
100003afc: 08 20 40 b9 	ldr	w8, [x0, #32]
100003b00: e9 07 40 b9 	ldr	w9, [sp, #4]
100003b04: 01 01 09 2a 	orr	w1, w8, w9
100003b08: a0 00 00 94 	bl	0x100003d88 <_strlen+0x100003d88>
100003b0c: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003b10: ff 83 00 91 	add	sp, sp, #32
100003b14: c0 03 5f d6 	ret

0000000100003b18 <__ZNSt3__1L21__cxx_atomic_exchangeIP5qnodeEET_PNS_22__cxx_atomic_base_implIS3_EES3_NS_12memory_orderE>:
100003b18: ff 03 01 d1 	sub	sp, sp, #64
100003b1c: e0 1f 00 f9 	str	x0, [sp, #56]
100003b20: e1 1b 00 f9 	str	x1, [sp, #48]
100003b24: e2 2f 00 b9 	str	w2, [sp, #44]
100003b28: e8 1f 40 f9 	ldr	x8, [sp, #56]
100003b2c: e8 07 00 f9 	str	x8, [sp, #8]
100003b30: e8 2f 40 b9 	ldr	w8, [sp, #44]
100003b34: e9 1b 40 f9 	ldr	x9, [sp, #48]
100003b38: e9 13 00 f9 	str	x9, [sp, #32]
100003b3c: 08 05 00 71 	subs	w8, w8, #1
100003b40: e8 0b 00 f9 	str	x8, [sp, #16]
100003b44: 08 11 00 f1 	subs	x8, x8, #4
100003b48: 08 01 00 54 	b.hi	0x100003b68 <__ZNSt3__1L21__cxx_atomic_exchangeIP5qnodeEET_PNS_22__cxx_atomic_base_implIS3_EES3_NS_12memory_orderE+0x50>
100003b4c: eb 0b 40 f9 	ldr	x11, [sp, #16]
100003b50: 0a 00 00 90 	adrp	x10, 0x100003000 <__ZNSt3__1L21__cxx_atomic_exchangeIP5qnodeEET_PNS_22__cxx_atomic_base_implIS3_EES3_NS_12memory_orderE+0x38>
100003b54: 4a 61 2f 91 	add	x10, x10, #3032
100003b58: 08 00 00 10 	adr	x8, #0
100003b5c: 49 79 ab b8 	ldrsw	x9, [x10, x11, lsl #2]
100003b60: 08 01 09 8b 	add	x8, x8, x9
100003b64: 00 01 1f d6 	br	x8
100003b68: e9 07 40 f9 	ldr	x9, [sp, #8]
100003b6c: e8 13 40 f9 	ldr	x8, [sp, #32]
100003b70: 28 81 28 f8 	<unknown>
100003b74: e8 0f 00 f9 	str	x8, [sp, #24]
100003b78: 15 00 00 14 	b	0x100003bcc <__ZNSt3__1L21__cxx_atomic_exchangeIP5qnodeEET_PNS_22__cxx_atomic_base_implIS3_EES3_NS_12memory_orderE+0xb4>
100003b7c: e9 07 40 f9 	ldr	x9, [sp, #8]
100003b80: e8 13 40 f9 	ldr	x8, [sp, #32]
100003b84: 28 81 a8 f8 	<unknown>
100003b88: e8 0f 00 f9 	str	x8, [sp, #24]
100003b8c: 10 00 00 14 	b	0x100003bcc <__ZNSt3__1L21__cxx_atomic_exchangeIP5qnodeEET_PNS_22__cxx_atomic_base_implIS3_EES3_NS_12memory_orderE+0xb4>
100003b90: e9 07 40 f9 	ldr	x9, [sp, #8]
100003b94: e8 13 40 f9 	ldr	x8, [sp, #32]
100003b98: 28 81 68 f8 	<unknown>
100003b9c: e8 0f 00 f9 	str	x8, [sp, #24]
100003ba0: 0b 00 00 14 	b	0x100003bcc <__ZNSt3__1L21__cxx_atomic_exchangeIP5qnodeEET_PNS_22__cxx_atomic_base_implIS3_EES3_NS_12memory_orderE+0xb4>
100003ba4: e9 07 40 f9 	ldr	x9, [sp, #8]
100003ba8: e8 13 40 f9 	ldr	x8, [sp, #32]
100003bac: 28 81 e8 f8 	<unknown>
100003bb0: e8 0f 00 f9 	str	x8, [sp, #24]
100003bb4: 06 00 00 14 	b	0x100003bcc <__ZNSt3__1L21__cxx_atomic_exchangeIP5qnodeEET_PNS_22__cxx_atomic_base_implIS3_EES3_NS_12memory_orderE+0xb4>
100003bb8: e9 07 40 f9 	ldr	x9, [sp, #8]
100003bbc: e8 13 40 f9 	ldr	x8, [sp, #32]
100003bc0: 28 81 e8 f8 	<unknown>
100003bc4: e8 0f 00 f9 	str	x8, [sp, #24]
100003bc8: 01 00 00 14 	b	0x100003bcc <__ZNSt3__1L21__cxx_atomic_exchangeIP5qnodeEET_PNS_22__cxx_atomic_base_implIS3_EES3_NS_12memory_orderE+0xb4>
100003bcc: e0 0f 40 f9 	ldr	x0, [sp, #24]
100003bd0: ff 03 01 91 	add	sp, sp, #64
100003bd4: c0 03 5f d6 	ret
100003bd8: 24 00 00 00 	udf	#36
100003bdc: 24 00 00 00 	udf	#36
100003be0: 38 00 00 00 	udf	#56
100003be4: 4c 00 00 00 	udf	#76
100003be8: 60 00 00 00 	udf	#96

0000000100003bec <__ZNSt3__113__atomic_baseIP5qnodeLb0EE5storeES2_NS_12memory_orderE>:
100003bec: ff c3 00 d1 	sub	sp, sp, #48
100003bf0: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003bf4: fd 83 00 91 	add	x29, sp, #32
100003bf8: a0 83 1f f8 	stur	x0, [x29, #-8]
100003bfc: e1 0b 00 f9 	str	x1, [sp, #16]
100003c00: e2 0f 00 b9 	str	w2, [sp, #12]
100003c04: a0 83 5f f8 	ldur	x0, [x29, #-8]
100003c08: e1 0b 40 f9 	ldr	x1, [sp, #16]
100003c0c: e2 0f 40 b9 	ldr	w2, [sp, #12]
100003c10: 04 00 00 94 	bl	0x100003c20 <__ZNSt3__1L18__cxx_atomic_storeIP5qnodeEEvPNS_22__cxx_atomic_base_implIT_EES4_NS_12memory_orderE>
100003c14: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003c18: ff c3 00 91 	add	sp, sp, #48
100003c1c: c0 03 5f d6 	ret

0000000100003c20 <__ZNSt3__1L18__cxx_atomic_storeIP5qnodeEEvPNS_22__cxx_atomic_base_implIT_EES4_NS_12memory_orderE>:
100003c20: ff c3 00 d1 	sub	sp, sp, #48
100003c24: e0 17 00 f9 	str	x0, [sp, #40]
100003c28: e1 13 00 f9 	str	x1, [sp, #32]
100003c2c: e2 1f 00 b9 	str	w2, [sp, #28]
100003c30: e8 17 40 f9 	ldr	x8, [sp, #40]
100003c34: e8 03 00 f9 	str	x8, [sp]
100003c38: e8 1f 40 b9 	ldr	w8, [sp, #28]
100003c3c: e8 0f 00 b9 	str	w8, [sp, #12]
100003c40: e9 13 40 f9 	ldr	x9, [sp, #32]
100003c44: e9 0b 00 f9 	str	x9, [sp, #16]
100003c48: 08 0d 00 71 	subs	w8, w8, #3
100003c4c: 40 01 00 54 	b.eq	0x100003c74 <__ZNSt3__1L18__cxx_atomic_storeIP5qnodeEEvPNS_22__cxx_atomic_base_implIT_EES4_NS_12memory_orderE+0x54>
100003c50: 01 00 00 14 	b	0x100003c54 <__ZNSt3__1L18__cxx_atomic_storeIP5qnodeEEvPNS_22__cxx_atomic_base_implIT_EES4_NS_12memory_orderE+0x34>
100003c54: e8 0f 40 b9 	ldr	w8, [sp, #12]
100003c58: 08 15 00 71 	subs	w8, w8, #5
100003c5c: 40 01 00 54 	b.eq	0x100003c84 <__ZNSt3__1L18__cxx_atomic_storeIP5qnodeEEvPNS_22__cxx_atomic_base_implIT_EES4_NS_12memory_orderE+0x64>
100003c60: 01 00 00 14 	b	0x100003c64 <__ZNSt3__1L18__cxx_atomic_storeIP5qnodeEEvPNS_22__cxx_atomic_base_implIT_EES4_NS_12memory_orderE+0x44>
100003c64: e9 03 40 f9 	ldr	x9, [sp]
100003c68: e8 0b 40 f9 	ldr	x8, [sp, #16]
100003c6c: 28 01 00 f9 	str	x8, [x9]
100003c70: 09 00 00 14 	b	0x100003c94 <__ZNSt3__1L18__cxx_atomic_storeIP5qnodeEEvPNS_22__cxx_atomic_base_implIT_EES4_NS_12memory_orderE+0x74>
100003c74: e9 03 40 f9 	ldr	x9, [sp]
100003c78: e8 0b 40 f9 	ldr	x8, [sp, #16]
100003c7c: 28 fd 9f c8 	stlr	x8, [x9]
100003c80: 05 00 00 14 	b	0x100003c94 <__ZNSt3__1L18__cxx_atomic_storeIP5qnodeEEvPNS_22__cxx_atomic_base_implIT_EES4_NS_12memory_orderE+0x74>
100003c84: e9 03 40 f9 	ldr	x9, [sp]
100003c88: e8 0b 40 f9 	ldr	x8, [sp, #16]
100003c8c: 28 fd 9f c8 	stlr	x8, [x9]
100003c90: 01 00 00 14 	b	0x100003c94 <__ZNSt3__1L18__cxx_atomic_storeIP5qnodeEEvPNS_22__cxx_atomic_base_implIT_EES4_NS_12memory_orderE+0x74>
100003c94: ff c3 00 91 	add	sp, sp, #48
100003c98: c0 03 5f d6 	ret

0000000100003c9c <___cxx_global_var_init>:
100003c9c: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
100003ca0: fd 03 00 91 	mov	x29, sp
100003ca4: 08 01 80 52 	mov	w8, #8
100003ca8: e0 03 08 aa 	mov	x0, x8
100003cac: 40 00 00 94 	bl	0x100003dac <_strlen+0x100003dac>
100003cb0: 28 00 00 b0 	adrp	x8, 0x100008000 <__GLOBAL__sub_I_mcs_lock_working.cpp+0x4>
100003cb4: 00 25 00 f9 	str	x0, [x8, #72]
100003cb8: fd 7b c1 a8 	ldp	x29, x30, [sp], #16
100003cbc: c0 03 5f d6 	ret

0000000100003cc0 <__GLOBAL__sub_I_mcs_lock_working.cpp>:
100003cc0: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
100003cc4: fd 03 00 91 	mov	x29, sp
100003cc8: f5 ff ff 97 	bl	0x100003c9c <___cxx_global_var_init>
100003ccc: fd 7b c1 a8 	ldp	x29, x30, [sp], #16
100003cd0: c0 03 5f d6 	ret

Disassembly of section __TEXT,__stubs:

0000000100003cd4 <__stubs>:
100003cd4: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x4>
100003cd8: 10 02 40 f9 	ldr	x16, [x16]
100003cdc: 00 02 1f d6 	br	x16
100003ce0: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x10>
100003ce4: 10 06 40 f9 	ldr	x16, [x16, #8]
100003ce8: 00 02 1f d6 	br	x16
100003cec: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x1c>
100003cf0: 10 0a 40 f9 	ldr	x16, [x16, #16]
100003cf4: 00 02 1f d6 	br	x16
100003cf8: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x28>
100003cfc: 10 0e 40 f9 	ldr	x16, [x16, #24]
100003d00: 00 02 1f d6 	br	x16
100003d04: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x34>
100003d08: 10 12 40 f9 	ldr	x16, [x16, #32]
100003d0c: 00 02 1f d6 	br	x16
100003d10: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x40>
100003d14: 10 16 40 f9 	ldr	x16, [x16, #40]
100003d18: 00 02 1f d6 	br	x16
100003d1c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x4c>
100003d20: 10 1a 40 f9 	ldr	x16, [x16, #48]
100003d24: 00 02 1f d6 	br	x16
100003d28: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x58>
100003d2c: 10 1e 40 f9 	ldr	x16, [x16, #56]
100003d30: 00 02 1f d6 	br	x16
100003d34: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x64>
100003d38: 10 22 40 f9 	ldr	x16, [x16, #64]
100003d3c: 00 02 1f d6 	br	x16
100003d40: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x70>
100003d44: 10 26 40 f9 	ldr	x16, [x16, #72]
100003d48: 00 02 1f d6 	br	x16
100003d4c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x7c>
100003d50: 10 2a 40 f9 	ldr	x16, [x16, #80]
100003d54: 00 02 1f d6 	br	x16
100003d58: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x88>
100003d5c: 10 2e 40 f9 	ldr	x16, [x16, #88]
100003d60: 00 02 1f d6 	br	x16
100003d64: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x94>
100003d68: 10 32 40 f9 	ldr	x16, [x16, #96]
100003d6c: 00 02 1f d6 	br	x16
100003d70: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xa0>
100003d74: 10 3e 40 f9 	ldr	x16, [x16, #120]
100003d78: 00 02 1f d6 	br	x16
100003d7c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xac>
100003d80: 10 42 40 f9 	ldr	x16, [x16, #128]
100003d84: 00 02 1f d6 	br	x16
100003d88: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xb8>
100003d8c: 10 46 40 f9 	ldr	x16, [x16, #136]
100003d90: 00 02 1f d6 	br	x16
100003d94: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xc4>
100003d98: 10 4a 40 f9 	ldr	x16, [x16, #144]
100003d9c: 00 02 1f d6 	br	x16
100003da0: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xd0>
100003da4: 10 4e 40 f9 	ldr	x16, [x16, #152]
100003da8: 00 02 1f d6 	br	x16
100003dac: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xdc>
100003db0: 10 52 40 f9 	ldr	x16, [x16, #160]
100003db4: 00 02 1f d6 	br	x16
100003db8: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xe8>
100003dbc: 10 5a 40 f9 	ldr	x16, [x16, #176]
100003dc0: 00 02 1f d6 	br	x16
100003dc4: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xf4>
100003dc8: 10 5e 40 f9 	ldr	x16, [x16, #184]
100003dcc: 00 02 1f d6 	br	x16
100003dd0: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x100>
100003dd4: 10 66 40 f9 	ldr	x16, [x16, #200]
100003dd8: 00 02 1f d6 	br	x16
100003ddc: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x10c>
100003de0: 10 6e 40 f9 	ldr	x16, [x16, #216]
100003de4: 00 02 1f d6 	br	x16
100003de8: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x118>
100003dec: 10 72 40 f9 	ldr	x16, [x16, #224]
100003df0: 00 02 1f d6 	br	x16
100003df4: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x124>
100003df8: 10 76 40 f9 	ldr	x16, [x16, #232]
100003dfc: 00 02 1f d6 	br	x16
100003e00: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x130>
100003e04: 10 7a 40 f9 	ldr	x16, [x16, #240]
100003e08: 00 02 1f d6 	br	x16
100003e0c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x13c>
100003e10: 10 7e 40 f9 	ldr	x16, [x16, #248]
100003e14: 00 02 1f d6 	br	x16
100003e18: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x148>
100003e1c: 10 82 40 f9 	ldr	x16, [x16, #256]
100003e20: 00 02 1f d6 	br	x16
100003e24: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x154>
100003e28: 10 86 40 f9 	ldr	x16, [x16, #264]
100003e2c: 00 02 1f d6 	br	x16
