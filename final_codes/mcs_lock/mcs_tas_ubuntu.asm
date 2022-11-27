
mcs_tas_ubuntu.o:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e1 2f 00 00 	mov    0x2fe1(%rip),%rax        # 403ff0 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	callq  *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 2f 00 00    	pushq  0x2fe2(%rip)        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 2f 00 00    	jmpq   *0x2fe4(%rip)        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <pthread_join@plt>:
  401030:	ff 25 e2 2f 00 00    	jmpq   *0x2fe2(%rip)        # 404018 <pthread_join@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <.plt>

0000000000401040 <pthread_create@plt>:
  401040:	ff 25 da 2f 00 00    	jmpq   *0x2fda(%rip)        # 404020 <pthread_create@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <.plt>

0000000000401050 <_ZNSo9_M_insertImEERSoT_@plt>:
  401050:	ff 25 d2 2f 00 00    	jmpq   *0x2fd2(%rip)        # 404028 <_ZNSo9_M_insertImEERSoT_@GLIBCXX_3.4.9>
  401056:	68 02 00 00 00       	pushq  $0x2
  40105b:	e9 c0 ff ff ff       	jmpq   401020 <.plt>

0000000000401060 <_ZNSo9_M_insertIPKvEERSoT_@plt>:
  401060:	ff 25 ca 2f 00 00    	jmpq   *0x2fca(%rip)        # 404030 <_ZNSo9_M_insertIPKvEERSoT_@GLIBCXX_3.4.9>
  401066:	68 03 00 00 00       	pushq  $0x3
  40106b:	e9 b0 ff ff ff       	jmpq   401020 <.plt>

0000000000401070 <__cxa_atexit@plt>:
  401070:	ff 25 c2 2f 00 00    	jmpq   *0x2fc2(%rip)        # 404038 <__cxa_atexit@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	pushq  $0x4
  40107b:	e9 a0 ff ff ff       	jmpq   401020 <.plt>

0000000000401080 <pthread_self@plt>:
  401080:	ff 25 ba 2f 00 00    	jmpq   *0x2fba(%rip)        # 404040 <pthread_self@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	pushq  $0x5
  40108b:	e9 90 ff ff ff       	jmpq   401020 <.plt>

0000000000401090 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  401090:	ff 25 b2 2f 00 00    	jmpq   *0x2fb2(%rip)        # 404048 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
  401096:	68 06 00 00 00       	pushq  $0x6
  40109b:	e9 80 ff ff ff       	jmpq   401020 <.plt>

00000000004010a0 <_Znwm@plt>:
  4010a0:	ff 25 aa 2f 00 00    	jmpq   *0x2faa(%rip)        # 404050 <_Znwm@GLIBCXX_3.4>
  4010a6:	68 07 00 00 00       	pushq  $0x7
  4010ab:	e9 70 ff ff ff       	jmpq   401020 <.plt>

00000000004010b0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
  4010b0:	ff 25 a2 2f 00 00    	jmpq   *0x2fa2(%rip)        # 404058 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
  4010b6:	68 08 00 00 00       	pushq  $0x8
  4010bb:	e9 60 ff ff ff       	jmpq   401020 <.plt>

00000000004010c0 <free@plt>:
  4010c0:	ff 25 9a 2f 00 00    	jmpq   *0x2f9a(%rip)        # 404060 <free@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	pushq  $0x9
  4010cb:	e9 50 ff ff ff       	jmpq   401020 <.plt>

00000000004010d0 <_ZNSt8ios_base4InitC1Ev@plt>:
  4010d0:	ff 25 92 2f 00 00    	jmpq   *0x2f92(%rip)        # 404068 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
  4010d6:	68 0a 00 00 00       	pushq  $0xa
  4010db:	e9 40 ff ff ff       	jmpq   401020 <.plt>

00000000004010e0 <__pthread_key_create@plt>:
  4010e0:	ff 25 8a 2f 00 00    	jmpq   *0x2f8a(%rip)        # 404070 <__pthread_key_create@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	pushq  $0xb
  4010eb:	e9 30 ff ff ff       	jmpq   401020 <.plt>

