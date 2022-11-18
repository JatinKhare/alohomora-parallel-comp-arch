
mcs_lock_working_clang.o:	file format mach-o arm64

Disassembly of section __TEXT,__text:

00000001000022b0 <__Z8print_llP5qnode>:
1000022b0: ff 03 01 d1 	sub	sp, sp, #64
1000022b4: fd 7b 03 a9 	stp	x29, x30, [sp, #48]
1000022b8: fd c3 00 91 	add	x29, sp, #48
1000022bc: a0 83 1f f8 	stur	x0, [x29, #-8]
1000022c0: bf 43 1f b8 	stur	wzr, [x29, #-12]
1000022c4: 01 00 00 14 	b	0x1000022c8 <__Z8print_llP5qnode+0x18>
1000022c8: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000022cc: 48 04 00 b4 	cbz	x8, 0x100002354 <__Z8print_llP5qnode+0xa4>
1000022d0: 01 00 00 14 	b	0x1000022d4 <__Z8print_llP5qnode+0x24>
1000022d4: 00 00 00 d0 	adrp	x0, 0x100004000 <__Z8print_llP5qnode+0x2c>
1000022d8: 00 34 40 f9 	ldr	x0, [x0, #104]
1000022dc: 01 00 00 b0 	adrp	x1, 0x100003000 <__Z8print_llP5qnode+0x30>
1000022e0: 21 d0 39 91 	add	x1, x1, #3700
1000022e4: e1 0b 00 f9 	str	x1, [sp, #16]
1000022e8: 98 06 00 94 	bl	0x100003d48 <_strlen+0x100003d48>
1000022ec: e0 07 00 f9 	str	x0, [sp, #8]
1000022f0: 3e 00 00 94 	bl	0x1000023e8 <__ZNSt3__111this_threadL6get_idEv>
1000022f4: e8 03 00 aa 	mov	x8, x0
1000022f8: e0 07 40 f9 	ldr	x0, [sp, #8]
1000022fc: e8 0f 00 f9 	str	x8, [sp, #24]
100002300: e1 0f 40 f9 	ldr	x1, [sp, #24]
100002304: 2e 00 00 94 	bl	0x1000023bc <__ZNSt3__1lsIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_11__thread_idE>
100002308: 01 00 00 b0 	adrp	x1, 0x100003000 <__Z8print_llP5qnode+0x5c>
10000230c: 21 d8 39 91 	add	x1, x1, #3702
100002310: 8e 06 00 94 	bl	0x100003d48 <_strlen+0x100003d48>
100002314: a1 83 5f f8 	ldur	x1, [x29, #-8]
100002318: 7a 06 00 94 	bl	0x100003d00 <_strlen+0x100003d00>
10000231c: e1 0b 40 f9 	ldr	x1, [sp, #16]
100002320: 8a 06 00 94 	bl	0x100003d48 <_strlen+0x100003d48>
100002324: a1 43 5f b8 	ldur	w1, [x29, #-12]
100002328: 79 06 00 94 	bl	0x100003d0c <_strlen+0x100003d0c>
10000232c: 01 00 00 b0 	adrp	x1, 0x100003000 <__Z8print_llP5qnode+0x80>
100002330: 21 e0 39 91 	add	x1, x1, #3704
100002334: 85 06 00 94 	bl	0x100003d48 <_strlen+0x100003d48>
100002338: a8 83 5f f8 	ldur	x8, [x29, #-8]
10000233c: 08 01 40 f9 	ldr	x8, [x8]
100002340: a8 83 1f f8 	stur	x8, [x29, #-8]
100002344: a8 43 5f b8 	ldur	w8, [x29, #-12]
100002348: 08 05 00 11 	add	w8, w8, #1
10000234c: a8 43 1f b8 	stur	w8, [x29, #-12]
100002350: de ff ff 17 	b	0x1000022c8 <__Z8print_llP5qnode+0x18>
100002354: 00 00 00 d0 	adrp	x0, 0x100004000 <__Z8print_llP5qnode+0xac>
100002358: 00 34 40 f9 	ldr	x0, [x0, #104]
10000235c: 01 00 00 b0 	adrp	x1, 0x100003000 <__Z8print_llP5qnode+0xb0>
100002360: 21 f8 39 91 	add	x1, x1, #3710
100002364: 79 06 00 94 	bl	0x100003d48 <_strlen+0x100003d48>
100002368: fd 7b 43 a9 	ldp	x29, x30, [sp, #48]
10000236c: ff 03 01 91 	add	sp, sp, #64
100002370: c0 03 5f d6 	ret

0000000100002374 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>:
100002374: ff c3 00 d1 	sub	sp, sp, #48
100002378: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
10000237c: fd 83 00 91 	add	x29, sp, #32
100002380: a0 83 1f f8 	stur	x0, [x29, #-8]
100002384: e1 0b 00 f9 	str	x1, [sp, #16]
100002388: a8 83 5f f8 	ldur	x8, [x29, #-8]
10000238c: e8 07 00 f9 	str	x8, [sp, #8]
100002390: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002394: e8 03 00 f9 	str	x8, [sp]
100002398: e0 0b 40 f9 	ldr	x0, [sp, #16]
10000239c: 4a 06 00 94 	bl	0x100003cc4 <_strlen+0x100003cc4>
1000023a0: e1 03 40 f9 	ldr	x1, [sp]
1000023a4: e2 03 00 aa 	mov	x2, x0
1000023a8: e0 07 40 f9 	ldr	x0, [sp, #8]
1000023ac: 5b 06 00 94 	bl	0x100003d18 <_strlen+0x100003d18>
1000023b0: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
1000023b4: ff c3 00 91 	add	sp, sp, #48
1000023b8: c0 03 5f d6 	ret

00000001000023bc <__ZNSt3__1lsIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_11__thread_idE>:
1000023bc: ff 83 00 d1 	sub	sp, sp, #32
1000023c0: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
1000023c4: fd 43 00 91 	add	x29, sp, #16
1000023c8: e1 07 00 f9 	str	x1, [sp, #8]
1000023cc: e0 03 00 f9 	str	x0, [sp]
1000023d0: e0 03 40 f9 	ldr	x0, [sp]
1000023d4: e1 07 40 f9 	ldr	x1, [sp, #8]
1000023d8: 4a 06 00 94 	bl	0x100003d00 <_strlen+0x100003d00>
1000023dc: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
1000023e0: ff 83 00 91 	add	sp, sp, #32
1000023e4: c0 03 5f d6 	ret

00000001000023e8 <__ZNSt3__111this_threadL6get_idEv>:
1000023e8: ff 83 00 d1 	sub	sp, sp, #32
1000023ec: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
1000023f0: fd 43 00 91 	add	x29, sp, #16
1000023f4: 18 01 00 94 	bl	0x100002854 <__ZNSt3__1L30__libcpp_thread_get_current_idEv>
1000023f8: e0 03 00 f9 	str	x0, [sp]
1000023fc: 01 00 00 14 	b	0x100002400 <__ZNSt3__111this_threadL6get_idEv+0x18>
100002400: e1 03 40 f9 	ldr	x1, [sp]
100002404: e0 23 00 91 	add	x0, sp, #8
100002408: 21 01 00 94 	bl	0x10000288c <__ZNSt3__111__thread_idC1EP17_opaque_pthread_t>
10000240c: 01 00 00 14 	b	0x100002410 <__ZNSt3__111this_threadL6get_idEv+0x28>
100002410: e0 07 40 f9 	ldr	x0, [sp, #8]
100002414: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100002418: ff 83 00 91 	add	sp, sp, #32
10000241c: c0 03 5f d6 	ret
100002420: 18 01 00 94 	bl	0x100002880 <___clang_call_terminate>

0000000100002424 <__Z4lockPNSt3__16atomicIP5qnodeEES2_>:
100002424: ff c3 00 d1 	sub	sp, sp, #48
100002428: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
10000242c: fd 83 00 91 	add	x29, sp, #32
100002430: a0 83 1f f8 	stur	x0, [x29, #-8]
100002434: e1 0b 00 f9 	str	x1, [sp, #16]
100002438: e8 0b 40 f9 	ldr	x8, [sp, #16]
10000243c: 1f 01 00 f9 	str	xzr, [x8]
100002440: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002444: e8 07 00 f9 	str	x8, [sp, #8]
100002448: a0 83 5f f8 	ldur	x0, [x29, #-8]
10000244c: e1 07 40 f9 	ldr	x1, [sp, #8]
100002450: a2 00 80 52 	mov	w2, #5
100002454: 15 00 00 94 	bl	0x1000024a8 <__ZNSt3__113__atomic_baseIP5qnodeLb0EE8exchangeES2_NS_12memory_orderE>
100002458: e0 07 00 f9 	str	x0, [sp, #8]
10000245c: e8 07 40 f9 	ldr	x8, [sp, #8]
100002460: e8 01 00 b4 	cbz	x8, 0x10000249c <__Z4lockPNSt3__16atomicIP5qnodeEES2_+0x78>
100002464: 01 00 00 14 	b	0x100002468 <__Z4lockPNSt3__16atomicIP5qnodeEES2_+0x44>
100002468: e9 0b 40 f9 	ldr	x9, [sp, #16]
10000246c: 28 00 80 52 	mov	w8, #1
100002470: 28 21 00 39 	strb	w8, [x9, #8]
100002474: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002478: e9 07 40 f9 	ldr	x9, [sp, #8]
10000247c: 28 01 00 f9 	str	x8, [x9]
100002480: 01 00 00 14 	b	0x100002484 <__Z4lockPNSt3__16atomicIP5qnodeEES2_+0x60>
100002484: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002488: 08 21 40 39 	ldrb	w8, [x8, #8]
10000248c: 68 00 00 36 	tbz	w8, #0, 0x100002498 <__Z4lockPNSt3__16atomicIP5qnodeEES2_+0x74>
100002490: 01 00 00 14 	b	0x100002494 <__Z4lockPNSt3__16atomicIP5qnodeEES2_+0x70>
100002494: fc ff ff 17 	b	0x100002484 <__Z4lockPNSt3__16atomicIP5qnodeEES2_+0x60>
100002498: 01 00 00 14 	b	0x10000249c <__Z4lockPNSt3__16atomicIP5qnodeEES2_+0x78>
10000249c: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
1000024a0: ff c3 00 91 	add	sp, sp, #48
1000024a4: c0 03 5f d6 	ret

00000001000024a8 <__ZNSt3__113__atomic_baseIP5qnodeLb0EE8exchangeES2_NS_12memory_orderE>:
1000024a8: ff c3 00 d1 	sub	sp, sp, #48
1000024ac: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
1000024b0: fd 83 00 91 	add	x29, sp, #32
1000024b4: a0 83 1f f8 	stur	x0, [x29, #-8]
1000024b8: e1 0b 00 f9 	str	x1, [sp, #16]
1000024bc: e2 0f 00 b9 	str	w2, [sp, #12]
1000024c0: a0 83 5f f8 	ldur	x0, [x29, #-8]
1000024c4: e1 0b 40 f9 	ldr	x1, [sp, #16]
1000024c8: e2 0f 40 b9 	ldr	w2, [sp, #12]
1000024cc: bc 03 00 94 	bl	0x1000033bc <__ZNSt3__1L21__cxx_atomic_exchangeIP5qnodeEET_PNS_22__cxx_atomic_base_implIS3_EES3_NS_12memory_orderE>
1000024d0: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
1000024d4: ff c3 00 91 	add	sp, sp, #48
1000024d8: c0 03 5f d6 	ret

00000001000024dc <__Z6unlockPNSt3__16atomicIP5qnodeEES2_>:
1000024dc: ff c3 00 d1 	sub	sp, sp, #48
1000024e0: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
1000024e4: fd 83 00 91 	add	x29, sp, #32
1000024e8: a0 83 1f f8 	stur	x0, [x29, #-8]
1000024ec: e1 0b 00 f9 	str	x1, [sp, #16]
1000024f0: 00 00 00 d0 	adrp	x0, 0x100004000 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0x1c>
1000024f4: 00 34 40 f9 	ldr	x0, [x0, #104]
1000024f8: 01 00 00 b0 	adrp	x1, 0x100003000 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0x20>
1000024fc: 21 00 3a 91 	add	x1, x1, #3712
100002500: 12 06 00 94 	bl	0x100003d48 <_strlen+0x100003d48>
100002504: e0 03 00 f9 	str	x0, [sp]
100002508: b8 ff ff 97 	bl	0x1000023e8 <__ZNSt3__111this_threadL6get_idEv>
10000250c: e8 03 00 aa 	mov	x8, x0
100002510: e0 03 40 f9 	ldr	x0, [sp]
100002514: e8 07 00 f9 	str	x8, [sp, #8]
100002518: e1 07 40 f9 	ldr	x1, [sp, #8]
10000251c: a8 ff ff 97 	bl	0x1000023bc <__ZNSt3__1lsIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_NS_11__thread_idE>
100002520: 01 00 00 b0 	adrp	x1, 0x100003000 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0x48>
100002524: 21 08 3a 91 	add	x1, x1, #3714
100002528: 08 06 00 94 	bl	0x100003d48 <_strlen+0x100003d48>
10000252c: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002530: 08 01 40 f9 	ldr	x8, [x8]
100002534: 48 01 00 b5 	cbnz	x8, 0x10000255c <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0x80>
100002538: 01 00 00 14 	b	0x10000253c <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0x60>
10000253c: a0 83 5f f8 	ldur	x0, [x29, #-8]
100002540: e1 43 00 91 	add	x1, sp, #16
100002544: 02 00 80 d2 	mov	x2, #0
100002548: 17 00 00 94 	bl	0x1000025a4 <__ZNSt3__1L30atomic_compare_exchange_strongIP5qnodeEEbPNS_6atomicIT_EEPNS5_10value_typeES7_>
10000254c: 60 00 00 36 	tbz	w0, #0, 0x100002558 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0x7c>
100002550: 01 00 00 14 	b	0x100002554 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0x78>
100002554: 11 00 00 14 	b	0x100002598 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0xbc>
100002558: 01 00 00 14 	b	0x10000255c <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0x80>
10000255c: 01 00 00 14 	b	0x100002560 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0x84>
100002560: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002564: 08 01 40 f9 	ldr	x8, [x8]
100002568: 08 01 00 b5 	cbnz	x8, 0x100002588 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0xac>
10000256c: 01 00 00 14 	b	0x100002570 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0x94>
100002570: 00 00 00 d0 	adrp	x0, 0x100004000 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0x9c>
100002574: 00 34 40 f9 	ldr	x0, [x0, #104]
100002578: 01 00 00 b0 	adrp	x1, 0x100003000 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0xa0>
10000257c: 21 5c 3a 91 	add	x1, x1, #3735
100002580: f2 05 00 94 	bl	0x100003d48 <_strlen+0x100003d48>
100002584: f7 ff ff 17 	b	0x100002560 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0x84>
100002588: e8 0b 40 f9 	ldr	x8, [sp, #16]
10000258c: 08 01 40 f9 	ldr	x8, [x8]
100002590: 1f 21 00 39 	strb	wzr, [x8, #8]
100002594: 01 00 00 14 	b	0x100002598 <__Z6unlockPNSt3__16atomicIP5qnodeEES2_+0xbc>
100002598: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
10000259c: ff c3 00 91 	add	sp, sp, #48
1000025a0: c0 03 5f d6 	ret

00000001000025a4 <__ZNSt3__1L30atomic_compare_exchange_strongIP5qnodeEEbPNS_6atomicIT_EEPNS5_10value_typeES7_>:
1000025a4: ff c3 00 d1 	sub	sp, sp, #48
1000025a8: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
1000025ac: fd 83 00 91 	add	x29, sp, #32
1000025b0: a0 83 1f f8 	stur	x0, [x29, #-8]
1000025b4: e1 0b 00 f9 	str	x1, [sp, #16]
1000025b8: e2 07 00 f9 	str	x2, [sp, #8]
1000025bc: a0 83 5f f8 	ldur	x0, [x29, #-8]
1000025c0: e1 0b 40 f9 	ldr	x1, [sp, #16]
1000025c4: e2 07 40 f9 	ldr	x2, [sp, #8]
1000025c8: a3 00 80 52 	mov	w3, #5
1000025cc: b1 03 00 94 	bl	0x100003490 <__ZNSt3__113__atomic_baseIP5qnodeLb0EE23compare_exchange_strongERS2_S2_NS_12memory_orderE>
1000025d0: 00 00 00 12 	and	w0, w0, #0x1
1000025d4: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
1000025d8: ff c3 00 91 	add	sp, sp, #48
1000025dc: c0 03 5f d6 	ret

00000001000025e0 <__Z12lock_examplePv>:
1000025e0: ff c3 00 d1 	sub	sp, sp, #48
1000025e4: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
1000025e8: fd 83 00 91 	add	x29, sp, #32
1000025ec: a0 83 1f f8 	stur	x0, [x29, #-8]
1000025f0: bf 43 1f b8 	stur	wzr, [x29, #-12]
1000025f4: 01 00 00 14 	b	0x1000025f8 <__Z12lock_examplePv+0x18>
1000025f8: a8 43 5f b8 	ldur	w8, [x29, #-12]
1000025fc: 08 41 00 71 	subs	w8, w8, #16
100002600: 2a 03 00 54 	b.ge	0x100002664 <__Z12lock_examplePv+0x84>
100002604: 01 00 00 14 	b	0x100002608 <__Z12lock_examplePv+0x28>
100002608: 00 02 80 d2 	mov	x0, #16
10000260c: d5 05 00 94 	bl	0x100003d60 <_strlen+0x100003d60>
100002610: e0 07 00 f9 	str	x0, [sp, #8]
100002614: 28 00 00 d0 	adrp	x8, 0x100008000 <__Z12lock_examplePv+0x4c>
100002618: e8 03 00 f9 	str	x8, [sp]
10000261c: 00 25 40 f9 	ldr	x0, [x8, #72]
100002620: e1 07 40 f9 	ldr	x1, [sp, #8]
100002624: 80 ff ff 97 	bl	0x100002424 <__Z4lockPNSt3__16atomicIP5qnodeEES2_>
100002628: e8 03 40 f9 	ldr	x8, [sp]
10000262c: 2a 00 00 d0 	adrp	x10, 0x100008000 <__Z12lock_examplePv+0x64>
100002630: 49 41 40 b9 	ldr	w9, [x10, #64]
100002634: 29 05 00 11 	add	w9, w9, #1
100002638: 49 41 00 b9 	str	w9, [x10, #64]
10000263c: 00 25 40 f9 	ldr	x0, [x8, #72]
100002640: e1 07 40 f9 	ldr	x1, [sp, #8]
100002644: a6 ff ff 97 	bl	0x1000024dc <__Z6unlockPNSt3__16atomicIP5qnodeEES2_>
100002648: e0 07 40 f9 	ldr	x0, [sp, #8]
10000264c: d1 05 00 94 	bl	0x100003d90 <_strlen+0x100003d90>
100002650: 01 00 00 14 	b	0x100002654 <__Z12lock_examplePv+0x74>
100002654: a8 43 5f b8 	ldur	w8, [x29, #-12]
100002658: 08 05 00 11 	add	w8, w8, #1
10000265c: a8 43 1f b8 	stur	w8, [x29, #-12]
100002660: e6 ff ff 17 	b	0x1000025f8 <__Z12lock_examplePv+0x18>
100002664: 00 00 80 d2 	mov	x0, #0
100002668: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
10000266c: ff c3 00 91 	add	sp, sp, #48
100002670: c0 03 5f d6 	ret

0000000100002674 <_main>:
100002674: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
100002678: fd 03 00 91 	mov	x29, sp
10000267c: ff 03 01 d1 	sub	sp, sp, #64
100002680: 08 00 00 d0 	adrp	x8, 0x100004000 <_main+0x14>
100002684: 08 69 40 f9 	ldr	x8, [x8, #208]
100002688: 08 01 40 f9 	ldr	x8, [x8]
10000268c: a8 83 1f f8 	stur	x8, [x29, #-8]
100002690: bf 43 1f b8 	stur	wzr, [x29, #-12]
100002694: 20 00 00 d0 	adrp	x0, 0x100008000 <_main+0x38>
100002698: 00 00 00 91 	add	x0, x0, #0
10000269c: 01 00 80 d2 	mov	x1, #0
1000026a0: c8 05 00 94 	bl	0x100003dc0 <_strlen+0x100003dc0>
1000026a4: 00 01 00 34 	cbz	w0, 0x1000026c4 <_main+0x50>
1000026a8: 01 00 00 14 	b	0x1000026ac <_main+0x38>
1000026ac: 00 00 00 b0 	adrp	x0, 0x100003000 <_main+0x3c>
1000026b0: 00 7c 3a 91 	add	x0, x0, #3743
1000026b4: ba 05 00 94 	bl	0x100003d9c <_strlen+0x100003d9c>
1000026b8: 28 00 80 52 	mov	w8, #1
1000026bc: a8 43 1f b8 	stur	w8, [x29, #-12]
1000026c0: 4a 00 00 14 	b	0x1000027e8 <_main+0x174>
1000026c4: 28 00 00 d0 	adrp	x8, 0x100008000 <_main+0x68>
1000026c8: 00 25 40 f9 	ldr	x0, [x8, #72]
1000026cc: 01 00 80 d2 	mov	x1, #0
1000026d0: 54 00 00 94 	bl	0x100002820 <__ZNSt3__16atomicIP5qnodeEaSES2_>
1000026d4: 08 08 80 52 	mov	w8, #64
1000026d8: a8 03 1f b8 	stur	w8, [x29, #-16]
1000026dc: a8 03 5f b8 	ldur	w8, [x29, #-16]
1000026e0: e9 03 00 91 	mov	x9, sp
1000026e4: a9 83 1e f8 	stur	x9, [x29, #-24]
1000026e8: 09 f1 7d d3 	lsl	x9, x8, #3
1000026ec: 29 3d 00 91 	add	x9, x9, #15
1000026f0: 29 ed 7c 92 	and	x9, x9, #0xfffffffffffffff0
1000026f4: a9 83 1c f8 	stur	x9, [x29, #-56]
1000026f8: 10 00 00 d0 	adrp	x16, 0x100004000 <_main+0x8c>
1000026fc: 10 56 40 f9 	ldr	x16, [x16, #168]
100002700: 00 02 3f d6 	blr	x16
100002704: aa 83 5c f8 	ldur	x10, [x29, #-56]
100002708: e9 03 00 91 	mov	x9, sp
10000270c: 29 01 0a eb 	subs	x9, x9, x10
100002710: 3f 01 00 91 	mov	sp, x9
100002714: a9 03 1d f8 	stur	x9, [x29, #-48]
100002718: a8 03 1e f8 	stur	x8, [x29, #-32]
10000271c: bf c3 1d b8 	stur	wzr, [x29, #-36]
100002720: 01 00 00 14 	b	0x100002724 <_main+0xb0>
100002724: a8 c3 5d b8 	ldur	w8, [x29, #-36]
100002728: a9 03 5f b8 	ldur	w9, [x29, #-16]
10000272c: 08 01 09 6b 	subs	w8, w8, w9
100002730: ea 01 00 54 	b.ge	0x10000276c <_main+0xf8>
100002734: 01 00 00 14 	b	0x100002738 <_main+0xc4>
100002738: a8 03 5d f8 	ldur	x8, [x29, #-48]
10000273c: a9 c3 9d b8 	ldursw	x9, [x29, #-36]
100002740: 00 0d 09 8b 	add	x0, x8, x9, lsl #3
100002744: 03 00 80 d2 	mov	x3, #0
100002748: e1 03 03 aa 	mov	x1, x3
10000274c: 02 00 00 90 	adrp	x2, 0x100002000 <_main+0xd8>
100002750: 42 80 17 91 	add	x2, x2, #1504
100002754: 95 05 00 94 	bl	0x100003da8 <_strlen+0x100003da8>
100002758: 01 00 00 14 	b	0x10000275c <_main+0xe8>
10000275c: a8 c3 5d b8 	ldur	w8, [x29, #-36]
100002760: 08 05 00 11 	add	w8, w8, #1
100002764: a8 c3 1d b8 	stur	w8, [x29, #-36]
100002768: ef ff ff 17 	b	0x100002724 <_main+0xb0>
10000276c: bf 83 1d b8 	stur	wzr, [x29, #-40]
100002770: 01 00 00 14 	b	0x100002774 <_main+0x100>
100002774: a8 83 5d b8 	ldur	w8, [x29, #-40]
100002778: a9 03 5f b8 	ldur	w9, [x29, #-16]
10000277c: 08 01 09 6b 	subs	w8, w8, w9
100002780: 8a 01 00 54 	b.ge	0x1000027b0 <_main+0x13c>
100002784: 01 00 00 14 	b	0x100002788 <_main+0x114>
100002788: a8 03 5d f8 	ldur	x8, [x29, #-48]
10000278c: a9 83 9d b8 	ldursw	x9, [x29, #-40]
100002790: 00 79 69 f8 	ldr	x0, [x8, x9, lsl #3]
100002794: 01 00 80 d2 	mov	x1, #0
100002798: 87 05 00 94 	bl	0x100003db4 <_strlen+0x100003db4>
10000279c: 01 00 00 14 	b	0x1000027a0 <_main+0x12c>
1000027a0: a8 83 5d b8 	ldur	w8, [x29, #-40]
1000027a4: 08 05 00 11 	add	w8, w8, #1
1000027a8: a8 83 1d b8 	stur	w8, [x29, #-40]
1000027ac: f2 ff ff 17 	b	0x100002774 <_main+0x100>
1000027b0: 00 00 00 d0 	adrp	x0, 0x100004000 <_main+0x144>
1000027b4: 00 34 40 f9 	ldr	x0, [x0, #104]
1000027b8: 01 00 00 b0 	adrp	x1, 0x100003000 <_main+0x148>
1000027bc: 21 e0 3a 91 	add	x1, x1, #3768
1000027c0: 62 05 00 94 	bl	0x100003d48 <_strlen+0x100003d48>
1000027c4: 28 00 00 d0 	adrp	x8, 0x100008000 <_main+0x168>
1000027c8: 01 41 40 b9 	ldr	w1, [x8, #64]
1000027cc: 50 05 00 94 	bl	0x100003d0c <_strlen+0x100003d0c>
1000027d0: 01 00 00 b0 	adrp	x1, 0x100003000 <_main+0x160>
1000027d4: 21 f8 39 91 	add	x1, x1, #3710
1000027d8: 5c 05 00 94 	bl	0x100003d48 <_strlen+0x100003d48>
1000027dc: a8 83 5e f8 	ldur	x8, [x29, #-24]
1000027e0: 1f 01 00 91 	mov	sp, x8
1000027e4: 01 00 00 14 	b	0x1000027e8 <_main+0x174>
1000027e8: a8 43 5f b8 	ldur	w8, [x29, #-12]
1000027ec: a8 43 1c b8 	stur	w8, [x29, #-60]
1000027f0: a9 83 5f f8 	ldur	x9, [x29, #-8]
1000027f4: 08 00 00 d0 	adrp	x8, 0x100004000 <_main+0x188>
1000027f8: 08 69 40 f9 	ldr	x8, [x8, #208]
1000027fc: 08 01 40 f9 	ldr	x8, [x8]
100002800: 08 01 09 eb 	subs	x8, x8, x9
100002804: 60 00 00 54 	b.eq	0x100002810 <_main+0x19c>
100002808: 01 00 00 14 	b	0x10000280c <_main+0x198>
10000280c: 5e 05 00 94 	bl	0x100003d84 <_strlen+0x100003d84>
100002810: a0 43 5c b8 	ldur	w0, [x29, #-60]
100002814: bf 03 00 91 	mov	sp, x29
100002818: fd 7b c1 a8 	ldp	x29, x30, [sp], #16
10000281c: c0 03 5f d6 	ret

0000000100002820 <__ZNSt3__16atomicIP5qnodeEaSES2_>:
100002820: ff 83 00 d1 	sub	sp, sp, #32
100002824: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100002828: fd 43 00 91 	add	x29, sp, #16
10000282c: e0 07 00 f9 	str	x0, [sp, #8]
100002830: e1 03 00 f9 	str	x1, [sp]
100002834: e0 07 40 f9 	ldr	x0, [sp, #8]
100002838: e1 03 40 f9 	ldr	x1, [sp]
10000283c: a2 00 80 52 	mov	w2, #5
100002840: d8 04 00 94 	bl	0x100003ba0 <__ZNSt3__113__atomic_baseIP5qnodeLb0EE5storeES2_NS_12memory_orderE>
100002844: e0 03 40 f9 	ldr	x0, [sp]
100002848: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
10000284c: ff 83 00 91 	add	sp, sp, #32
100002850: c0 03 5f d6 	ret

0000000100002854 <__ZNSt3__1L30__libcpp_thread_get_current_idEv>:
100002854: ff 83 00 d1 	sub	sp, sp, #32
100002858: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
10000285c: fd 43 00 91 	add	x29, sp, #16
100002860: 5b 05 00 94 	bl	0x100003dcc <_strlen+0x100003dcc>
100002864: e8 03 00 aa 	mov	x8, x0
100002868: e0 23 00 91 	add	x0, sp, #8
10000286c: e8 07 00 f9 	str	x8, [sp, #8]
100002870: 14 00 00 94 	bl	0x1000028c0 <__ZNSt3__1L22__libcpp_thread_get_idEPKP17_opaque_pthread_t>
100002874: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100002878: ff 83 00 91 	add	sp, sp, #32
10000287c: c0 03 5f d6 	ret

0000000100002880 <___clang_call_terminate>:
100002880: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
100002884: 3a 05 00 94 	bl	0x100003d6c <_strlen+0x100003d6c>
100002888: 33 05 00 94 	bl	0x100003d54 <_strlen+0x100003d54>

000000010000288c <__ZNSt3__111__thread_idC1EP17_opaque_pthread_t>:
10000288c: ff c3 00 d1 	sub	sp, sp, #48
100002890: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100002894: fd 83 00 91 	add	x29, sp, #32
100002898: a0 83 1f f8 	stur	x0, [x29, #-8]
10000289c: e1 0b 00 f9 	str	x1, [sp, #16]
1000028a0: a0 83 5f f8 	ldur	x0, [x29, #-8]
1000028a4: e0 07 00 f9 	str	x0, [sp, #8]
1000028a8: e1 0b 40 f9 	ldr	x1, [sp, #16]
1000028ac: 0b 00 00 94 	bl	0x1000028d8 <__ZNSt3__111__thread_idC2EP17_opaque_pthread_t>
1000028b0: e0 07 40 f9 	ldr	x0, [sp, #8]
1000028b4: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
1000028b8: ff c3 00 91 	add	sp, sp, #48
1000028bc: c0 03 5f d6 	ret

00000001000028c0 <__ZNSt3__1L22__libcpp_thread_get_idEPKP17_opaque_pthread_t>:
1000028c0: ff 43 00 d1 	sub	sp, sp, #16
1000028c4: e0 07 00 f9 	str	x0, [sp, #8]
1000028c8: e8 07 40 f9 	ldr	x8, [sp, #8]
1000028cc: 00 01 40 f9 	ldr	x0, [x8]
1000028d0: ff 43 00 91 	add	sp, sp, #16
1000028d4: c0 03 5f d6 	ret

00000001000028d8 <__ZNSt3__111__thread_idC2EP17_opaque_pthread_t>:
1000028d8: ff 43 00 d1 	sub	sp, sp, #16
1000028dc: e0 07 00 f9 	str	x0, [sp, #8]
1000028e0: e1 03 00 f9 	str	x1, [sp]
1000028e4: e0 07 40 f9 	ldr	x0, [sp, #8]
1000028e8: e8 03 40 f9 	ldr	x8, [sp]
1000028ec: 08 00 00 f9 	str	x8, [x0]
1000028f0: ff 43 00 91 	add	sp, sp, #16
1000028f4: c0 03 5f d6 	ret

00000001000028f8 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>:
1000028f8: ff 83 02 d1 	sub	sp, sp, #160
1000028fc: fd 7b 09 a9 	stp	x29, x30, [sp, #144]
100002900: fd 43 02 91 	add	x29, sp, #144
100002904: a0 83 1f f8 	stur	x0, [x29, #-8]
100002908: a1 03 1f f8 	stur	x1, [x29, #-16]
10000290c: a2 83 1e f8 	stur	x2, [x29, #-24]
100002910: a1 83 5f f8 	ldur	x1, [x29, #-8]
100002914: a0 a3 00 d1 	sub	x0, x29, #40
100002918: f4 04 00 94 	bl	0x100003ce8 <_strlen+0x100003ce8>
10000291c: 01 00 00 14 	b	0x100002920 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x28>
100002920: a0 a3 00 d1 	sub	x0, x29, #40
100002924: 78 00 00 94 	bl	0x100002b04 <__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv>
100002928: e0 47 00 b9 	str	w0, [sp, #68]
10000292c: 01 00 00 14 	b	0x100002930 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x38>
100002930: e8 47 40 b9 	ldr	w8, [sp, #68]
100002934: e8 0b 00 36 	tbz	w8, #0, 0x100002ab0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b8>
100002938: 01 00 00 14 	b	0x10000293c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x44>
10000293c: a1 83 5f f8 	ldur	x1, [x29, #-8]
100002940: e0 23 01 91 	add	x0, sp, #72
100002944: fc 00 00 94 	bl	0x100002d34 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE>
100002948: a8 03 5f f8 	ldur	x8, [x29, #-16]
10000294c: e8 1f 00 f9 	str	x8, [sp, #56]
100002950: a8 83 5f f8 	ldur	x8, [x29, #-8]
100002954: 09 01 40 f9 	ldr	x9, [x8]
100002958: 29 81 5e f8 	ldur	x9, [x9, #-24]
10000295c: 00 01 09 8b 	add	x0, x8, x9
100002960: 02 01 00 94 	bl	0x100002d68 <__ZNKSt3__18ios_base5flagsEv>
100002964: e0 43 00 b9 	str	w0, [sp, #64]
100002968: 01 00 00 14 	b	0x10000296c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x74>
10000296c: e8 43 40 b9 	ldr	w8, [sp, #64]
100002970: 09 16 80 52 	mov	w9, #176
100002974: 08 01 09 0a 	and	w8, w8, w9
100002978: 08 81 00 71 	subs	w8, w8, #32
10000297c: e1 00 00 54 	b.ne	0x100002998 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xa0>
100002980: 01 00 00 14 	b	0x100002984 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x8c>
100002984: a8 03 5f f8 	ldur	x8, [x29, #-16]
100002988: a9 83 5e f8 	ldur	x9, [x29, #-24]
10000298c: 08 01 09 8b 	add	x8, x8, x9
100002990: e8 1b 00 f9 	str	x8, [sp, #48]
100002994: 04 00 00 14 	b	0x1000029a4 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xac>
100002998: a8 03 5f f8 	ldur	x8, [x29, #-16]
10000299c: e8 1b 00 f9 	str	x8, [sp, #48]
1000029a0: 01 00 00 14 	b	0x1000029a4 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xac>
1000029a4: e8 1b 40 f9 	ldr	x8, [sp, #48]
1000029a8: e8 0b 00 f9 	str	x8, [sp, #16]
1000029ac: a8 03 5f f8 	ldur	x8, [x29, #-16]
1000029b0: a9 83 5e f8 	ldur	x9, [x29, #-24]
1000029b4: 08 01 09 8b 	add	x8, x8, x9
1000029b8: e8 0f 00 f9 	str	x8, [sp, #24]
1000029bc: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000029c0: 09 01 40 f9 	ldr	x9, [x8]
1000029c4: 29 81 5e f8 	ldur	x9, [x9, #-24]
1000029c8: 08 01 09 8b 	add	x8, x8, x9
1000029cc: e8 13 00 f9 	str	x8, [sp, #32]
1000029d0: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000029d4: 09 01 40 f9 	ldr	x9, [x8]
1000029d8: 29 81 5e f8 	ldur	x9, [x9, #-24]
1000029dc: 00 01 09 8b 	add	x0, x8, x9
1000029e0: e8 00 00 94 	bl	0x100002d80 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv>
1000029e4: e0 2f 00 b9 	str	w0, [sp, #44]
1000029e8: 01 00 00 14 	b	0x1000029ec <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xf4>
1000029ec: e8 2f 40 b9 	ldr	w8, [sp, #44]
1000029f0: e4 13 40 f9 	ldr	x4, [sp, #32]
1000029f4: e3 0f 40 f9 	ldr	x3, [sp, #24]
1000029f8: e2 0b 40 f9 	ldr	x2, [sp, #16]
1000029fc: e1 1f 40 f9 	ldr	x1, [sp, #56]
100002a00: e0 27 40 f9 	ldr	x0, [sp, #72]
100002a04: 05 1d 00 13 	sxtb	w5, w8
100002a08: 46 00 00 94 	bl	0x100002b20 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>
100002a0c: e0 07 00 f9 	str	x0, [sp, #8]
100002a10: 01 00 00 14 	b	0x100002a14 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x11c>
100002a14: e8 07 40 f9 	ldr	x8, [sp, #8]
100002a18: a0 03 01 d1 	sub	x0, x29, #64
100002a1c: a8 03 1c f8 	stur	x8, [x29, #-64]
100002a20: f1 00 00 94 	bl	0x100002de4 <__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv>
100002a24: 40 04 00 36 	tbz	w0, #0, 0x100002aac <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b4>
100002a28: 01 00 00 14 	b	0x100002a2c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x134>
100002a2c: a8 83 5f f8 	ldur	x8, [x29, #-8]
100002a30: 09 01 40 f9 	ldr	x9, [x8]
100002a34: 29 81 5e f8 	ldur	x9, [x9, #-24]
100002a38: 00 01 09 8b 	add	x0, x8, x9
100002a3c: a1 00 80 52 	mov	w1, #5
100002a40: f2 00 00 94 	bl	0x100002e08 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj>
100002a44: 01 00 00 14 	b	0x100002a48 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x150>
100002a48: 19 00 00 14 	b	0x100002aac <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b4>
100002a4c: e8 03 01 aa 	mov	x8, x1
100002a50: a0 03 1d f8 	stur	x0, [x29, #-48]
100002a54: a8 c3 1c b8 	stur	w8, [x29, #-52]
100002a58: 07 00 00 14 	b	0x100002a74 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x17c>
100002a5c: e8 03 01 aa 	mov	x8, x1
100002a60: a0 03 1d f8 	stur	x0, [x29, #-48]
100002a64: a8 c3 1c b8 	stur	w8, [x29, #-52]
100002a68: a0 a3 00 d1 	sub	x0, x29, #40
100002a6c: a2 04 00 94 	bl	0x100003cf4 <_strlen+0x100003cf4>
100002a70: 01 00 00 14 	b	0x100002a74 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x17c>
100002a74: a0 03 5d f8 	ldur	x0, [x29, #-48]
100002a78: bd 04 00 94 	bl	0x100003d6c <_strlen+0x100003d6c>
100002a7c: a8 83 5f f8 	ldur	x8, [x29, #-8]
100002a80: 09 01 40 f9 	ldr	x9, [x8]
100002a84: 29 81 5e f8 	ldur	x9, [x9, #-24]
100002a88: 00 01 09 8b 	add	x0, x8, x9
100002a8c: a9 04 00 94 	bl	0x100003d30 <_strlen+0x100003d30>
100002a90: 01 00 00 14 	b	0x100002a94 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x19c>
100002a94: b9 04 00 94 	bl	0x100003d78 <_strlen+0x100003d78>
100002a98: 01 00 00 14 	b	0x100002a9c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1a4>
100002a9c: a0 83 5f f8 	ldur	x0, [x29, #-8]
100002aa0: fd 7b 49 a9 	ldp	x29, x30, [sp, #144]
100002aa4: ff 83 02 91 	add	sp, sp, #160
100002aa8: c0 03 5f d6 	ret
100002aac: 01 00 00 14 	b	0x100002ab0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b8>
100002ab0: a0 a3 00 d1 	sub	x0, x29, #40
100002ab4: 90 04 00 94 	bl	0x100003cf4 <_strlen+0x100003cf4>
100002ab8: f9 ff ff 17 	b	0x100002a9c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1a4>
100002abc: e8 03 01 aa 	mov	x8, x1
100002ac0: a0 03 1d f8 	stur	x0, [x29, #-48]
100002ac4: a8 c3 1c b8 	stur	w8, [x29, #-52]
100002ac8: ac 04 00 94 	bl	0x100003d78 <_strlen+0x100003d78>
100002acc: 01 00 00 14 	b	0x100002ad0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1d8>
100002ad0: 01 00 00 14 	b	0x100002ad4 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1dc>
100002ad4: a0 03 5d f8 	ldur	x0, [x29, #-48]
100002ad8: 6c 04 00 94 	bl	0x100003c88 <_strlen+0x100003c88>
100002adc: 69 ff ff 97 	bl	0x100002880 <___clang_call_terminate>

0000000100002ae0 <__ZNSt3__111char_traitsIcE6lengthEPKc>:
100002ae0: ff 83 00 d1 	sub	sp, sp, #32
100002ae4: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100002ae8: fd 43 00 91 	add	x29, sp, #16
100002aec: e0 07 00 f9 	str	x0, [sp, #8]
100002af0: e0 07 40 f9 	ldr	x0, [sp, #8]
100002af4: b9 04 00 94 	bl	0x100003dd8 <_strlen+0x100003dd8>
100002af8: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100002afc: ff 83 00 91 	add	sp, sp, #32
100002b00: c0 03 5f d6 	ret

0000000100002b04 <__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv>:
100002b04: ff 43 00 d1 	sub	sp, sp, #16
100002b08: e0 07 00 f9 	str	x0, [sp, #8]
100002b0c: e8 07 40 f9 	ldr	x8, [sp, #8]
100002b10: 08 01 40 39 	ldrb	w8, [x8]
100002b14: 00 01 00 12 	and	w0, w8, #0x1
100002b18: ff 43 00 91 	add	sp, sp, #16
100002b1c: c0 03 5f d6 	ret

0000000100002b20 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>:
100002b20: ff 83 02 d1 	sub	sp, sp, #160
100002b24: fd 7b 09 a9 	stp	x29, x30, [sp, #144]
100002b28: fd 43 02 91 	add	x29, sp, #144
100002b2c: a0 03 1f f8 	stur	x0, [x29, #-16]
100002b30: a1 83 1e f8 	stur	x1, [x29, #-24]
100002b34: a2 03 1e f8 	stur	x2, [x29, #-32]
100002b38: a3 83 1d f8 	stur	x3, [x29, #-40]
100002b3c: a4 03 1d f8 	stur	x4, [x29, #-48]
100002b40: a5 f3 1c 38 	sturb	w5, [x29, #-49]
100002b44: a8 03 5f f8 	ldur	x8, [x29, #-16]
100002b48: a8 00 00 b5 	cbnz	x8, 0x100002b5c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x3c>
100002b4c: 01 00 00 14 	b	0x100002b50 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x30>
100002b50: a8 03 5f f8 	ldur	x8, [x29, #-16]
100002b54: a8 83 1f f8 	stur	x8, [x29, #-8]
100002b58: 71 00 00 14 	b	0x100002d1c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
100002b5c: a8 83 5d f8 	ldur	x8, [x29, #-40]
100002b60: a9 83 5e f8 	ldur	x9, [x29, #-24]
100002b64: 08 01 09 eb 	subs	x8, x8, x9
100002b68: a8 03 1c f8 	stur	x8, [x29, #-64]
100002b6c: a0 03 5d f8 	ldur	x0, [x29, #-48]
100002b70: b1 00 00 94 	bl	0x100002e34 <__ZNKSt3__18ios_base5widthEv>
100002b74: e0 27 00 f9 	str	x0, [sp, #72]
100002b78: e8 27 40 f9 	ldr	x8, [sp, #72]
100002b7c: a9 03 5c f8 	ldur	x9, [x29, #-64]
100002b80: 08 01 09 eb 	subs	x8, x8, x9
100002b84: ed 00 00 54 	b.le	0x100002ba0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x80>
100002b88: 01 00 00 14 	b	0x100002b8c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x6c>
100002b8c: a9 03 5c f8 	ldur	x9, [x29, #-64]
100002b90: e8 27 40 f9 	ldr	x8, [sp, #72]
100002b94: 08 01 09 eb 	subs	x8, x8, x9
100002b98: e8 27 00 f9 	str	x8, [sp, #72]
100002b9c: 03 00 00 14 	b	0x100002ba8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x88>
100002ba0: ff 27 00 f9 	str	xzr, [sp, #72]
100002ba4: 01 00 00 14 	b	0x100002ba8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x88>
100002ba8: a8 03 5e f8 	ldur	x8, [x29, #-32]
100002bac: a9 83 5e f8 	ldur	x9, [x29, #-24]
100002bb0: 08 01 09 eb 	subs	x8, x8, x9
100002bb4: e8 23 00 f9 	str	x8, [sp, #64]
100002bb8: e8 23 40 f9 	ldr	x8, [sp, #64]
100002bbc: 08 01 00 f1 	subs	x8, x8, #0
100002bc0: ed 01 00 54 	b.le	0x100002bfc <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdc>
100002bc4: 01 00 00 14 	b	0x100002bc8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xa8>
100002bc8: a0 03 5f f8 	ldur	x0, [x29, #-16]
100002bcc: a1 83 5e f8 	ldur	x1, [x29, #-24]
100002bd0: e2 23 40 f9 	ldr	x2, [sp, #64]
100002bd4: 9e 00 00 94 	bl	0x100002e4c <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>
100002bd8: e8 23 40 f9 	ldr	x8, [sp, #64]
100002bdc: 08 00 08 eb 	subs	x8, x0, x8
100002be0: c0 00 00 54 	b.eq	0x100002bf8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xd8>
100002be4: 01 00 00 14 	b	0x100002be8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xc8>
100002be8: bf 03 1f f8 	stur	xzr, [x29, #-16]
100002bec: a8 03 5f f8 	ldur	x8, [x29, #-16]
100002bf0: a8 83 1f f8 	stur	x8, [x29, #-8]
100002bf4: 4a 00 00 14 	b	0x100002d1c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
100002bf8: 01 00 00 14 	b	0x100002bfc <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdc>
100002bfc: e8 27 40 f9 	ldr	x8, [sp, #72]
100002c00: 08 01 00 f1 	subs	x8, x8, #0
100002c04: 6d 05 00 54 	b.le	0x100002cb0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x190>
100002c08: 01 00 00 14 	b	0x100002c0c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xec>
100002c0c: e1 27 40 f9 	ldr	x1, [sp, #72]
100002c10: a2 f3 dc 38 	ldursb	w2, [x29, #-49]
100002c14: e0 a3 00 91 	add	x0, sp, #40
100002c18: e0 03 00 f9 	str	x0, [sp]
100002c1c: 9b 00 00 94 	bl	0x100002e88 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc>
100002c20: e0 03 40 f9 	ldr	x0, [sp]
100002c24: a8 03 5f f8 	ldur	x8, [x29, #-16]
100002c28: e8 07 00 f9 	str	x8, [sp, #8]
100002c2c: a6 00 00 94 	bl	0x100002ec4 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv>
100002c30: e1 03 00 aa 	mov	x1, x0
100002c34: e0 07 40 f9 	ldr	x0, [sp, #8]
100002c38: e2 27 40 f9 	ldr	x2, [sp, #72]
100002c3c: 84 00 00 94 	bl	0x100002e4c <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>
100002c40: e0 0b 00 f9 	str	x0, [sp, #16]
100002c44: 01 00 00 14 	b	0x100002c48 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x128>
100002c48: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002c4c: e9 27 40 f9 	ldr	x9, [sp, #72]
100002c50: 08 01 09 eb 	subs	x8, x8, x9
100002c54: c0 01 00 54 	b.eq	0x100002c8c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x16c>
100002c58: 01 00 00 14 	b	0x100002c5c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x13c>
100002c5c: bf 03 1f f8 	stur	xzr, [x29, #-16]
100002c60: a8 03 5f f8 	ldur	x8, [x29, #-16]
100002c64: a8 83 1f f8 	stur	x8, [x29, #-8]
100002c68: 28 00 80 52 	mov	w8, #1
100002c6c: e8 1b 00 b9 	str	w8, [sp, #24]
100002c70: 09 00 00 14 	b	0x100002c94 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x174>
100002c74: e8 03 01 aa 	mov	x8, x1
100002c78: e0 13 00 f9 	str	x0, [sp, #32]
100002c7c: e8 1f 00 b9 	str	w8, [sp, #28]
100002c80: e0 a3 00 91 	add	x0, sp, #40
100002c84: 16 04 00 94 	bl	0x100003cdc <_strlen+0x100003cdc>
100002c88: 29 00 00 14 	b	0x100002d2c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x20c>
100002c8c: ff 1b 00 b9 	str	wzr, [sp, #24]
100002c90: 01 00 00 14 	b	0x100002c94 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x174>
100002c94: e0 a3 00 91 	add	x0, sp, #40
100002c98: 11 04 00 94 	bl	0x100003cdc <_strlen+0x100003cdc>
100002c9c: e8 1b 40 b9 	ldr	w8, [sp, #24]
100002ca0: 68 00 00 34 	cbz	w8, 0x100002cac <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x18c>
100002ca4: 01 00 00 14 	b	0x100002ca8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x188>
100002ca8: 1d 00 00 14 	b	0x100002d1c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
100002cac: 01 00 00 14 	b	0x100002cb0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x190>
100002cb0: a8 83 5d f8 	ldur	x8, [x29, #-40]
100002cb4: a9 03 5e f8 	ldur	x9, [x29, #-32]
100002cb8: 08 01 09 eb 	subs	x8, x8, x9
100002cbc: e8 23 00 f9 	str	x8, [sp, #64]
100002cc0: e8 23 40 f9 	ldr	x8, [sp, #64]
100002cc4: 08 01 00 f1 	subs	x8, x8, #0
100002cc8: ed 01 00 54 	b.le	0x100002d04 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e4>
100002ccc: 01 00 00 14 	b	0x100002cd0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1b0>
100002cd0: a0 03 5f f8 	ldur	x0, [x29, #-16]
100002cd4: a1 03 5e f8 	ldur	x1, [x29, #-32]
100002cd8: e2 23 40 f9 	ldr	x2, [sp, #64]
100002cdc: 5c 00 00 94 	bl	0x100002e4c <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>
100002ce0: e8 23 40 f9 	ldr	x8, [sp, #64]
100002ce4: 08 00 08 eb 	subs	x8, x0, x8
100002ce8: c0 00 00 54 	b.eq	0x100002d00 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e0>
100002cec: 01 00 00 14 	b	0x100002cf0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1d0>
100002cf0: bf 03 1f f8 	stur	xzr, [x29, #-16]
100002cf4: a8 03 5f f8 	ldur	x8, [x29, #-16]
100002cf8: a8 83 1f f8 	stur	x8, [x29, #-8]
100002cfc: 08 00 00 14 	b	0x100002d1c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
100002d00: 01 00 00 14 	b	0x100002d04 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e4>
100002d04: a0 03 5d f8 	ldur	x0, [x29, #-48]
100002d08: 01 00 80 d2 	mov	x1, #0
100002d0c: 78 00 00 94 	bl	0x100002eec <__ZNSt3__18ios_base5widthEl>
100002d10: a8 03 5f f8 	ldur	x8, [x29, #-16]
100002d14: a8 83 1f f8 	stur	x8, [x29, #-8]
100002d18: 01 00 00 14 	b	0x100002d1c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
100002d1c: a0 83 5f f8 	ldur	x0, [x29, #-8]
100002d20: fd 7b 49 a9 	ldp	x29, x30, [sp, #144]
100002d24: ff 83 02 91 	add	sp, sp, #160
100002d28: c0 03 5f d6 	ret
100002d2c: e0 13 40 f9 	ldr	x0, [sp, #32]
100002d30: d6 03 00 94 	bl	0x100003c88 <_strlen+0x100003c88>

0000000100002d34 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE>:
100002d34: ff c3 00 d1 	sub	sp, sp, #48
100002d38: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100002d3c: fd 83 00 91 	add	x29, sp, #32
100002d40: a0 83 1f f8 	stur	x0, [x29, #-8]
100002d44: e1 0b 00 f9 	str	x1, [sp, #16]
100002d48: a0 83 5f f8 	ldur	x0, [x29, #-8]
100002d4c: e0 07 00 f9 	str	x0, [sp, #8]
100002d50: e1 0b 40 f9 	ldr	x1, [sp, #16]
100002d54: 23 01 00 94 	bl	0x1000031e0 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE>
100002d58: e0 07 40 f9 	ldr	x0, [sp, #8]
100002d5c: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100002d60: ff c3 00 91 	add	sp, sp, #48
100002d64: c0 03 5f d6 	ret

0000000100002d68 <__ZNKSt3__18ios_base5flagsEv>:
100002d68: ff 43 00 d1 	sub	sp, sp, #16
100002d6c: e0 07 00 f9 	str	x0, [sp, #8]
100002d70: e8 07 40 f9 	ldr	x8, [sp, #8]
100002d74: 00 09 40 b9 	ldr	w0, [x8, #8]
100002d78: ff 43 00 91 	add	sp, sp, #16
100002d7c: c0 03 5f d6 	ret

0000000100002d80 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv>:
100002d80: ff 83 00 d1 	sub	sp, sp, #32
100002d84: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100002d88: fd 43 00 91 	add	x29, sp, #16
100002d8c: e0 07 00 f9 	str	x0, [sp, #8]
100002d90: e8 07 40 f9 	ldr	x8, [sp, #8]
100002d94: e8 03 00 f9 	str	x8, [sp]
100002d98: c8 03 00 94 	bl	0x100003cb8 <_strlen+0x100003cb8>
100002d9c: e8 03 40 f9 	ldr	x8, [sp]
100002da0: 01 91 40 b9 	ldr	w1, [x8, #144]
100002da4: c2 03 00 94 	bl	0x100003cac <_strlen+0x100003cac>
100002da8: 20 01 00 36 	tbz	w0, #0, 0x100002dcc <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv+0x4c>
100002dac: 01 00 00 14 	b	0x100002db0 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv+0x30>
100002db0: e0 03 40 f9 	ldr	x0, [sp]
100002db4: 01 04 80 52 	mov	w1, #32
100002db8: 3a 01 00 94 	bl	0x1000032a0 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc>
100002dbc: e9 03 40 f9 	ldr	x9, [sp]
100002dc0: 08 1c 00 13 	sxtb	w8, w0
100002dc4: 28 91 00 b9 	str	w8, [x9, #144]
100002dc8: 01 00 00 14 	b	0x100002dcc <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv+0x4c>
100002dcc: e8 03 40 f9 	ldr	x8, [sp]
100002dd0: 08 91 40 b9 	ldr	w8, [x8, #144]
100002dd4: 00 1d 00 13 	sxtb	w0, w8
100002dd8: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100002ddc: ff 83 00 91 	add	sp, sp, #32
100002de0: c0 03 5f d6 	ret

0000000100002de4 <__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv>:
100002de4: ff 43 00 d1 	sub	sp, sp, #16
100002de8: e0 07 00 f9 	str	x0, [sp, #8]
100002dec: e8 07 40 f9 	ldr	x8, [sp, #8]
100002df0: 08 01 40 f9 	ldr	x8, [x8]
100002df4: 08 01 00 f1 	subs	x8, x8, #0
100002df8: e8 17 9f 1a 	cset	w8, eq
100002dfc: 00 01 00 12 	and	w0, w8, #0x1
100002e00: ff 43 00 91 	add	sp, sp, #16
100002e04: c0 03 5f d6 	ret

0000000100002e08 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj>:
100002e08: ff 83 00 d1 	sub	sp, sp, #32
100002e0c: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100002e10: fd 43 00 91 	add	x29, sp, #16
100002e14: e0 07 00 f9 	str	x0, [sp, #8]
100002e18: e1 07 00 b9 	str	w1, [sp, #4]
100002e1c: e0 07 40 f9 	ldr	x0, [sp, #8]
100002e20: e1 07 40 b9 	ldr	w1, [sp, #4]
100002e24: 59 01 00 94 	bl	0x100003388 <__ZNSt3__18ios_base8setstateEj>
100002e28: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100002e2c: ff 83 00 91 	add	sp, sp, #32
100002e30: c0 03 5f d6 	ret

0000000100002e34 <__ZNKSt3__18ios_base5widthEv>:
100002e34: ff 43 00 d1 	sub	sp, sp, #16
100002e38: e0 07 00 f9 	str	x0, [sp, #8]
100002e3c: e8 07 40 f9 	ldr	x8, [sp, #8]
100002e40: 00 0d 40 f9 	ldr	x0, [x8, #24]
100002e44: ff 43 00 91 	add	sp, sp, #16
100002e48: c0 03 5f d6 	ret

0000000100002e4c <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>:
100002e4c: ff c3 00 d1 	sub	sp, sp, #48
100002e50: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100002e54: fd 83 00 91 	add	x29, sp, #32
100002e58: a0 83 1f f8 	stur	x0, [x29, #-8]
100002e5c: e1 0b 00 f9 	str	x1, [sp, #16]
100002e60: e2 07 00 f9 	str	x2, [sp, #8]
100002e64: a0 83 5f f8 	ldur	x0, [x29, #-8]
100002e68: e1 0b 40 f9 	ldr	x1, [sp, #16]
100002e6c: e2 07 40 f9 	ldr	x2, [sp, #8]
100002e70: 08 00 40 f9 	ldr	x8, [x0]
100002e74: 08 31 40 f9 	ldr	x8, [x8, #96]
100002e78: 00 01 3f d6 	blr	x8
100002e7c: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100002e80: ff c3 00 91 	add	sp, sp, #48
100002e84: c0 03 5f d6 	ret

0000000100002e88 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc>:
100002e88: ff c3 00 d1 	sub	sp, sp, #48
100002e8c: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100002e90: fd 83 00 91 	add	x29, sp, #32
100002e94: a0 83 1f f8 	stur	x0, [x29, #-8]
100002e98: e1 0b 00 f9 	str	x1, [sp, #16]
100002e9c: e2 3f 00 39 	strb	w2, [sp, #15]
100002ea0: a0 83 5f f8 	ldur	x0, [x29, #-8]
100002ea4: e0 03 00 f9 	str	x0, [sp]
100002ea8: e1 0b 40 f9 	ldr	x1, [sp, #16]
100002eac: e2 3f c0 39 	ldrsb	w2, [sp, #15]
100002eb0: 1a 00 00 94 	bl	0x100002f18 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc>
100002eb4: e0 03 40 f9 	ldr	x0, [sp]
100002eb8: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100002ebc: ff c3 00 91 	add	sp, sp, #48
100002ec0: c0 03 5f d6 	ret

0000000100002ec4 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv>:
100002ec4: ff 83 00 d1 	sub	sp, sp, #32
100002ec8: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100002ecc: fd 43 00 91 	add	x29, sp, #16
100002ed0: e0 07 00 f9 	str	x0, [sp, #8]
100002ed4: e0 07 40 f9 	ldr	x0, [sp, #8]
100002ed8: 70 00 00 94 	bl	0x100003098 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv>
100002edc: 6a 00 00 94 	bl	0x100003084 <__ZNSt3__1L12__to_addressIKcEEPT_S3_>
100002ee0: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100002ee4: ff 83 00 91 	add	sp, sp, #32
100002ee8: c0 03 5f d6 	ret

0000000100002eec <__ZNSt3__18ios_base5widthEl>:
100002eec: ff 83 00 d1 	sub	sp, sp, #32
100002ef0: e0 0f 00 f9 	str	x0, [sp, #24]
100002ef4: e1 0b 00 f9 	str	x1, [sp, #16]
100002ef8: e9 0f 40 f9 	ldr	x9, [sp, #24]
100002efc: 28 0d 40 f9 	ldr	x8, [x9, #24]
100002f00: e8 07 00 f9 	str	x8, [sp, #8]
100002f04: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002f08: 28 0d 00 f9 	str	x8, [x9, #24]
100002f0c: e0 07 40 f9 	ldr	x0, [sp, #8]
100002f10: ff 83 00 91 	add	sp, sp, #32
100002f14: c0 03 5f d6 	ret

0000000100002f18 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc>:
100002f18: ff c3 00 d1 	sub	sp, sp, #48
100002f1c: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100002f20: fd 83 00 91 	add	x29, sp, #32
100002f24: a0 83 1f f8 	stur	x0, [x29, #-8]
100002f28: e1 0b 00 f9 	str	x1, [sp, #16]
100002f2c: e2 3f 00 39 	strb	w2, [sp, #15]
100002f30: a0 83 5f f8 	ldur	x0, [x29, #-8]
100002f34: e0 03 00 f9 	str	x0, [sp]
100002f38: e1 3b 00 91 	add	x1, sp, #14
100002f3c: e2 37 00 91 	add	x2, sp, #13
100002f40: 09 00 00 94 	bl	0x100002f64 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_>
100002f44: e0 03 40 f9 	ldr	x0, [sp]
100002f48: e1 0b 40 f9 	ldr	x1, [sp, #16]
100002f4c: e2 3f c0 39 	ldrsb	w2, [sp, #15]
100002f50: 60 03 00 94 	bl	0x100003cd0 <_strlen+0x100003cd0>
100002f54: e0 03 40 f9 	ldr	x0, [sp]
100002f58: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100002f5c: ff c3 00 91 	add	sp, sp, #48
100002f60: c0 03 5f d6 	ret

0000000100002f64 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_>:
100002f64: ff c3 00 d1 	sub	sp, sp, #48
100002f68: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100002f6c: fd 83 00 91 	add	x29, sp, #32
100002f70: a0 83 1f f8 	stur	x0, [x29, #-8]
100002f74: e1 0b 00 f9 	str	x1, [sp, #16]
100002f78: e2 07 00 f9 	str	x2, [sp, #8]
100002f7c: a0 83 5f f8 	ldur	x0, [x29, #-8]
100002f80: e0 03 00 f9 	str	x0, [sp]
100002f84: e1 0b 40 f9 	ldr	x1, [sp, #16]
100002f88: e2 07 40 f9 	ldr	x2, [sp, #8]
100002f8c: 05 00 00 94 	bl	0x100002fa0 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_>
100002f90: e0 03 40 f9 	ldr	x0, [sp]
100002f94: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100002f98: ff c3 00 91 	add	sp, sp, #48
100002f9c: c0 03 5f d6 	ret

0000000100002fa0 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_>:
100002fa0: ff 03 01 d1 	sub	sp, sp, #64
100002fa4: fd 7b 03 a9 	stp	x29, x30, [sp, #48]
100002fa8: fd c3 00 91 	add	x29, sp, #48
100002fac: a0 83 1f f8 	stur	x0, [x29, #-8]
100002fb0: a1 03 1f f8 	stur	x1, [x29, #-16]
100002fb4: e2 0f 00 f9 	str	x2, [sp, #24]
100002fb8: a8 83 5f f8 	ldur	x8, [x29, #-8]
100002fbc: e8 07 00 f9 	str	x8, [sp, #8]
100002fc0: a0 03 5f f8 	ldur	x0, [x29, #-16]
100002fc4: 0b 00 00 94 	bl	0x100002ff0 <__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE>
100002fc8: e0 07 40 f9 	ldr	x0, [sp, #8]
100002fcc: 0e 00 00 94 	bl	0x100003004 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE>
100002fd0: e0 0f 40 f9 	ldr	x0, [sp, #24]
100002fd4: 07 00 00 94 	bl	0x100002ff0 <__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE>
100002fd8: e0 07 40 f9 	ldr	x0, [sp, #8]
100002fdc: 0f 00 00 94 	bl	0x100003018 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE>
100002fe0: e0 07 40 f9 	ldr	x0, [sp, #8]
100002fe4: fd 7b 43 a9 	ldp	x29, x30, [sp, #48]
100002fe8: ff 03 01 91 	add	sp, sp, #64
100002fec: c0 03 5f d6 	ret

0000000100002ff0 <__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE>:
100002ff0: ff 43 00 d1 	sub	sp, sp, #16
100002ff4: e0 07 00 f9 	str	x0, [sp, #8]
100002ff8: e0 07 40 f9 	ldr	x0, [sp, #8]
100002ffc: ff 43 00 91 	add	sp, sp, #16
100003000: c0 03 5f d6 	ret

0000000100003004 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE>:
100003004: ff 43 00 d1 	sub	sp, sp, #16
100003008: e0 03 00 f9 	str	x0, [sp]
10000300c: e0 03 40 f9 	ldr	x0, [sp]
100003010: ff 43 00 91 	add	sp, sp, #16
100003014: c0 03 5f d6 	ret

0000000100003018 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE>:
100003018: ff c3 00 d1 	sub	sp, sp, #48
10000301c: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003020: fd 83 00 91 	add	x29, sp, #32
100003024: e0 0b 00 f9 	str	x0, [sp, #16]
100003028: e0 0b 40 f9 	ldr	x0, [sp, #16]
10000302c: e0 07 00 f9 	str	x0, [sp, #8]
100003030: 05 00 00 94 	bl	0x100003044 <__ZNSt3__19allocatorIcEC2Ev>
100003034: e0 07 40 f9 	ldr	x0, [sp, #8]
100003038: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
10000303c: ff c3 00 91 	add	sp, sp, #48
100003040: c0 03 5f d6 	ret

0000000100003044 <__ZNSt3__19allocatorIcEC2Ev>:
100003044: ff 83 00 d1 	sub	sp, sp, #32
100003048: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
10000304c: fd 43 00 91 	add	x29, sp, #16
100003050: e0 07 00 f9 	str	x0, [sp, #8]
100003054: e0 07 40 f9 	ldr	x0, [sp, #8]
100003058: e0 03 00 f9 	str	x0, [sp]
10000305c: 05 00 00 94 	bl	0x100003070 <__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev>
100003060: e0 03 40 f9 	ldr	x0, [sp]
100003064: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003068: ff 83 00 91 	add	sp, sp, #32
10000306c: c0 03 5f d6 	ret

0000000100003070 <__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2Ev>:
100003070: ff 43 00 d1 	sub	sp, sp, #16
100003074: e0 07 00 f9 	str	x0, [sp, #8]
100003078: e0 07 40 f9 	ldr	x0, [sp, #8]
10000307c: ff 43 00 91 	add	sp, sp, #16
100003080: c0 03 5f d6 	ret

0000000100003084 <__ZNSt3__1L12__to_addressIKcEEPT_S3_>:
100003084: ff 43 00 d1 	sub	sp, sp, #16
100003088: e0 07 00 f9 	str	x0, [sp, #8]
10000308c: e0 07 40 f9 	ldr	x0, [sp, #8]
100003090: ff 43 00 91 	add	sp, sp, #16
100003094: c0 03 5f d6 	ret

0000000100003098 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv>:
100003098: ff c3 00 d1 	sub	sp, sp, #48
10000309c: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
1000030a0: fd 83 00 91 	add	x29, sp, #32
1000030a4: a0 83 1f f8 	stur	x0, [x29, #-8]
1000030a8: a0 83 5f f8 	ldur	x0, [x29, #-8]
1000030ac: e0 0b 00 f9 	str	x0, [sp, #16]
1000030b0: 0f 00 00 94 	bl	0x1000030ec <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv>
1000030b4: c0 00 00 36 	tbz	w0, #0, 0x1000030cc <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x34>
1000030b8: 01 00 00 14 	b	0x1000030bc <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x24>
1000030bc: e0 0b 40 f9 	ldr	x0, [sp, #16]
1000030c0: 18 00 00 94 	bl	0x100003120 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv>
1000030c4: e0 07 00 f9 	str	x0, [sp, #8]
1000030c8: 05 00 00 14 	b	0x1000030dc <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x44>
1000030cc: e0 0b 40 f9 	ldr	x0, [sp, #16]
1000030d0: 1e 00 00 94 	bl	0x100003148 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv>
1000030d4: e0 07 00 f9 	str	x0, [sp, #8]
1000030d8: 01 00 00 14 	b	0x1000030dc <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x44>
1000030dc: e0 07 40 f9 	ldr	x0, [sp, #8]
1000030e0: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
1000030e4: ff c3 00 91 	add	sp, sp, #48
1000030e8: c0 03 5f d6 	ret

00000001000030ec <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv>:
1000030ec: ff 83 00 d1 	sub	sp, sp, #32
1000030f0: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
1000030f4: fd 43 00 91 	add	x29, sp, #16
1000030f8: e0 07 00 f9 	str	x0, [sp, #8]
1000030fc: e0 07 40 f9 	ldr	x0, [sp, #8]
100003100: 1c 00 00 94 	bl	0x100003170 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
100003104: 08 5c 40 39 	ldrb	w8, [x0, #23]
100003108: 08 01 79 f2 	ands	x8, x8, #0x80
10000310c: e8 07 9f 1a 	cset	w8, ne
100003110: 00 01 00 12 	and	w0, w8, #0x1
100003114: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003118: ff 83 00 91 	add	sp, sp, #32
10000311c: c0 03 5f d6 	ret

0000000100003120 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv>:
100003120: ff 83 00 d1 	sub	sp, sp, #32
100003124: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003128: fd 43 00 91 	add	x29, sp, #16
10000312c: e0 07 00 f9 	str	x0, [sp, #8]
100003130: e0 07 40 f9 	ldr	x0, [sp, #8]
100003134: 0f 00 00 94 	bl	0x100003170 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
100003138: 00 00 40 f9 	ldr	x0, [x0]
10000313c: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003140: ff 83 00 91 	add	sp, sp, #32
100003144: c0 03 5f d6 	ret

0000000100003148 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv>:
100003148: ff 83 00 d1 	sub	sp, sp, #32
10000314c: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003150: fd 43 00 91 	add	x29, sp, #16
100003154: e0 07 00 f9 	str	x0, [sp, #8]
100003158: e0 07 40 f9 	ldr	x0, [sp, #8]
10000315c: 05 00 00 94 	bl	0x100003170 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
100003160: 12 00 00 94 	bl	0x1000031a8 <__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_>
100003164: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003168: ff 83 00 91 	add	sp, sp, #32
10000316c: c0 03 5f d6 	ret

0000000100003170 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>:
100003170: ff 83 00 d1 	sub	sp, sp, #32
100003174: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003178: fd 43 00 91 	add	x29, sp, #16
10000317c: e0 07 00 f9 	str	x0, [sp, #8]
100003180: e0 07 40 f9 	ldr	x0, [sp, #8]
100003184: 04 00 00 94 	bl	0x100003194 <__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv>
100003188: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
10000318c: ff 83 00 91 	add	sp, sp, #32
100003190: c0 03 5f d6 	ret

0000000100003194 <__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv>:
100003194: ff 43 00 d1 	sub	sp, sp, #16
100003198: e0 07 00 f9 	str	x0, [sp, #8]
10000319c: e0 07 40 f9 	ldr	x0, [sp, #8]
1000031a0: ff 43 00 91 	add	sp, sp, #16
1000031a4: c0 03 5f d6 	ret

00000001000031a8 <__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_>:
1000031a8: ff 83 00 d1 	sub	sp, sp, #32
1000031ac: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
1000031b0: fd 43 00 91 	add	x29, sp, #16
1000031b4: e0 07 00 f9 	str	x0, [sp, #8]
1000031b8: e0 07 40 f9 	ldr	x0, [sp, #8]
1000031bc: 04 00 00 94 	bl	0x1000031cc <__ZNSt3__1L9addressofIKcEEPT_RS2_>
1000031c0: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
1000031c4: ff 83 00 91 	add	sp, sp, #32
1000031c8: c0 03 5f d6 	ret

00000001000031cc <__ZNSt3__1L9addressofIKcEEPT_RS2_>:
1000031cc: ff 43 00 d1 	sub	sp, sp, #16
1000031d0: e0 07 00 f9 	str	x0, [sp, #8]
1000031d4: e0 07 40 f9 	ldr	x0, [sp, #8]
1000031d8: ff 43 00 91 	add	sp, sp, #16
1000031dc: c0 03 5f d6 	ret

00000001000031e0 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE>:
1000031e0: ff c3 00 d1 	sub	sp, sp, #48
1000031e4: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
1000031e8: fd 83 00 91 	add	x29, sp, #32
1000031ec: a0 83 1f f8 	stur	x0, [x29, #-8]
1000031f0: e1 0b 00 f9 	str	x1, [sp, #16]
1000031f4: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000031f8: e8 03 00 f9 	str	x8, [sp]
1000031fc: e8 0b 40 f9 	ldr	x8, [sp, #16]
100003200: 09 01 40 f9 	ldr	x9, [x8]
100003204: 29 81 5e f8 	ldur	x9, [x9, #-24]
100003208: 00 01 09 8b 	add	x0, x8, x9
10000320c: 0a 00 00 94 	bl	0x100003234 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv>
100003210: e0 07 00 f9 	str	x0, [sp, #8]
100003214: 01 00 00 14 	b	0x100003218 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE+0x38>
100003218: e0 03 40 f9 	ldr	x0, [sp]
10000321c: e8 07 40 f9 	ldr	x8, [sp, #8]
100003220: 08 00 00 f9 	str	x8, [x0]
100003224: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003228: ff c3 00 91 	add	sp, sp, #48
10000322c: c0 03 5f d6 	ret
100003230: 94 fd ff 97 	bl	0x100002880 <___clang_call_terminate>

0000000100003234 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv>:
100003234: ff 83 00 d1 	sub	sp, sp, #32
100003238: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
10000323c: fd 43 00 91 	add	x29, sp, #16
100003240: e0 07 00 f9 	str	x0, [sp, #8]
100003244: e0 07 40 f9 	ldr	x0, [sp, #8]
100003248: 04 00 00 94 	bl	0x100003258 <__ZNKSt3__18ios_base5rdbufEv>
10000324c: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003250: ff 83 00 91 	add	sp, sp, #32
100003254: c0 03 5f d6 	ret

0000000100003258 <__ZNKSt3__18ios_base5rdbufEv>:
100003258: ff 43 00 d1 	sub	sp, sp, #16
10000325c: e0 07 00 f9 	str	x0, [sp, #8]
100003260: e8 07 40 f9 	ldr	x8, [sp, #8]
100003264: 00 15 40 f9 	ldr	x0, [x8, #40]
100003268: ff 43 00 91 	add	sp, sp, #16
10000326c: c0 03 5f d6 	ret

0000000100003270 <__ZNSt3__111char_traitsIcE11eq_int_typeEii>:
100003270: ff 43 00 d1 	sub	sp, sp, #16
100003274: e0 0f 00 b9 	str	w0, [sp, #12]
100003278: e1 0b 00 b9 	str	w1, [sp, #8]
10000327c: e8 0f 40 b9 	ldr	w8, [sp, #12]
100003280: e9 0b 40 b9 	ldr	w9, [sp, #8]
100003284: 08 01 09 6b 	subs	w8, w8, w9
100003288: e8 17 9f 1a 	cset	w8, eq
10000328c: 00 01 00 12 	and	w0, w8, #0x1
100003290: ff 43 00 91 	add	sp, sp, #16
100003294: c0 03 5f d6 	ret

0000000100003298 <__ZNSt3__111char_traitsIcE3eofEv>:
100003298: 00 00 80 12 	mov	w0, #-1
10000329c: c0 03 5f d6 	ret

00000001000032a0 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc>:
1000032a0: ff 43 01 d1 	sub	sp, sp, #80
1000032a4: fd 7b 04 a9 	stp	x29, x30, [sp, #64]
1000032a8: fd 03 01 91 	add	x29, sp, #64
1000032ac: a0 83 1f f8 	stur	x0, [x29, #-8]
1000032b0: a1 73 1f 38 	sturb	w1, [x29, #-9]
1000032b4: a0 83 5f f8 	ldur	x0, [x29, #-8]
1000032b8: a8 63 00 d1 	sub	x8, x29, #24
1000032bc: e8 07 00 f9 	str	x8, [sp, #8]
1000032c0: 78 02 00 94 	bl	0x100003ca0 <_strlen+0x100003ca0>
1000032c4: e0 07 40 f9 	ldr	x0, [sp, #8]
1000032c8: 17 00 00 94 	bl	0x100003324 <__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE>
1000032cc: e0 0b 00 f9 	str	x0, [sp, #16]
1000032d0: 01 00 00 14 	b	0x1000032d4 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc+0x34>
1000032d4: e0 0b 40 f9 	ldr	x0, [sp, #16]
1000032d8: a1 73 df 38 	ldursb	w1, [x29, #-9]
1000032dc: 1d 00 00 94 	bl	0x100003350 <__ZNKSt3__15ctypeIcE5widenEc>
1000032e0: e0 07 00 b9 	str	w0, [sp, #4]
1000032e4: 01 00 00 14 	b	0x1000032e8 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc+0x48>
1000032e8: a0 63 00 d1 	sub	x0, x29, #24
1000032ec: 8e 02 00 94 	bl	0x100003d24 <_strlen+0x100003d24>
1000032f0: e8 07 40 b9 	ldr	w8, [sp, #4]
1000032f4: 00 1d 00 13 	sxtb	w0, w8
1000032f8: fd 7b 44 a9 	ldp	x29, x30, [sp, #64]
1000032fc: ff 43 01 91 	add	sp, sp, #80
100003300: c0 03 5f d6 	ret
100003304: e8 03 01 aa 	mov	x8, x1
100003308: e0 13 00 f9 	str	x0, [sp, #32]
10000330c: e8 1f 00 b9 	str	w8, [sp, #28]
100003310: a0 63 00 d1 	sub	x0, x29, #24
100003314: 84 02 00 94 	bl	0x100003d24 <_strlen+0x100003d24>
100003318: 01 00 00 14 	b	0x10000331c <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc+0x7c>
10000331c: e0 13 40 f9 	ldr	x0, [sp, #32]
100003320: 5a 02 00 94 	bl	0x100003c88 <_strlen+0x100003c88>

0000000100003324 <__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE>:
100003324: ff 83 00 d1 	sub	sp, sp, #32
100003328: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
10000332c: fd 43 00 91 	add	x29, sp, #16
100003330: e0 07 00 f9 	str	x0, [sp, #8]
100003334: e0 07 40 f9 	ldr	x0, [sp, #8]
100003338: 01 00 00 b0 	adrp	x1, 0x100004000 <__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE+0x18>
10000333c: 21 38 40 f9 	ldr	x1, [x1, #112]
100003340: 55 02 00 94 	bl	0x100003c94 <_strlen+0x100003c94>
100003344: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003348: ff 83 00 91 	add	sp, sp, #32
10000334c: c0 03 5f d6 	ret

0000000100003350 <__ZNKSt3__15ctypeIcE5widenEc>:
100003350: ff 83 00 d1 	sub	sp, sp, #32
100003354: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003358: fd 43 00 91 	add	x29, sp, #16
10000335c: e0 07 00 f9 	str	x0, [sp, #8]
100003360: e1 1f 00 39 	strb	w1, [sp, #7]
100003364: e0 07 40 f9 	ldr	x0, [sp, #8]
100003368: e1 1f c0 39 	ldrsb	w1, [sp, #7]
10000336c: 08 00 40 f9 	ldr	x8, [x0]
100003370: 08 1d 40 f9 	ldr	x8, [x8, #56]
100003374: 00 01 3f d6 	blr	x8
100003378: 00 1c 00 13 	sxtb	w0, w0
10000337c: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100003380: ff 83 00 91 	add	sp, sp, #32
100003384: c0 03 5f d6 	ret

0000000100003388 <__ZNSt3__18ios_base8setstateEj>:
100003388: ff 83 00 d1 	sub	sp, sp, #32
10000338c: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100003390: fd 43 00 91 	add	x29, sp, #16
100003394: e0 07 00 f9 	str	x0, [sp, #8]
100003398: e1 07 00 b9 	str	w1, [sp, #4]
10000339c: e0 07 40 f9 	ldr	x0, [sp, #8]
1000033a0: 08 20 40 b9 	ldr	w8, [x0, #32]
1000033a4: e9 07 40 b9 	ldr	w9, [sp, #4]
1000033a8: 01 01 09 2a 	orr	w1, w8, w9
1000033ac: 64 02 00 94 	bl	0x100003d3c <_strlen+0x100003d3c>
1000033b0: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
1000033b4: ff 83 00 91 	add	sp, sp, #32
1000033b8: c0 03 5f d6 	ret

00000001000033bc <__ZNSt3__1L21__cxx_atomic_exchangeIP5qnodeEET_PNS_22__cxx_atomic_base_implIS3_EES3_NS_12memory_orderE>:
1000033bc: ff 03 01 d1 	sub	sp, sp, #64
1000033c0: e0 1f 00 f9 	str	x0, [sp, #56]
1000033c4: e1 1b 00 f9 	str	x1, [sp, #48]
1000033c8: e2 2f 00 b9 	str	w2, [sp, #44]
1000033cc: e8 1f 40 f9 	ldr	x8, [sp, #56]
1000033d0: e8 07 00 f9 	str	x8, [sp, #8]
1000033d4: e8 2f 40 b9 	ldr	w8, [sp, #44]
1000033d8: e9 1b 40 f9 	ldr	x9, [sp, #48]
1000033dc: e9 13 00 f9 	str	x9, [sp, #32]
1000033e0: 08 05 00 71 	subs	w8, w8, #1
1000033e4: e8 0b 00 f9 	str	x8, [sp, #16]
1000033e8: 08 11 00 f1 	subs	x8, x8, #4
1000033ec: 08 01 00 54 	b.hi	0x10000340c <__ZNSt3__1L21__cxx_atomic_exchangeIP5qnodeEET_PNS_22__cxx_atomic_base_implIS3_EES3_NS_12memory_orderE+0x50>
1000033f0: eb 0b 40 f9 	ldr	x11, [sp, #16]
1000033f4: 0a 00 00 90 	adrp	x10, 0x100003000 <__ZNSt3__1L21__cxx_atomic_exchangeIP5qnodeEET_PNS_22__cxx_atomic_base_implIS3_EES3_NS_12memory_orderE+0x38>
1000033f8: 4a f1 11 91 	add	x10, x10, #1148
1000033fc: 08 00 00 10 	adr	x8, #0
100003400: 49 79 ab b8 	ldrsw	x9, [x10, x11, lsl #2]
100003404: 08 01 09 8b 	add	x8, x8, x9
100003408: 00 01 1f d6 	br	x8
10000340c: e9 07 40 f9 	ldr	x9, [sp, #8]
100003410: e8 13 40 f9 	ldr	x8, [sp, #32]
100003414: 28 81 28 f8 	<unknown>
100003418: e8 0f 00 f9 	str	x8, [sp, #24]
10000341c: 15 00 00 14 	b	0x100003470 <__ZNSt3__1L21__cxx_atomic_exchangeIP5qnodeEET_PNS_22__cxx_atomic_base_implIS3_EES3_NS_12memory_orderE+0xb4>
100003420: e9 07 40 f9 	ldr	x9, [sp, #8]
100003424: e8 13 40 f9 	ldr	x8, [sp, #32]
100003428: 28 81 a8 f8 	<unknown>
10000342c: e8 0f 00 f9 	str	x8, [sp, #24]
100003430: 10 00 00 14 	b	0x100003470 <__ZNSt3__1L21__cxx_atomic_exchangeIP5qnodeEET_PNS_22__cxx_atomic_base_implIS3_EES3_NS_12memory_orderE+0xb4>
100003434: e9 07 40 f9 	ldr	x9, [sp, #8]
100003438: e8 13 40 f9 	ldr	x8, [sp, #32]
10000343c: 28 81 68 f8 	<unknown>
100003440: e8 0f 00 f9 	str	x8, [sp, #24]
100003444: 0b 00 00 14 	b	0x100003470 <__ZNSt3__1L21__cxx_atomic_exchangeIP5qnodeEET_PNS_22__cxx_atomic_base_implIS3_EES3_NS_12memory_orderE+0xb4>
100003448: e9 07 40 f9 	ldr	x9, [sp, #8]
10000344c: e8 13 40 f9 	ldr	x8, [sp, #32]
100003450: 28 81 e8 f8 	<unknown>
100003454: e8 0f 00 f9 	str	x8, [sp, #24]
100003458: 06 00 00 14 	b	0x100003470 <__ZNSt3__1L21__cxx_atomic_exchangeIP5qnodeEET_PNS_22__cxx_atomic_base_implIS3_EES3_NS_12memory_orderE+0xb4>
10000345c: e9 07 40 f9 	ldr	x9, [sp, #8]
100003460: e8 13 40 f9 	ldr	x8, [sp, #32]
100003464: 28 81 e8 f8 	<unknown>
100003468: e8 0f 00 f9 	str	x8, [sp, #24]
10000346c: 01 00 00 14 	b	0x100003470 <__ZNSt3__1L21__cxx_atomic_exchangeIP5qnodeEET_PNS_22__cxx_atomic_base_implIS3_EES3_NS_12memory_orderE+0xb4>
100003470: e0 0f 40 f9 	ldr	x0, [sp, #24]
100003474: ff 03 01 91 	add	sp, sp, #64
100003478: c0 03 5f d6 	ret
10000347c: 24 00 00 00 	udf	#36
100003480: 24 00 00 00 	udf	#36
100003484: 38 00 00 00 	udf	#56
100003488: 4c 00 00 00 	udf	#76
10000348c: 60 00 00 00 	udf	#96

0000000100003490 <__ZNSt3__113__atomic_baseIP5qnodeLb0EE23compare_exchange_strongERS2_S2_NS_12memory_orderE>:
100003490: ff c3 00 d1 	sub	sp, sp, #48
100003494: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003498: fd 83 00 91 	add	x29, sp, #32
10000349c: a0 83 1f f8 	stur	x0, [x29, #-8]
1000034a0: e1 0b 00 f9 	str	x1, [sp, #16]
1000034a4: e2 07 00 f9 	str	x2, [sp, #8]
1000034a8: e3 07 00 b9 	str	w3, [sp, #4]
1000034ac: a0 83 5f f8 	ldur	x0, [x29, #-8]
1000034b0: e1 0b 40 f9 	ldr	x1, [sp, #16]
1000034b4: e2 07 40 f9 	ldr	x2, [sp, #8]
1000034b8: e3 07 40 b9 	ldr	w3, [sp, #4]
1000034bc: e4 07 40 b9 	ldr	w4, [sp, #4]
1000034c0: 05 00 00 94 	bl	0x1000034d4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_>
1000034c4: 00 00 00 12 	and	w0, w0, #0x1
1000034c8: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
1000034cc: ff c3 00 91 	add	sp, sp, #48
1000034d0: c0 03 5f d6 	ret

00000001000034d4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_>:
1000034d4: ff 83 05 d1 	sub	sp, sp, #352
1000034d8: fc 6f 14 a9 	stp	x28, x27, [sp, #320]
1000034dc: fd 7b 15 a9 	stp	x29, x30, [sp, #336]
1000034e0: fd 43 05 91 	add	x29, sp, #336
1000034e4: a0 83 1e f8 	stur	x0, [x29, #-24]
1000034e8: a1 03 1e f8 	stur	x1, [x29, #-32]
1000034ec: a2 83 1d f8 	stur	x2, [x29, #-40]
1000034f0: a3 43 1d b8 	stur	w3, [x29, #-44]
1000034f4: a4 03 1d b8 	stur	w4, [x29, #-48]
1000034f8: a8 83 5e f8 	ldur	x8, [x29, #-24]
1000034fc: a8 83 1a f8 	stur	x8, [x29, #-88]
100003500: a8 43 5d b8 	ldur	w8, [x29, #-44]
100003504: a8 43 1b b8 	stur	w8, [x29, #-76]
100003508: a8 03 5e f8 	ldur	x8, [x29, #-32]
10000350c: a8 83 1b f8 	stur	x8, [x29, #-72]
100003510: a8 83 5d f8 	ldur	x8, [x29, #-40]
100003514: a8 83 1c f8 	stur	x8, [x29, #-56]
100003518: a0 03 5d b8 	ldur	w0, [x29, #-48]
10000351c: 88 01 00 94 	bl	0x100003b3c <__ZNSt3__1L18__to_failure_orderENS_12memory_orderE>
100003520: a0 03 1c b8 	stur	w0, [x29, #-64]
100003524: 01 00 00 14 	b	0x100003528 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x54>
100003528: a8 43 5b b8 	ldur	w8, [x29, #-76]
10000352c: 08 05 00 71 	subs	w8, w8, #1
100003530: a8 03 1a f8 	stur	x8, [x29, #-96]
100003534: 08 11 00 f1 	subs	x8, x8, #4
100003538: 08 01 00 54 	b.hi	0x100003558 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x84>
10000353c: ab 03 5a f8 	ldur	x11, [x29, #-96]
100003540: 0a 00 00 90 	adrp	x10, 0x100003000 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x6c>
100003544: 4a a1 2c 91 	add	x10, x10, #2856
100003548: 08 00 00 10 	adr	x8, #0
10000354c: 49 79 ab b8 	ldrsw	x9, [x10, x11, lsl #2]
100003550: 08 01 09 8b 	add	x8, x8, x9
100003554: 00 01 1f d6 	br	x8
100003558: a8 03 5c b8 	ldur	w8, [x29, #-64]
10000355c: 08 05 00 71 	subs	w8, w8, #1
100003560: 08 05 00 71 	subs	w8, w8, #1
100003564: a9 07 00 54 	b.ls	0x100003658 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x184>
100003568: 01 00 00 14 	b	0x10000356c <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x98>
10000356c: a8 03 5c b8 	ldur	w8, [x29, #-64]
100003570: 08 15 00 71 	subs	w8, w8, #5
100003574: c0 08 00 54 	b.eq	0x10000368c <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x1b8>
100003578: 2b 00 00 14 	b	0x100003624 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x150>
10000357c: a8 03 5c b8 	ldur	w8, [x29, #-64]
100003580: 08 05 00 71 	subs	w8, w8, #1
100003584: 08 05 00 71 	subs	w8, w8, #1
100003588: 89 0e 00 54 	b.ls	0x100003758 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x284>
10000358c: 01 00 00 14 	b	0x100003590 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0xbc>
100003590: a8 03 5c b8 	ldur	w8, [x29, #-64]
100003594: 08 15 00 71 	subs	w8, w8, #5
100003598: a0 0f 00 54 	b.eq	0x10000378c <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x2b8>
10000359c: 62 00 00 14 	b	0x100003724 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x250>
1000035a0: a8 03 5c b8 	ldur	w8, [x29, #-64]
1000035a4: 08 05 00 71 	subs	w8, w8, #1
1000035a8: 08 05 00 71 	subs	w8, w8, #1
1000035ac: 69 15 00 54 	b.ls	0x100003858 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x384>
1000035b0: 01 00 00 14 	b	0x1000035b4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0xe0>
1000035b4: a8 03 5c b8 	ldur	w8, [x29, #-64]
1000035b8: 08 15 00 71 	subs	w8, w8, #5
1000035bc: 80 16 00 54 	b.eq	0x10000388c <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x3b8>
1000035c0: 99 00 00 14 	b	0x100003824 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x350>
1000035c4: a8 03 5c b8 	ldur	w8, [x29, #-64]
1000035c8: 08 05 00 71 	subs	w8, w8, #1
1000035cc: 08 05 00 71 	subs	w8, w8, #1
1000035d0: 49 1c 00 54 	b.ls	0x100003958 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x484>
1000035d4: 01 00 00 14 	b	0x1000035d8 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x104>
1000035d8: a8 03 5c b8 	ldur	w8, [x29, #-64]
1000035dc: 08 15 00 71 	subs	w8, w8, #5
1000035e0: 60 1d 00 54 	b.eq	0x10000398c <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x4b8>
1000035e4: d0 00 00 14 	b	0x100003924 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x450>
1000035e8: a8 03 5c b8 	ldur	w8, [x29, #-64]
1000035ec: 08 05 00 71 	subs	w8, w8, #1
1000035f0: 08 05 00 71 	subs	w8, w8, #1
1000035f4: 29 23 00 54 	b.ls	0x100003a58 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x584>
1000035f8: 01 00 00 14 	b	0x1000035fc <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x128>
1000035fc: a8 03 5c b8 	ldur	w8, [x29, #-64]
100003600: 08 15 00 71 	subs	w8, w8, #5
100003604: 40 24 00 54 	b.eq	0x100003a8c <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x5b8>
100003608: 07 01 00 14 	b	0x100003a24 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x550>
10000360c: a8 73 5c 38 	ldurb	w8, [x29, #-57]
100003610: 00 01 00 12 	and	w0, w8, #0x1
100003614: fd 7b 55 a9 	ldp	x29, x30, [sp, #336]
100003618: fc 6f 54 a9 	ldp	x28, x27, [sp, #320]
10000361c: ff 83 05 91 	add	sp, sp, #352
100003620: c0 03 5f d6 	ret
100003624: ab 83 5a f8 	ldur	x11, [x29, #-88]
100003628: a8 83 5b f8 	ldur	x8, [x29, #-72]
10000362c: 09 01 40 f9 	ldr	x9, [x8]
100003630: aa 83 5c f8 	ldur	x10, [x29, #-56]
100003634: e8 03 09 aa 	mov	x8, x9
100003638: 6a 7d a8 c8 	<unknown>
10000363c: a8 03 19 f8 	stur	x8, [x29, #-112]
100003640: 0a 01 09 eb 	subs	x10, x8, x9
100003644: ea 17 9f 1a 	cset	w10, eq
100003648: aa c3 19 b8 	stur	w10, [x29, #-100]
10000364c: 08 01 09 eb 	subs	x8, x8, x9
100003650: 20 04 00 54 	b.eq	0x1000036d4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x200>
100003654: 1c 00 00 14 	b	0x1000036c4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x1f0>
100003658: ab 83 5a f8 	ldur	x11, [x29, #-88]
10000365c: a8 83 5b f8 	ldur	x8, [x29, #-72]
100003660: 09 01 40 f9 	ldr	x9, [x8]
100003664: aa 83 5c f8 	ldur	x10, [x29, #-56]
100003668: e8 03 09 aa 	mov	x8, x9
10000366c: 6a 7d e8 c8 	<unknown>
100003670: a8 03 18 f8 	stur	x8, [x29, #-128]
100003674: 0a 01 09 eb 	subs	x10, x8, x9
100003678: ea 17 9f 1a 	cset	w10, eq
10000367c: aa c3 18 b8 	stur	w10, [x29, #-116]
100003680: 08 01 09 eb 	subs	x8, x8, x9
100003684: 80 03 00 54 	b.eq	0x1000036f4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x220>
100003688: 17 00 00 14 	b	0x1000036e4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x210>
10000368c: ab 83 5a f8 	ldur	x11, [x29, #-88]
100003690: a8 83 5b f8 	ldur	x8, [x29, #-72]
100003694: 09 01 40 f9 	ldr	x9, [x8]
100003698: aa 83 5c f8 	ldur	x10, [x29, #-56]
10000369c: e8 03 09 aa 	mov	x8, x9
1000036a0: 6a fd e8 c8 	<unknown>
1000036a4: a8 03 17 f8 	stur	x8, [x29, #-144]
1000036a8: 0a 01 09 eb 	subs	x10, x8, x9
1000036ac: ea 17 9f 1a 	cset	w10, eq
1000036b0: aa c3 17 b8 	stur	w10, [x29, #-132]
1000036b4: 08 01 09 eb 	subs	x8, x8, x9
1000036b8: e0 02 00 54 	b.eq	0x100003714 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x240>
1000036bc: 12 00 00 14 	b	0x100003704 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x230>
1000036c0: d3 ff ff 17 	b	0x10000360c <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x138>
1000036c4: a8 03 59 f8 	ldur	x8, [x29, #-112]
1000036c8: a9 83 5b f8 	ldur	x9, [x29, #-72]
1000036cc: 28 01 00 f9 	str	x8, [x9]
1000036d0: 01 00 00 14 	b	0x1000036d4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x200>
1000036d4: a8 c3 59 b8 	ldur	w8, [x29, #-100]
1000036d8: 08 01 00 12 	and	w8, w8, #0x1
1000036dc: a8 73 1c 38 	sturb	w8, [x29, #-57]
1000036e0: f8 ff ff 17 	b	0x1000036c0 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x1ec>
1000036e4: a8 03 58 f8 	ldur	x8, [x29, #-128]
1000036e8: a9 83 5b f8 	ldur	x9, [x29, #-72]
1000036ec: 28 01 00 f9 	str	x8, [x9]
1000036f0: 01 00 00 14 	b	0x1000036f4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x220>
1000036f4: a8 c3 58 b8 	ldur	w8, [x29, #-116]
1000036f8: 08 01 00 12 	and	w8, w8, #0x1
1000036fc: a8 73 1c 38 	sturb	w8, [x29, #-57]
100003700: f0 ff ff 17 	b	0x1000036c0 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x1ec>
100003704: a8 03 57 f8 	ldur	x8, [x29, #-144]
100003708: a9 83 5b f8 	ldur	x9, [x29, #-72]
10000370c: 28 01 00 f9 	str	x8, [x9]
100003710: 01 00 00 14 	b	0x100003714 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x240>
100003714: a8 c3 57 b8 	ldur	w8, [x29, #-132]
100003718: 08 01 00 12 	and	w8, w8, #0x1
10000371c: a8 73 1c 38 	sturb	w8, [x29, #-57]
100003720: e8 ff ff 17 	b	0x1000036c0 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x1ec>
100003724: ab 83 5a f8 	ldur	x11, [x29, #-88]
100003728: a8 83 5b f8 	ldur	x8, [x29, #-72]
10000372c: 09 01 40 f9 	ldr	x9, [x8]
100003730: aa 83 5c f8 	ldur	x10, [x29, #-56]
100003734: e8 03 09 aa 	mov	x8, x9
100003738: 6a 7d e8 c8 	<unknown>
10000373c: a8 03 16 f8 	stur	x8, [x29, #-160]
100003740: 0a 01 09 eb 	subs	x10, x8, x9
100003744: ea 17 9f 1a 	cset	w10, eq
100003748: aa c3 16 b8 	stur	w10, [x29, #-148]
10000374c: 08 01 09 eb 	subs	x8, x8, x9
100003750: 20 04 00 54 	b.eq	0x1000037d4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x300>
100003754: 1c 00 00 14 	b	0x1000037c4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x2f0>
100003758: ab 83 5a f8 	ldur	x11, [x29, #-88]
10000375c: a8 83 5b f8 	ldur	x8, [x29, #-72]
100003760: 09 01 40 f9 	ldr	x9, [x8]
100003764: aa 83 5c f8 	ldur	x10, [x29, #-56]
100003768: e8 03 09 aa 	mov	x8, x9
10000376c: 6a 7d e8 c8 	<unknown>
100003770: e8 53 00 f9 	str	x8, [sp, #160]
100003774: 0a 01 09 eb 	subs	x10, x8, x9
100003778: ea 17 9f 1a 	cset	w10, eq
10000377c: aa c3 15 b8 	stur	w10, [x29, #-164]
100003780: 08 01 09 eb 	subs	x8, x8, x9
100003784: 80 03 00 54 	b.eq	0x1000037f4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x320>
100003788: 17 00 00 14 	b	0x1000037e4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x310>
10000378c: ab 83 5a f8 	ldur	x11, [x29, #-88]
100003790: a8 83 5b f8 	ldur	x8, [x29, #-72]
100003794: 09 01 40 f9 	ldr	x9, [x8]
100003798: aa 83 5c f8 	ldur	x10, [x29, #-56]
10000379c: e8 03 09 aa 	mov	x8, x9
1000037a0: 6a fd e8 c8 	<unknown>
1000037a4: e8 4b 00 f9 	str	x8, [sp, #144]
1000037a8: 0a 01 09 eb 	subs	x10, x8, x9
1000037ac: ea 17 9f 1a 	cset	w10, eq
1000037b0: ea 9f 00 b9 	str	w10, [sp, #156]
1000037b4: 08 01 09 eb 	subs	x8, x8, x9
1000037b8: e0 02 00 54 	b.eq	0x100003814 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x340>
1000037bc: 12 00 00 14 	b	0x100003804 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x330>
1000037c0: 93 ff ff 17 	b	0x10000360c <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x138>
1000037c4: a8 03 56 f8 	ldur	x8, [x29, #-160]
1000037c8: a9 83 5b f8 	ldur	x9, [x29, #-72]
1000037cc: 28 01 00 f9 	str	x8, [x9]
1000037d0: 01 00 00 14 	b	0x1000037d4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x300>
1000037d4: a8 c3 56 b8 	ldur	w8, [x29, #-148]
1000037d8: 08 01 00 12 	and	w8, w8, #0x1
1000037dc: a8 73 1c 38 	sturb	w8, [x29, #-57]
1000037e0: f8 ff ff 17 	b	0x1000037c0 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x2ec>
1000037e4: e8 53 40 f9 	ldr	x8, [sp, #160]
1000037e8: a9 83 5b f8 	ldur	x9, [x29, #-72]
1000037ec: 28 01 00 f9 	str	x8, [x9]
1000037f0: 01 00 00 14 	b	0x1000037f4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x320>
1000037f4: a8 c3 55 b8 	ldur	w8, [x29, #-164]
1000037f8: 08 01 00 12 	and	w8, w8, #0x1
1000037fc: a8 73 1c 38 	sturb	w8, [x29, #-57]
100003800: f0 ff ff 17 	b	0x1000037c0 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x2ec>
100003804: e8 4b 40 f9 	ldr	x8, [sp, #144]
100003808: a9 83 5b f8 	ldur	x9, [x29, #-72]
10000380c: 28 01 00 f9 	str	x8, [x9]
100003810: 01 00 00 14 	b	0x100003814 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x340>
100003814: e8 9f 40 b9 	ldr	w8, [sp, #156]
100003818: 08 01 00 12 	and	w8, w8, #0x1
10000381c: a8 73 1c 38 	sturb	w8, [x29, #-57]
100003820: e8 ff ff 17 	b	0x1000037c0 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x2ec>
100003824: ab 83 5a f8 	ldur	x11, [x29, #-88]
100003828: a8 83 5b f8 	ldur	x8, [x29, #-72]
10000382c: 09 01 40 f9 	ldr	x9, [x8]
100003830: aa 83 5c f8 	ldur	x10, [x29, #-56]
100003834: e8 03 09 aa 	mov	x8, x9
100003838: 6a fd a8 c8 	<unknown>
10000383c: e8 43 00 f9 	str	x8, [sp, #128]
100003840: 0a 01 09 eb 	subs	x10, x8, x9
100003844: ea 17 9f 1a 	cset	w10, eq
100003848: ea 8f 00 b9 	str	w10, [sp, #140]
10000384c: 08 01 09 eb 	subs	x8, x8, x9
100003850: 20 04 00 54 	b.eq	0x1000038d4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x400>
100003854: 1c 00 00 14 	b	0x1000038c4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x3f0>
100003858: ab 83 5a f8 	ldur	x11, [x29, #-88]
10000385c: a8 83 5b f8 	ldur	x8, [x29, #-72]
100003860: 09 01 40 f9 	ldr	x9, [x8]
100003864: aa 83 5c f8 	ldur	x10, [x29, #-56]
100003868: e8 03 09 aa 	mov	x8, x9
10000386c: 6a fd e8 c8 	<unknown>
100003870: e8 3b 00 f9 	str	x8, [sp, #112]
100003874: 0a 01 09 eb 	subs	x10, x8, x9
100003878: ea 17 9f 1a 	cset	w10, eq
10000387c: ea 7f 00 b9 	str	w10, [sp, #124]
100003880: 08 01 09 eb 	subs	x8, x8, x9
100003884: 80 03 00 54 	b.eq	0x1000038f4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x420>
100003888: 17 00 00 14 	b	0x1000038e4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x410>
10000388c: ab 83 5a f8 	ldur	x11, [x29, #-88]
100003890: a8 83 5b f8 	ldur	x8, [x29, #-72]
100003894: 09 01 40 f9 	ldr	x9, [x8]
100003898: aa 83 5c f8 	ldur	x10, [x29, #-56]
10000389c: e8 03 09 aa 	mov	x8, x9
1000038a0: 6a fd e8 c8 	<unknown>
1000038a4: e8 33 00 f9 	str	x8, [sp, #96]
1000038a8: 0a 01 09 eb 	subs	x10, x8, x9
1000038ac: ea 17 9f 1a 	cset	w10, eq
1000038b0: ea 6f 00 b9 	str	w10, [sp, #108]
1000038b4: 08 01 09 eb 	subs	x8, x8, x9
1000038b8: e0 02 00 54 	b.eq	0x100003914 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x440>
1000038bc: 12 00 00 14 	b	0x100003904 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x430>
1000038c0: 53 ff ff 17 	b	0x10000360c <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x138>
1000038c4: e8 43 40 f9 	ldr	x8, [sp, #128]
1000038c8: a9 83 5b f8 	ldur	x9, [x29, #-72]
1000038cc: 28 01 00 f9 	str	x8, [x9]
1000038d0: 01 00 00 14 	b	0x1000038d4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x400>
1000038d4: e8 8f 40 b9 	ldr	w8, [sp, #140]
1000038d8: 08 01 00 12 	and	w8, w8, #0x1
1000038dc: a8 73 1c 38 	sturb	w8, [x29, #-57]
1000038e0: f8 ff ff 17 	b	0x1000038c0 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x3ec>
1000038e4: e8 3b 40 f9 	ldr	x8, [sp, #112]
1000038e8: a9 83 5b f8 	ldur	x9, [x29, #-72]
1000038ec: 28 01 00 f9 	str	x8, [x9]
1000038f0: 01 00 00 14 	b	0x1000038f4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x420>
1000038f4: e8 7f 40 b9 	ldr	w8, [sp, #124]
1000038f8: 08 01 00 12 	and	w8, w8, #0x1
1000038fc: a8 73 1c 38 	sturb	w8, [x29, #-57]
100003900: f0 ff ff 17 	b	0x1000038c0 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x3ec>
100003904: e8 33 40 f9 	ldr	x8, [sp, #96]
100003908: a9 83 5b f8 	ldur	x9, [x29, #-72]
10000390c: 28 01 00 f9 	str	x8, [x9]
100003910: 01 00 00 14 	b	0x100003914 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x440>
100003914: e8 6f 40 b9 	ldr	w8, [sp, #108]
100003918: 08 01 00 12 	and	w8, w8, #0x1
10000391c: a8 73 1c 38 	sturb	w8, [x29, #-57]
100003920: e8 ff ff 17 	b	0x1000038c0 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x3ec>
100003924: ab 83 5a f8 	ldur	x11, [x29, #-88]
100003928: a8 83 5b f8 	ldur	x8, [x29, #-72]
10000392c: 09 01 40 f9 	ldr	x9, [x8]
100003930: aa 83 5c f8 	ldur	x10, [x29, #-56]
100003934: e8 03 09 aa 	mov	x8, x9
100003938: 6a fd e8 c8 	<unknown>
10000393c: e8 2b 00 f9 	str	x8, [sp, #80]
100003940: 0a 01 09 eb 	subs	x10, x8, x9
100003944: ea 17 9f 1a 	cset	w10, eq
100003948: ea 5f 00 b9 	str	w10, [sp, #92]
10000394c: 08 01 09 eb 	subs	x8, x8, x9
100003950: 20 04 00 54 	b.eq	0x1000039d4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x500>
100003954: 1c 00 00 14 	b	0x1000039c4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x4f0>
100003958: ab 83 5a f8 	ldur	x11, [x29, #-88]
10000395c: a8 83 5b f8 	ldur	x8, [x29, #-72]
100003960: 09 01 40 f9 	ldr	x9, [x8]
100003964: aa 83 5c f8 	ldur	x10, [x29, #-56]
100003968: e8 03 09 aa 	mov	x8, x9
10000396c: 6a fd e8 c8 	<unknown>
100003970: e8 23 00 f9 	str	x8, [sp, #64]
100003974: 0a 01 09 eb 	subs	x10, x8, x9
100003978: ea 17 9f 1a 	cset	w10, eq
10000397c: ea 4f 00 b9 	str	w10, [sp, #76]
100003980: 08 01 09 eb 	subs	x8, x8, x9
100003984: 80 03 00 54 	b.eq	0x1000039f4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x520>
100003988: 17 00 00 14 	b	0x1000039e4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x510>
10000398c: ab 83 5a f8 	ldur	x11, [x29, #-88]
100003990: a8 83 5b f8 	ldur	x8, [x29, #-72]
100003994: 09 01 40 f9 	ldr	x9, [x8]
100003998: aa 83 5c f8 	ldur	x10, [x29, #-56]
10000399c: e8 03 09 aa 	mov	x8, x9
1000039a0: 6a fd e8 c8 	<unknown>
1000039a4: e8 1b 00 f9 	str	x8, [sp, #48]
1000039a8: 0a 01 09 eb 	subs	x10, x8, x9
1000039ac: ea 17 9f 1a 	cset	w10, eq
1000039b0: ea 3f 00 b9 	str	w10, [sp, #60]
1000039b4: 08 01 09 eb 	subs	x8, x8, x9
1000039b8: e0 02 00 54 	b.eq	0x100003a14 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x540>
1000039bc: 12 00 00 14 	b	0x100003a04 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x530>
1000039c0: 13 ff ff 17 	b	0x10000360c <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x138>
1000039c4: e8 2b 40 f9 	ldr	x8, [sp, #80]
1000039c8: a9 83 5b f8 	ldur	x9, [x29, #-72]
1000039cc: 28 01 00 f9 	str	x8, [x9]
1000039d0: 01 00 00 14 	b	0x1000039d4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x500>
1000039d4: e8 5f 40 b9 	ldr	w8, [sp, #92]
1000039d8: 08 01 00 12 	and	w8, w8, #0x1
1000039dc: a8 73 1c 38 	sturb	w8, [x29, #-57]
1000039e0: f8 ff ff 17 	b	0x1000039c0 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x4ec>
1000039e4: e8 23 40 f9 	ldr	x8, [sp, #64]
1000039e8: a9 83 5b f8 	ldur	x9, [x29, #-72]
1000039ec: 28 01 00 f9 	str	x8, [x9]
1000039f0: 01 00 00 14 	b	0x1000039f4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x520>
1000039f4: e8 4f 40 b9 	ldr	w8, [sp, #76]
1000039f8: 08 01 00 12 	and	w8, w8, #0x1
1000039fc: a8 73 1c 38 	sturb	w8, [x29, #-57]
100003a00: f0 ff ff 17 	b	0x1000039c0 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x4ec>
100003a04: e8 1b 40 f9 	ldr	x8, [sp, #48]
100003a08: a9 83 5b f8 	ldur	x9, [x29, #-72]
100003a0c: 28 01 00 f9 	str	x8, [x9]
100003a10: 01 00 00 14 	b	0x100003a14 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x540>
100003a14: e8 3f 40 b9 	ldr	w8, [sp, #60]
100003a18: 08 01 00 12 	and	w8, w8, #0x1
100003a1c: a8 73 1c 38 	sturb	w8, [x29, #-57]
100003a20: e8 ff ff 17 	b	0x1000039c0 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x4ec>
100003a24: ab 83 5a f8 	ldur	x11, [x29, #-88]
100003a28: a8 83 5b f8 	ldur	x8, [x29, #-72]
100003a2c: 09 01 40 f9 	ldr	x9, [x8]
100003a30: aa 83 5c f8 	ldur	x10, [x29, #-56]
100003a34: e8 03 09 aa 	mov	x8, x9
100003a38: 6a fd e8 c8 	<unknown>
100003a3c: e8 13 00 f9 	str	x8, [sp, #32]
100003a40: 0a 01 09 eb 	subs	x10, x8, x9
100003a44: ea 17 9f 1a 	cset	w10, eq
100003a48: ea 2f 00 b9 	str	w10, [sp, #44]
100003a4c: 08 01 09 eb 	subs	x8, x8, x9
100003a50: 20 04 00 54 	b.eq	0x100003ad4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x600>
100003a54: 1c 00 00 14 	b	0x100003ac4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x5f0>
100003a58: ab 83 5a f8 	ldur	x11, [x29, #-88]
100003a5c: a8 83 5b f8 	ldur	x8, [x29, #-72]
100003a60: 09 01 40 f9 	ldr	x9, [x8]
100003a64: aa 83 5c f8 	ldur	x10, [x29, #-56]
100003a68: e8 03 09 aa 	mov	x8, x9
100003a6c: 6a fd e8 c8 	<unknown>
100003a70: e8 0b 00 f9 	str	x8, [sp, #16]
100003a74: 0a 01 09 eb 	subs	x10, x8, x9
100003a78: ea 17 9f 1a 	cset	w10, eq
100003a7c: ea 1f 00 b9 	str	w10, [sp, #28]
100003a80: 08 01 09 eb 	subs	x8, x8, x9
100003a84: 80 03 00 54 	b.eq	0x100003af4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x620>
100003a88: 17 00 00 14 	b	0x100003ae4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x610>
100003a8c: ab 83 5a f8 	ldur	x11, [x29, #-88]
100003a90: a8 83 5b f8 	ldur	x8, [x29, #-72]
100003a94: 09 01 40 f9 	ldr	x9, [x8]
100003a98: aa 83 5c f8 	ldur	x10, [x29, #-56]
100003a9c: e8 03 09 aa 	mov	x8, x9
100003aa0: 6a fd e8 c8 	<unknown>
100003aa4: e8 03 00 f9 	str	x8, [sp]
100003aa8: 0a 01 09 eb 	subs	x10, x8, x9
100003aac: ea 17 9f 1a 	cset	w10, eq
100003ab0: ea 0f 00 b9 	str	w10, [sp, #12]
100003ab4: 08 01 09 eb 	subs	x8, x8, x9
100003ab8: e0 02 00 54 	b.eq	0x100003b14 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x640>
100003abc: 12 00 00 14 	b	0x100003b04 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x630>
100003ac0: d3 fe ff 17 	b	0x10000360c <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x138>
100003ac4: e8 13 40 f9 	ldr	x8, [sp, #32]
100003ac8: a9 83 5b f8 	ldur	x9, [x29, #-72]
100003acc: 28 01 00 f9 	str	x8, [x9]
100003ad0: 01 00 00 14 	b	0x100003ad4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x600>
100003ad4: e8 2f 40 b9 	ldr	w8, [sp, #44]
100003ad8: 08 01 00 12 	and	w8, w8, #0x1
100003adc: a8 73 1c 38 	sturb	w8, [x29, #-57]
100003ae0: f8 ff ff 17 	b	0x100003ac0 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x5ec>
100003ae4: e8 0b 40 f9 	ldr	x8, [sp, #16]
100003ae8: a9 83 5b f8 	ldur	x9, [x29, #-72]
100003aec: 28 01 00 f9 	str	x8, [x9]
100003af0: 01 00 00 14 	b	0x100003af4 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x620>
100003af4: e8 1f 40 b9 	ldr	w8, [sp, #28]
100003af8: 08 01 00 12 	and	w8, w8, #0x1
100003afc: a8 73 1c 38 	sturb	w8, [x29, #-57]
100003b00: f0 ff ff 17 	b	0x100003ac0 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x5ec>
100003b04: e8 03 40 f9 	ldr	x8, [sp]
100003b08: a9 83 5b f8 	ldur	x9, [x29, #-72]
100003b0c: 28 01 00 f9 	str	x8, [x9]
100003b10: 01 00 00 14 	b	0x100003b14 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x640>
100003b14: e8 0f 40 b9 	ldr	w8, [sp, #12]
100003b18: 08 01 00 12 	and	w8, w8, #0x1
100003b1c: a8 73 1c 38 	sturb	w8, [x29, #-57]
100003b20: e8 ff ff 17 	b	0x100003ac0 <__ZNSt3__1L36__cxx_atomic_compare_exchange_strongIP5qnodeEEbPNS_22__cxx_atomic_base_implIT_EEPS4_S4_NS_12memory_orderES8_+0x5ec>
100003b24: 57 fb ff 97 	bl	0x100002880 <___clang_call_terminate>
100003b28: 34 00 00 00 	udf	#52
100003b2c: 34 00 00 00 	udf	#52
100003b30: 58 00 00 00 	udf	#88
100003b34: 7c 00 00 00 	udf	#124
100003b38: a0 00 00 00 	udf	#160

0000000100003b3c <__ZNSt3__1L18__to_failure_orderENS_12memory_orderE>:
100003b3c: ff 43 00 d1 	sub	sp, sp, #16
100003b40: e0 0f 00 b9 	str	w0, [sp, #12]
100003b44: e8 0f 40 b9 	ldr	w8, [sp, #12]
100003b48: 08 0d 00 71 	subs	w8, w8, #3
100003b4c: a1 00 00 54 	b.ne	0x100003b60 <__ZNSt3__1L18__to_failure_orderENS_12memory_orderE+0x24>
100003b50: 01 00 00 14 	b	0x100003b54 <__ZNSt3__1L18__to_failure_orderENS_12memory_orderE+0x18>
100003b54: 08 00 80 52 	mov	w8, #0
100003b58: e8 0b 00 b9 	str	w8, [sp, #8]
100003b5c: 0e 00 00 14 	b	0x100003b94 <__ZNSt3__1L18__to_failure_orderENS_12memory_orderE+0x58>
100003b60: e8 0f 40 b9 	ldr	w8, [sp, #12]
100003b64: 08 11 00 71 	subs	w8, w8, #4
100003b68: a1 00 00 54 	b.ne	0x100003b7c <__ZNSt3__1L18__to_failure_orderENS_12memory_orderE+0x40>
100003b6c: 01 00 00 14 	b	0x100003b70 <__ZNSt3__1L18__to_failure_orderENS_12memory_orderE+0x34>
100003b70: 48 00 80 52 	mov	w8, #2
100003b74: e8 07 00 b9 	str	w8, [sp, #4]
100003b78: 04 00 00 14 	b	0x100003b88 <__ZNSt3__1L18__to_failure_orderENS_12memory_orderE+0x4c>
100003b7c: e8 0f 40 b9 	ldr	w8, [sp, #12]
100003b80: e8 07 00 b9 	str	w8, [sp, #4]
100003b84: 01 00 00 14 	b	0x100003b88 <__ZNSt3__1L18__to_failure_orderENS_12memory_orderE+0x4c>
100003b88: e8 07 40 b9 	ldr	w8, [sp, #4]
100003b8c: e8 0b 00 b9 	str	w8, [sp, #8]
100003b90: 01 00 00 14 	b	0x100003b94 <__ZNSt3__1L18__to_failure_orderENS_12memory_orderE+0x58>
100003b94: e0 0b 40 b9 	ldr	w0, [sp, #8]
100003b98: ff 43 00 91 	add	sp, sp, #16
100003b9c: c0 03 5f d6 	ret

0000000100003ba0 <__ZNSt3__113__atomic_baseIP5qnodeLb0EE5storeES2_NS_12memory_orderE>:
100003ba0: ff c3 00 d1 	sub	sp, sp, #48
100003ba4: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003ba8: fd 83 00 91 	add	x29, sp, #32
100003bac: a0 83 1f f8 	stur	x0, [x29, #-8]
100003bb0: e1 0b 00 f9 	str	x1, [sp, #16]
100003bb4: e2 0f 00 b9 	str	w2, [sp, #12]
100003bb8: a0 83 5f f8 	ldur	x0, [x29, #-8]
100003bbc: e1 0b 40 f9 	ldr	x1, [sp, #16]
100003bc0: e2 0f 40 b9 	ldr	w2, [sp, #12]
100003bc4: 04 00 00 94 	bl	0x100003bd4 <__ZNSt3__1L18__cxx_atomic_storeIP5qnodeEEvPNS_22__cxx_atomic_base_implIT_EES4_NS_12memory_orderE>
100003bc8: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003bcc: ff c3 00 91 	add	sp, sp, #48
100003bd0: c0 03 5f d6 	ret

0000000100003bd4 <__ZNSt3__1L18__cxx_atomic_storeIP5qnodeEEvPNS_22__cxx_atomic_base_implIT_EES4_NS_12memory_orderE>:
100003bd4: ff c3 00 d1 	sub	sp, sp, #48
100003bd8: e0 17 00 f9 	str	x0, [sp, #40]
100003bdc: e1 13 00 f9 	str	x1, [sp, #32]
100003be0: e2 1f 00 b9 	str	w2, [sp, #28]
100003be4: e8 17 40 f9 	ldr	x8, [sp, #40]
100003be8: e8 03 00 f9 	str	x8, [sp]
100003bec: e8 1f 40 b9 	ldr	w8, [sp, #28]
100003bf0: e8 0f 00 b9 	str	w8, [sp, #12]
100003bf4: e9 13 40 f9 	ldr	x9, [sp, #32]
100003bf8: e9 0b 00 f9 	str	x9, [sp, #16]
100003bfc: 08 0d 00 71 	subs	w8, w8, #3
100003c00: 40 01 00 54 	b.eq	0x100003c28 <__ZNSt3__1L18__cxx_atomic_storeIP5qnodeEEvPNS_22__cxx_atomic_base_implIT_EES4_NS_12memory_orderE+0x54>
100003c04: 01 00 00 14 	b	0x100003c08 <__ZNSt3__1L18__cxx_atomic_storeIP5qnodeEEvPNS_22__cxx_atomic_base_implIT_EES4_NS_12memory_orderE+0x34>
100003c08: e8 0f 40 b9 	ldr	w8, [sp, #12]
100003c0c: 08 15 00 71 	subs	w8, w8, #5
100003c10: 40 01 00 54 	b.eq	0x100003c38 <__ZNSt3__1L18__cxx_atomic_storeIP5qnodeEEvPNS_22__cxx_atomic_base_implIT_EES4_NS_12memory_orderE+0x64>
100003c14: 01 00 00 14 	b	0x100003c18 <__ZNSt3__1L18__cxx_atomic_storeIP5qnodeEEvPNS_22__cxx_atomic_base_implIT_EES4_NS_12memory_orderE+0x44>
100003c18: e9 03 40 f9 	ldr	x9, [sp]
100003c1c: e8 0b 40 f9 	ldr	x8, [sp, #16]
100003c20: 28 01 00 f9 	str	x8, [x9]
100003c24: 09 00 00 14 	b	0x100003c48 <__ZNSt3__1L18__cxx_atomic_storeIP5qnodeEEvPNS_22__cxx_atomic_base_implIT_EES4_NS_12memory_orderE+0x74>
100003c28: e9 03 40 f9 	ldr	x9, [sp]
100003c2c: e8 0b 40 f9 	ldr	x8, [sp, #16]
100003c30: 28 fd 9f c8 	stlr	x8, [x9]
100003c34: 05 00 00 14 	b	0x100003c48 <__ZNSt3__1L18__cxx_atomic_storeIP5qnodeEEvPNS_22__cxx_atomic_base_implIT_EES4_NS_12memory_orderE+0x74>
100003c38: e9 03 40 f9 	ldr	x9, [sp]
100003c3c: e8 0b 40 f9 	ldr	x8, [sp, #16]
100003c40: 28 fd 9f c8 	stlr	x8, [x9]
100003c44: 01 00 00 14 	b	0x100003c48 <__ZNSt3__1L18__cxx_atomic_storeIP5qnodeEEvPNS_22__cxx_atomic_base_implIT_EES4_NS_12memory_orderE+0x74>
100003c48: ff c3 00 91 	add	sp, sp, #48
100003c4c: c0 03 5f d6 	ret

0000000100003c50 <___cxx_global_var_init>:
100003c50: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
100003c54: fd 03 00 91 	mov	x29, sp
100003c58: 08 01 80 52 	mov	w8, #8
100003c5c: e0 03 08 aa 	mov	x0, x8
100003c60: 40 00 00 94 	bl	0x100003d60 <_strlen+0x100003d60>
100003c64: 28 00 00 b0 	adrp	x8, 0x100008000 <__GLOBAL__sub_I_mcs_lock_working.cpp+0x4>
100003c68: 00 25 00 f9 	str	x0, [x8, #72]
100003c6c: fd 7b c1 a8 	ldp	x29, x30, [sp], #16
100003c70: c0 03 5f d6 	ret

0000000100003c74 <__GLOBAL__sub_I_mcs_lock_working.cpp>:
100003c74: fd 7b bf a9 	stp	x29, x30, [sp, #-16]!
100003c78: fd 03 00 91 	mov	x29, sp
100003c7c: f5 ff ff 97 	bl	0x100003c50 <___cxx_global_var_init>
100003c80: fd 7b c1 a8 	ldp	x29, x30, [sp], #16
100003c84: c0 03 5f d6 	ret

Disassembly of section __TEXT,__stubs:

0000000100003c88 <__stubs>:
100003c88: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x4>
100003c8c: 10 02 40 f9 	ldr	x16, [x16]
100003c90: 00 02 1f d6 	br	x16
100003c94: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x10>
100003c98: 10 06 40 f9 	ldr	x16, [x16, #8]
100003c9c: 00 02 1f d6 	br	x16
100003ca0: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x1c>
100003ca4: 10 0a 40 f9 	ldr	x16, [x16, #16]
100003ca8: 00 02 1f d6 	br	x16
100003cac: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x28>
100003cb0: 10 0e 40 f9 	ldr	x16, [x16, #24]
100003cb4: 00 02 1f d6 	br	x16
100003cb8: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x34>
100003cbc: 10 12 40 f9 	ldr	x16, [x16, #32]
100003cc0: 00 02 1f d6 	br	x16
100003cc4: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x40>
100003cc8: 10 16 40 f9 	ldr	x16, [x16, #40]
100003ccc: 00 02 1f d6 	br	x16
100003cd0: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x4c>
100003cd4: 10 1a 40 f9 	ldr	x16, [x16, #48]
100003cd8: 00 02 1f d6 	br	x16
100003cdc: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x58>
100003ce0: 10 1e 40 f9 	ldr	x16, [x16, #56]
100003ce4: 00 02 1f d6 	br	x16
100003ce8: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x64>
100003cec: 10 22 40 f9 	ldr	x16, [x16, #64]
100003cf0: 00 02 1f d6 	br	x16
100003cf4: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x70>
100003cf8: 10 26 40 f9 	ldr	x16, [x16, #72]
100003cfc: 00 02 1f d6 	br	x16
100003d00: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x7c>
100003d04: 10 2a 40 f9 	ldr	x16, [x16, #80]
100003d08: 00 02 1f d6 	br	x16
100003d0c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x88>
100003d10: 10 2e 40 f9 	ldr	x16, [x16, #88]
100003d14: 00 02 1f d6 	br	x16
100003d18: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x94>
100003d1c: 10 32 40 f9 	ldr	x16, [x16, #96]
100003d20: 00 02 1f d6 	br	x16
100003d24: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xa0>
100003d28: 10 3e 40 f9 	ldr	x16, [x16, #120]
100003d2c: 00 02 1f d6 	br	x16
100003d30: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xac>
100003d34: 10 42 40 f9 	ldr	x16, [x16, #128]
100003d38: 00 02 1f d6 	br	x16
100003d3c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xb8>
100003d40: 10 46 40 f9 	ldr	x16, [x16, #136]
100003d44: 00 02 1f d6 	br	x16
100003d48: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xc4>
100003d4c: 10 4a 40 f9 	ldr	x16, [x16, #144]
100003d50: 00 02 1f d6 	br	x16
100003d54: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xd0>
100003d58: 10 4e 40 f9 	ldr	x16, [x16, #152]
100003d5c: 00 02 1f d6 	br	x16
100003d60: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xdc>
100003d64: 10 52 40 f9 	ldr	x16, [x16, #160]
100003d68: 00 02 1f d6 	br	x16
100003d6c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xe8>
100003d70: 10 5a 40 f9 	ldr	x16, [x16, #176]
100003d74: 00 02 1f d6 	br	x16
100003d78: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xf4>
100003d7c: 10 5e 40 f9 	ldr	x16, [x16, #184]
100003d80: 00 02 1f d6 	br	x16
100003d84: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x100>
100003d88: 10 66 40 f9 	ldr	x16, [x16, #200]
100003d8c: 00 02 1f d6 	br	x16
100003d90: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x10c>
100003d94: 10 6e 40 f9 	ldr	x16, [x16, #216]
100003d98: 00 02 1f d6 	br	x16
100003d9c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x118>
100003da0: 10 72 40 f9 	ldr	x16, [x16, #224]
100003da4: 00 02 1f d6 	br	x16
100003da8: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x124>
100003dac: 10 76 40 f9 	ldr	x16, [x16, #232]
100003db0: 00 02 1f d6 	br	x16
100003db4: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x130>
100003db8: 10 7a 40 f9 	ldr	x16, [x16, #240]
100003dbc: 00 02 1f d6 	br	x16
100003dc0: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x13c>
100003dc4: 10 7e 40 f9 	ldr	x16, [x16, #248]
100003dc8: 00 02 1f d6 	br	x16
100003dcc: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x148>
100003dd0: 10 82 40 f9 	ldr	x16, [x16, #256]
100003dd4: 00 02 1f d6 	br	x16
100003dd8: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x154>
100003ddc: 10 86 40 f9 	ldr	x16, [x16, #264]
100003de0: 00 02 1f d6 	br	x16