00000000004010f0 <_ZNSolsEi@plt>:
  4010f0:	ff 25 82 2f 00 00    	jmpq   *0x2f82(%rip)        # 404078 <_ZNSolsEi@GLIBCXX_3.4>
  4010f6:	68 0c 00 00 00       	pushq  $0xc
  4010fb:	e9 20 ff ff ff       	jmpq   401020 <.plt>

0000000000401100 <_ZNSt8ios_base4InitD1Ev@plt>:
  401100:	ff 25 7a 2f 00 00    	jmpq   *0x2f7a(%rip)        # 404080 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
  401106:	68 0d 00 00 00       	pushq  $0xd
  40110b:	e9 10 ff ff ff       	jmpq   401020 <.plt>

Disassembly of section .text:

0000000000401110 <main>:
  401110:	55                   	push   %rbp
  401111:	48 89 e5             	mov    %rsp,%rbp
  401114:	41 55                	push   %r13
  401116:	41 54                	push   %r12
  401118:	53                   	push   %rbx
  401119:	48 81 ec 28 03 00 00 	sub    $0x328,%rsp
  401120:	48 c7 05 95 30 00 00 	movq   $0x0,0x3095(%rip)        # 4041c0 <L>
  401127:	00 00 00 00 
  40112b:	48 89 e3             	mov    %rsp,%rbx
  40112e:	4c 8d ab 20 03 00 00 	lea    0x320(%rbx),%r13
  401135:	49 89 dc             	mov    %rbx,%r12
  401138:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40113f:	00 
  401140:	4c 89 e7             	mov    %r12,%rdi
  401143:	31 c9                	xor    %ecx,%ecx
  401145:	ba f0 12 40 00       	mov    $0x4012f0,%edx
  40114a:	31 f6                	xor    %esi,%esi
  40114c:	e8 ef fe ff ff       	callq  401040 <pthread_create@plt>
  401151:	49 83 c4 08          	add    $0x8,%r12
  401155:	4d 39 ec             	cmp    %r13,%r12
  401158:	75 e6                	jne    401140 <main+0x30>
  40115a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401160:	48 8b 3b             	mov    (%rbx),%rdi
  401163:	31 f6                	xor    %esi,%esi
  401165:	48 83 c3 08          	add    $0x8,%rbx
  401169:	e8 c2 fe ff ff       	callq  401030 <pthread_join@plt>
  40116e:	4c 39 eb             	cmp    %r13,%rbx
  401171:	75 ed                	jne    401160 <main+0x50>
  401173:	ba 0a 00 00 00       	mov    $0xa,%edx
  401178:	be 6a 20 40 00       	mov    $0x40206a,%esi
  40117d:	bf a0 40 40 00       	mov    $0x4040a0,%edi
  401182:	e8 29 ff ff ff       	callq  4010b0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401187:	8b 35 3b 30 00 00    	mov    0x303b(%rip),%esi        # 4041c8 <val>
  40118d:	bf a0 40 40 00       	mov    $0x4040a0,%edi
  401192:	e8 59 ff ff ff       	callq  4010f0 <_ZNSolsEi@plt>
  401197:	be 75 20 40 00       	mov    $0x402075,%esi
  40119c:	48 89 c7             	mov    %rax,%rdi
  40119f:	e8 ec fe ff ff       	callq  401090 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4011a4:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  4011a8:	31 c0                	xor    %eax,%eax
  4011aa:	5b                   	pop    %rbx
  4011ab:	41 5c                	pop    %r12
  4011ad:	41 5d                	pop    %r13
  4011af:	5d                   	pop    %rbp
  4011b0:	c3                   	retq   
  4011b1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4011b8:	00 00 00 00 
  4011bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004011c0 <_GLOBAL__sub_I_mutext_lock1>:
  4011c0:	48 83 ec 08          	sub    $0x8,%rsp
  4011c4:	bf 88 42 40 00       	mov    $0x404288,%edi
  4011c9:	e8 02 ff ff ff       	callq  4010d0 <_ZNSt8ios_base4InitC1Ev@plt>
  4011ce:	ba 90 40 40 00       	mov    $0x404090,%edx
  4011d3:	be 88 42 40 00       	mov    $0x404288,%esi
  4011d8:	bf 00 11 40 00       	mov    $0x401100,%edi
  4011dd:	e8 8e fe ff ff       	callq  401070 <__cxa_atexit@plt>
  4011e2:	bf 10 00 00 00       	mov    $0x10,%edi
  4011e7:	e8 b4 fe ff ff       	callq  4010a0 <_Znwm@plt>
  4011ec:	48 89 05 cd 2f 00 00 	mov    %rax,0x2fcd(%rip)        # 4041c0 <L>
  4011f3:	48 83 c4 08          	add    $0x8,%rsp
  4011f7:	c3                   	retq   

00000000004011f8 <.annobin_elf_init.c.hot>:
  4011f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4011ff:	00 

0000000000401200 <_start>:
  401200:	f3 0f 1e fa          	endbr64 
  401204:	31 ed                	xor    %ebp,%ebp
  401206:	49 89 d1             	mov    %rdx,%r9
  401209:	5e                   	pop    %rsi
  40120a:	48 89 e2             	mov    %rsp,%rdx
  40120d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401211:	50                   	push   %rax
  401212:	54                   	push   %rsp
  401213:	49 c7 c0 d0 16 40 00 	mov    $0x4016d0,%r8
  40121a:	48 c7 c1 60 16 40 00 	mov    $0x401660,%rcx
  401221:	48 c7 c7 10 11 40 00 	mov    $0x401110,%rdi
  401228:	ff 15 ba 2d 00 00    	callq  *0x2dba(%rip)        # 403fe8 <__libc_start_main@GLIBC_2.2.5>
  40122e:	f4                   	hlt    

000000000040122f <.annobin_init.c>:
  40122f:	90                   	nop

0000000000401230 <_dl_relocate_static_pie>:
  401230:	f3 0f 1e fa          	endbr64 
  401234:	c3                   	retq   

0000000000401235 <.annobin__dl_relocate_static_pie.end>:
  401235:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40123c:	00 00 00 
  40123f:	90                   	nop

0000000000401240 <deregister_tm_clones>:
  401240:	48 8d 3d 51 2e 00 00 	lea    0x2e51(%rip),%rdi        # 404098 <__TMC_END__>
  401247:	48 8d 05 4a 2e 00 00 	lea    0x2e4a(%rip),%rax        # 404098 <__TMC_END__>
  40124e:	48 39 f8             	cmp    %rdi,%rax
  401251:	74 15                	je     401268 <deregister_tm_clones+0x28>
  401253:	48 8b 05 86 2d 00 00 	mov    0x2d86(%rip),%rax        # 403fe0 <_ITM_deregisterTMCloneTable>
  40125a:	48 85 c0             	test   %rax,%rax
  40125d:	74 09                	je     401268 <deregister_tm_clones+0x28>
  40125f:	ff e0                	jmpq   *%rax
  401261:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401268:	c3                   	retq   
  401269:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401270 <register_tm_clones>:
  401270:	48 8d 3d 21 2e 00 00 	lea    0x2e21(%rip),%rdi        # 404098 <__TMC_END__>
  401277:	48 8d 35 1a 2e 00 00 	lea    0x2e1a(%rip),%rsi        # 404098 <__TMC_END__>
  40127e:	48 29 fe             	sub    %rdi,%rsi
  401281:	48 89 f0             	mov    %rsi,%rax
  401284:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401288:	48 c1 f8 03          	sar    $0x3,%rax
  40128c:	48 01 c6             	add    %rax,%rsi
  40128f:	48 d1 fe             	sar    %rsi
  401292:	74 14                	je     4012a8 <register_tm_clones+0x38>
  401294:	48 8b 05 5d 2d 00 00 	mov    0x2d5d(%rip),%rax        # 403ff8 <_ITM_registerTMCloneTable>
  40129b:	48 85 c0             	test   %rax,%rax
  40129e:	74 08                	je     4012a8 <register_tm_clones+0x38>
  4012a0:	ff e0                	jmpq   *%rax
  4012a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4012a8:	c3                   	retq   
  4012a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004012b0 <__do_global_dtors_aux>:
  4012b0:	80 3d f9 2e 00 00 00 	cmpb   $0x0,0x2ef9(%rip)        # 4041b0 <completed.7344>
  4012b7:	75 17                	jne    4012d0 <__do_global_dtors_aux+0x20>
  4012b9:	55                   	push   %rbp
  4012ba:	48 89 e5             	mov    %rsp,%rbp
  4012bd:	e8 7e ff ff ff       	callq  401240 <deregister_tm_clones>
  4012c2:	c6 05 e7 2e 00 00 01 	movb   $0x1,0x2ee7(%rip)        # 4041b0 <completed.7344>
  4012c9:	5d                   	pop    %rbp
  4012ca:	c3                   	retq   
  4012cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4012d0:	c3                   	retq   
  4012d1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4012d8:	00 00 00 00 
  4012dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012e0 <frame_dummy>:
  4012e0:	eb 8e                	jmp    401270 <register_tm_clones>
  4012e2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4012e9:	00 00 00 
  4012ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012f0 <_Z12lock_examplePv>:
  4012f0:	41 55                	push   %r13
  4012f2:	bf 10 00 00 00       	mov    $0x10,%edi
  4012f7:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  4012fd:	41 54                	push   %r12
  4012ff:	55                   	push   %rbp
  401300:	53                   	push   %rbx
  401301:	bb d0 07 00 00       	mov    $0x7d0,%ebx
  401306:	48 83 ec 08          	sub    $0x8,%rsp
  40130a:	e8 91 fd ff ff       	callq  4010a0 <_Znwm@plt>
  40130f:	48 89 c5             	mov    %rax,%rbp
  401312:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401318:	bf 10 00 00 00       	mov    $0x10,%edi
  40131d:	48 c7 45 00 00 00 00 	movq   $0x0,0x0(%rbp)
  401324:	00 
  401325:	4c 8b 25 94 2e 00 00 	mov    0x2e94(%rip),%r12        # 4041c0 <L>
  40132c:	e8 6f fd ff ff       	callq  4010a0 <_Znwm@plt>
  401331:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401338:	44 89 e8             	mov    %r13d,%eax
  40133b:	87 05 8f 2e 00 00    	xchg   %eax,0x2e8f(%rip)        # 4041d0 <lock_flag1>
  401341:	85 c0                	test   %eax,%eax
  401343:	75 f3                	jne    401338 <_Z12lock_examplePv+0x48>
  401345:	87 05 85 2e 00 00    	xchg   %eax,0x2e85(%rip)        # 4041d0 <lock_flag1>
  40134b:	4d 85 e4             	test   %r12,%r12
  40134e:	74 2a                	je     40137a <_Z12lock_examplePv+0x8a>
  401350:	c6 45 08 01          	movb   $0x1,0x8(%rbp)
  401354:	49 89 2c 24          	mov    %rbp,(%r12)
  401358:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40135f:	00 
  401360:	ba 2c 00 00 00       	mov    $0x2c,%edx
  401365:	be 08 20 40 00       	mov    $0x402008,%esi
  40136a:	bf a0 40 40 00       	mov    $0x4040a0,%edi
  40136f:	e8 3c fd ff ff       	callq  4010b0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401374:	80 7d 08 00          	cmpb   $0x0,0x8(%rbp)
  401378:	75 e6                	jne    401360 <_Z12lock_examplePv+0x70>
  40137a:	4c 89 e7             	mov    %r12,%rdi
  40137d:	e8 3e fd ff ff       	callq  4010c0 <free@plt>
  401382:	48 8b 45 00          	mov    0x0(%rbp),%rax
  401386:	83 05 3b 2e 00 00 01 	addl   $0x1,0x2e3b(%rip)        # 4041c8 <val>
  40138d:	48 85 c0             	test   %rax,%rax
  401390:	74 26                	je     4013b8 <_Z12lock_examplePv+0xc8>
  401392:	c6 40 08 00          	movb   $0x0,0x8(%rax)
  401396:	83 eb 01             	sub    $0x1,%ebx
  401399:	0f 85 79 ff ff ff    	jne    401318 <_Z12lock_examplePv+0x28>
  40139f:	48 89 ef             	mov    %rbp,%rdi
  4013a2:	e8 19 fd ff ff       	callq  4010c0 <free@plt>
  4013a7:	48 83 c4 08          	add    $0x8,%rsp
  4013ab:	31 c0                	xor    %eax,%eax
  4013ad:	5b                   	pop    %rbx
  4013ae:	5d                   	pop    %rbp
  4013af:	41 5c                	pop    %r12
  4013b1:	41 5d                	pop    %r13
  4013b3:	c3                   	retq   
  4013b4:	0f 1f 40 00          	nopl   0x0(%rax)
  4013b8:	48 8b 15 01 2e 00 00 	mov    0x2e01(%rip),%rdx        # 4041c0 <L>
  4013bf:	90                   	nop
  4013c0:	44 89 e8             	mov    %r13d,%eax
  4013c3:	87 05 03 2e 00 00    	xchg   %eax,0x2e03(%rip)        # 4041cc <lock_flag2>
  4013c9:	85 c0                	test   %eax,%eax
  4013cb:	75 f3                	jne    4013c0 <_Z12lock_examplePv+0xd0>
  4013cd:	48 39 ea             	cmp    %rbp,%rdx
  4013d0:	74 1e                	je     4013f0 <_Z12lock_examplePv+0x100>
  4013d2:	87 05 f4 2d 00 00    	xchg   %eax,0x2df4(%rip)        # 4041cc <lock_flag2>
  4013d8:	48 85 d2             	test   %rdx,%rdx
  4013db:	74 b9                	je     401396 <_Z12lock_examplePv+0xa6>
  4013dd:	48 8b 45 00          	mov    0x0(%rbp),%rax
  4013e1:	48 85 c0             	test   %rax,%rax
  4013e4:	75 ac                	jne    401392 <_Z12lock_examplePv+0xa2>
  4013e6:	eb fe                	jmp    4013e6 <_Z12lock_examplePv+0xf6>
  4013e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4013ef:	00 
  4013f0:	87 05 d6 2d 00 00    	xchg   %eax,0x2dd6(%rip)        # 4041cc <lock_flag2>
  4013f6:	eb 9e                	jmp    401396 <_Z12lock_examplePv+0xa6>
  4013f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4013ff:	00 

0000000000401400 <_Z8print_llP5qnode>:
  401400:	48 85 ff             	test   %rdi,%rdi
  401403:	0f 84 7f 01 00 00    	je     401588 <_Z8print_llP5qnode+0x188>
  401409:	b8 e0 10 40 00       	mov    $0x4010e0,%eax
  40140e:	41 54                	push   %r12
  401410:	55                   	push   %rbp
  401411:	53                   	push   %rbx
  401412:	48 89 fb             	mov    %rdi,%rbx
  401415:	48 85 c0             	test   %rax,%rax
  401418:	0f 84 d2 00 00 00    	je     4014f0 <_Z8print_llP5qnode+0xf0>
  40141e:	31 ed                	xor    %ebp,%ebp
  401420:	eb 7b                	jmp    40149d <_Z8print_llP5qnode+0x9d>
  401422:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401428:	ba 24 00 00 00       	mov    $0x24,%edx
  40142d:	be 38 20 40 00       	mov    $0x402038,%esi
  401432:	bf a0 40 40 00       	mov    $0x4040a0,%edi
  401437:	e8 74 fc ff ff       	callq  4010b0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40143c:	be 62 20 40 00       	mov    $0x402062,%esi
  401441:	bf a0 40 40 00       	mov    $0x4040a0,%edi
  401446:	ba 01 00 00 00       	mov    $0x1,%edx
  40144b:	e8 60 fc ff ff       	callq  4010b0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401450:	48 89 de             	mov    %rbx,%rsi
  401453:	bf a0 40 40 00       	mov    $0x4040a0,%edi
  401458:	e8 03 fc ff ff       	callq  401060 <_ZNSo9_M_insertIPKvEERSoT_@plt>
  40145d:	ba 01 00 00 00       	mov    $0x1,%edx
  401462:	be 60 20 40 00       	mov    $0x402060,%esi
  401467:	49 89 c4             	mov    %rax,%r12
  40146a:	48 89 c7             	mov    %rax,%rdi
  40146d:	e8 3e fc ff ff       	callq  4010b0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401472:	89 ee                	mov    %ebp,%esi
  401474:	4c 89 e7             	mov    %r12,%rdi
  401477:	83 c5 01             	add    $0x1,%ebp
  40147a:	e8 71 fc ff ff       	callq  4010f0 <_ZNSolsEi@plt>
  40147f:	ba 05 00 00 00       	mov    $0x5,%edx
  401484:	be 64 20 40 00       	mov    $0x402064,%esi
  401489:	48 89 c7             	mov    %rax,%rdi
  40148c:	e8 1f fc ff ff       	callq  4010b0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401491:	48 8b 1b             	mov    (%rbx),%rbx
  401494:	48 85 db             	test   %rbx,%rbx
  401497:	0f 84 e0 00 00 00    	je     40157d <_Z8print_llP5qnode+0x17d>
  40149d:	be 60 20 40 00       	mov    $0x402060,%esi
  4014a2:	ba 01 00 00 00       	mov    $0x1,%edx
  4014a7:	bf a0 40 40 00       	mov    $0x4040a0,%edi
  4014ac:	e8 ff fb ff ff       	callq  4010b0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4014b1:	e8 ca fb ff ff       	callq  401080 <pthread_self@plt>
  4014b6:	48 89 c6             	mov    %rax,%rsi
  4014b9:	48 85 c0             	test   %rax,%rax
  4014bc:	0f 84 66 ff ff ff    	je     401428 <_Z8print_llP5qnode+0x28>
  4014c2:	bf a0 40 40 00       	mov    $0x4040a0,%edi
  4014c7:	e8 84 fb ff ff       	callq  401050 <_ZNSo9_M_insertImEERSoT_@plt>
  4014cc:	be 62 20 40 00       	mov    $0x402062,%esi
  4014d1:	ba 01 00 00 00       	mov    $0x1,%edx
  4014d6:	49 89 c4             	mov    %rax,%r12
  4014d9:	48 89 c7             	mov    %rax,%rdi
  4014dc:	e8 cf fb ff ff       	callq  4010b0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4014e1:	48 89 de             	mov    %rbx,%rsi
  4014e4:	4c 89 e7             	mov    %r12,%rdi
  4014e7:	e9 6c ff ff ff       	jmpq   401458 <_Z8print_llP5qnode+0x58>
  4014ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4014f0:	45 31 e4             	xor    %r12d,%r12d
  4014f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4014f8:	ba 01 00 00 00       	mov    $0x1,%edx
  4014fd:	be 60 20 40 00       	mov    $0x402060,%esi
  401502:	bf a0 40 40 00       	mov    $0x4040a0,%edi
  401507:	e8 a4 fb ff ff       	callq  4010b0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40150c:	be 01 00 00 00       	mov    $0x1,%esi
  401511:	bf a0 40 40 00       	mov    $0x4040a0,%edi
  401516:	e8 35 fb ff ff       	callq  401050 <_ZNSo9_M_insertImEERSoT_@plt>
  40151b:	ba 01 00 00 00       	mov    $0x1,%edx
  401520:	be 62 20 40 00       	mov    $0x402062,%esi
  401525:	48 89 c5             	mov    %rax,%rbp
  401528:	48 89 c7             	mov    %rax,%rdi
  40152b:	e8 80 fb ff ff       	callq  4010b0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401530:	48 89 de             	mov    %rbx,%rsi
  401533:	48 89 ef             	mov    %rbp,%rdi
  401536:	e8 25 fb ff ff       	callq  401060 <_ZNSo9_M_insertIPKvEERSoT_@plt>
  40153b:	ba 01 00 00 00       	mov    $0x1,%edx
  401540:	be 60 20 40 00       	mov    $0x402060,%esi
  401545:	48 89 c5             	mov    %rax,%rbp
  401548:	48 89 c7             	mov    %rax,%rdi
  40154b:	e8 60 fb ff ff       	callq  4010b0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401550:	44 89 e6             	mov    %r12d,%esi
  401553:	48 89 ef             	mov    %rbp,%rdi
  401556:	41 83 c4 01          	add    $0x1,%r12d
  40155a:	e8 91 fb ff ff       	callq  4010f0 <_ZNSolsEi@plt>
  40155f:	ba 05 00 00 00       	mov    $0x5,%edx
  401564:	be 64 20 40 00       	mov    $0x402064,%esi
  401569:	48 89 c7             	mov    %rax,%rdi
  40156c:	e8 3f fb ff ff       	callq  4010b0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401571:	48 8b 1b             	mov    (%rbx),%rbx
  401574:	48 85 db             	test   %rbx,%rbx
  401577:	0f 85 7b ff ff ff    	jne    4014f8 <_Z8print_llP5qnode+0xf8>
  40157d:	5b                   	pop    %rbx
  40157e:	5d                   	pop    %rbp
  40157f:	41 5c                	pop    %r12
  401581:	c3                   	retq   
  401582:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401588:	c3                   	retq   
  401589:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401590 <_Z7my_lockP5qnodeS0_>:
  401590:	55                   	push   %rbp
  401591:	48 89 fd             	mov    %rdi,%rbp
  401594:	bf 10 00 00 00       	mov    $0x10,%edi
  401599:	53                   	push   %rbx
  40159a:	48 89 f3             	mov    %rsi,%rbx
  40159d:	48 83 ec 08          	sub    $0x8,%rsp
  4015a1:	48 c7 06 00 00 00 00 	movq   $0x0,(%rsi)
  4015a8:	e8 f3 fa ff ff       	callq  4010a0 <_Znwm@plt>
  4015ad:	ba 01 00 00 00       	mov    $0x1,%edx
  4015b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4015b8:	89 d0                	mov    %edx,%eax
  4015ba:	87 05 10 2c 00 00    	xchg   %eax,0x2c10(%rip)        # 4041d0 <lock_flag1>
  4015c0:	85 c0                	test   %eax,%eax
  4015c2:	75 f4                	jne    4015b8 <_Z7my_lockP5qnodeS0_+0x28>
  4015c4:	87 05 06 2c 00 00    	xchg   %eax,0x2c06(%rip)        # 4041d0 <lock_flag1>
  4015ca:	48 85 ed             	test   %rbp,%rbp
  4015cd:	74 2b                	je     4015fa <_Z7my_lockP5qnodeS0_+0x6a>
  4015cf:	c6 43 08 01          	movb   $0x1,0x8(%rbx)
  4015d3:	48 89 5d 00          	mov    %rbx,0x0(%rbp)
  4015d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4015de:	00 00 
  4015e0:	ba 2c 00 00 00       	mov    $0x2c,%edx
  4015e5:	be 08 20 40 00       	mov    $0x402008,%esi
  4015ea:	bf a0 40 40 00       	mov    $0x4040a0,%edi
  4015ef:	e8 bc fa ff ff       	callq  4010b0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4015f4:	80 7b 08 00          	cmpb   $0x0,0x8(%rbx)
  4015f8:	75 e6                	jne    4015e0 <_Z7my_lockP5qnodeS0_+0x50>
  4015fa:	48 83 c4 08          	add    $0x8,%rsp
  4015fe:	48 89 ef             	mov    %rbp,%rdi
  401601:	5b                   	pop    %rbx
  401602:	5d                   	pop    %rbp
  401603:	e9 b8 fa ff ff       	jmpq   4010c0 <free@plt>
  401608:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40160f:	00 

0000000000401610 <_Z9my_unlockP5qnodeS0_>:
  401610:	48 8b 06             	mov    (%rsi),%rax
  401613:	48 85 c0             	test   %rax,%rax
  401616:	74 08                	je     401620 <_Z9my_unlockP5qnodeS0_+0x10>
  401618:	c6 40 08 00          	movb   $0x0,0x8(%rax)
  40161c:	c3                   	retq   
  40161d:	0f 1f 00             	nopl   (%rax)
  401620:	ba 01 00 00 00       	mov    $0x1,%edx
  401625:	0f 1f 00             	nopl   (%rax)
  401628:	89 d0                	mov    %edx,%eax
  40162a:	87 05 9c 2b 00 00    	xchg   %eax,0x2b9c(%rip)        # 4041cc <lock_flag2>
  401630:	85 c0                	test   %eax,%eax
  401632:	75 f4                	jne    401628 <_Z9my_unlockP5qnodeS0_+0x18>
  401634:	48 39 fe             	cmp    %rdi,%rsi
  401637:	74 17                	je     401650 <_Z9my_unlockP5qnodeS0_+0x40>
  401639:	87 05 8d 2b 00 00    	xchg   %eax,0x2b8d(%rip)        # 4041cc <lock_flag2>
  40163f:	48 85 ff             	test   %rdi,%rdi
  401642:	74 d8                	je     40161c <_Z9my_unlockP5qnodeS0_+0xc>
  401644:	48 8b 06             	mov    (%rsi),%rax
  401647:	48 85 c0             	test   %rax,%rax
  40164a:	75 cc                	jne    401618 <_Z9my_unlockP5qnodeS0_+0x8>
  40164c:	eb fe                	jmp    40164c <_Z9my_unlockP5qnodeS0_+0x3c>
  40164e:	66 90                	xchg   %ax,%ax
  401650:	87 05 76 2b 00 00    	xchg   %eax,0x2b76(%rip)        # 4041cc <lock_flag2>
  401656:	c3                   	retq   
  401657:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40165e:	00 00 

0000000000401660 <__libc_csu_init>:
  401660:	f3 0f 1e fa          	endbr64 
  401664:	41 57                	push   %r15
  401666:	49 89 d7             	mov    %rdx,%r15
  401669:	41 56                	push   %r14
  40166b:	49 89 f6             	mov    %rsi,%r14
  40166e:	41 55                	push   %r13
  401670:	41 89 fd             	mov    %edi,%r13d
  401673:	41 54                	push   %r12
  401675:	4c 8d 25 2c 27 00 00 	lea    0x272c(%rip),%r12        # 403da8 <__frame_dummy_init_array_entry>
  40167c:	55                   	push   %rbp
  40167d:	48 8d 2d 34 27 00 00 	lea    0x2734(%rip),%rbp        # 403db8 <__init_array_end>
  401684:	53                   	push   %rbx
  401685:	4c 29 e5             	sub    %r12,%rbp
  401688:	48 83 ec 08          	sub    $0x8,%rsp
  40168c:	e8 6f f9 ff ff       	callq  401000 <_init>
  401691:	48 c1 fd 03          	sar    $0x3,%rbp
  401695:	74 1f                	je     4016b6 <__libc_csu_init+0x56>
  401697:	31 db                	xor    %ebx,%ebx
  401699:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4016a0:	4c 89 fa             	mov    %r15,%rdx
  4016a3:	4c 89 f6             	mov    %r14,%rsi
  4016a6:	44 89 ef             	mov    %r13d,%edi
  4016a9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4016ad:	48 83 c3 01          	add    $0x1,%rbx
  4016b1:	48 39 dd             	cmp    %rbx,%rbp
  4016b4:	75 ea                	jne    4016a0 <__libc_csu_init+0x40>
  4016b6:	48 83 c4 08          	add    $0x8,%rsp
  4016ba:	5b                   	pop    %rbx
  4016bb:	5d                   	pop    %rbp
  4016bc:	41 5c                	pop    %r12
  4016be:	41 5d                	pop    %r13
  4016c0:	41 5e                	pop    %r14
  4016c2:	41 5f                	pop    %r15
  4016c4:	c3                   	retq   

00000000004016c5 <.annobin___libc_csu_fini.start>:
  4016c5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4016cc:	00 00 00 00 

00000000004016d0 <__libc_csu_fini>:
  4016d0:	f3 0f 1e fa          	endbr64 
  4016d4:	c3                   	retq   

Disassembly of section .fini:

00000000004016d8 <_fini>:
  4016d8:	f3 0f 1e fa          	endbr64 
  4016dc:	48 83 ec 08          	sub    $0x8,%rsp
  4016e0:	48 83 c4 08          	add    $0x8,%rsp
  4016e4:	c3                   	retq   
