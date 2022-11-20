
mcs_shreyas_ubuntu.o:     file format elf64-x86-64


Disassembly of section .init:

00000000000008a0 <_init>:
 8a0:	48 83 ec 08          	sub    $0x8,%rsp
 8a4:	48 8b 05 3d 17 20 00 	mov    0x20173d(%rip),%rax        # 201fe8 <__gmon_start__>
 8ab:	48 85 c0             	test   %rax,%rax
 8ae:	74 02                	je     8b2 <_init+0x12>
 8b0:	ff d0                	callq  *%rax
 8b2:	48 83 c4 08          	add    $0x8,%rsp
 8b6:	c3                   	retq   

Disassembly of section .plt:

00000000000008c0 <.plt>:
 8c0:	ff 35 9a 16 20 00    	pushq  0x20169a(%rip)        # 201f60 <_GLOBAL_OFFSET_TABLE_+0x8>
 8c6:	ff 25 9c 16 20 00    	jmpq   *0x20169c(%rip)        # 201f68 <_GLOBAL_OFFSET_TABLE_+0x10>
 8cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000008d0 <__printf_chk@plt>:
 8d0:	ff 25 9a 16 20 00    	jmpq   *0x20169a(%rip)        # 201f70 <__printf_chk@GLIBC_2.3.4>
 8d6:	68 00 00 00 00       	pushq  $0x0
 8db:	e9 e0 ff ff ff       	jmpq   8c0 <.plt>

00000000000008e0 <pthread_join@plt>:
 8e0:	ff 25 92 16 20 00    	jmpq   *0x201692(%rip)        # 201f78 <pthread_join@GLIBC_2.2.5>
 8e6:	68 01 00 00 00       	pushq  $0x1
 8eb:	e9 d0 ff ff ff       	jmpq   8c0 <.plt>

00000000000008f0 <pthread_create@plt>:
 8f0:	ff 25 8a 16 20 00    	jmpq   *0x20168a(%rip)        # 201f80 <pthread_create@GLIBC_2.2.5>
 8f6:	68 02 00 00 00       	pushq  $0x2
 8fb:	e9 c0 ff ff ff       	jmpq   8c0 <.plt>

0000000000000900 <__cxa_atexit@plt>:
 900:	ff 25 82 16 20 00    	jmpq   *0x201682(%rip)        # 201f88 <__cxa_atexit@GLIBC_2.2.5>
 906:	68 03 00 00 00       	pushq  $0x3
 90b:	e9 b0 ff ff ff       	jmpq   8c0 <.plt>

0000000000000910 <__stack_chk_fail@plt>:
 910:	ff 25 7a 16 20 00    	jmpq   *0x20167a(%rip)        # 201f90 <__stack_chk_fail@GLIBC_2.4>
 916:	68 04 00 00 00       	pushq  $0x4
 91b:	e9 a0 ff ff ff       	jmpq   8c0 <.plt>

0000000000000920 <free@plt>:
 920:	ff 25 72 16 20 00    	jmpq   *0x201672(%rip)        # 201f98 <free@GLIBC_2.2.5>
 926:	68 05 00 00 00       	pushq  $0x5
 92b:	e9 90 ff ff ff       	jmpq   8c0 <.plt>

0000000000000930 <exit@plt>:
 930:	ff 25 6a 16 20 00    	jmpq   *0x20166a(%rip)        # 201fa0 <exit@GLIBC_2.2.5>
 936:	68 06 00 00 00       	pushq  $0x6
 93b:	e9 80 ff ff ff       	jmpq   8c0 <.plt>

0000000000000940 <malloc@plt>:
 940:	ff 25 62 16 20 00    	jmpq   *0x201662(%rip)        # 201fa8 <malloc@GLIBC_2.2.5>
 946:	68 07 00 00 00       	pushq  $0x7
 94b:	e9 70 ff ff ff       	jmpq   8c0 <.plt>

0000000000000950 <pthread_mutex_init@plt>:
 950:	ff 25 5a 16 20 00    	jmpq   *0x20165a(%rip)        # 201fb0 <pthread_mutex_init@GLIBC_2.2.5>
 956:	68 08 00 00 00       	pushq  $0x8
 95b:	e9 60 ff ff ff       	jmpq   8c0 <.plt>

0000000000000960 <_ZNSt8ios_base4InitC1Ev@plt>:
 960:	ff 25 52 16 20 00    	jmpq   *0x201652(%rip)        # 201fb8 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
 966:	68 09 00 00 00       	pushq  $0x9
 96b:	e9 50 ff ff ff       	jmpq   8c0 <.plt>

0000000000000970 <puts@plt>:
 970:	ff 25 4a 16 20 00    	jmpq   *0x20164a(%rip)        # 201fc0 <puts@GLIBC_2.2.5>
 976:	68 0a 00 00 00       	pushq  $0xa
 97b:	e9 40 ff ff ff       	jmpq   8c0 <.plt>

0000000000000980 <pthread_exit@plt>:
 980:	ff 25 42 16 20 00    	jmpq   *0x201642(%rip)        # 201fc8 <pthread_exit@GLIBC_2.2.5>
 986:	68 0b 00 00 00       	pushq  $0xb
 98b:	e9 30 ff ff ff       	jmpq   8c0 <.plt>

Disassembly of section .plt.got:

0000000000000990 <__cxa_finalize@plt>:
 990:	ff 25 3a 16 20 00    	jmpq   *0x20163a(%rip)        # 201fd0 <__cxa_finalize@GLIBC_2.2.5>
 996:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000009a0 <main>:
 9a0:	41 54                	push   %r12
 9a2:	55                   	push   %rbp
 9a3:	48 8d 3d 36 17 20 00 	lea    0x201736(%rip),%rdi        # 2020e0 <mutex_lock1>
 9aa:	53                   	push   %rbx
 9ab:	31 f6                	xor    %esi,%esi
 9ad:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
 9b4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 9bb:	00 00 
 9bd:	48 89 84 24 18 01 00 	mov    %rax,0x118(%rsp)
 9c4:	00 
 9c5:	31 c0                	xor    %eax,%eax
 9c7:	e8 84 ff ff ff       	callq  950 <pthread_mutex_init@plt>
 9cc:	85 c0                	test   %eax,%eax
 9ce:	0f 85 fc 00 00 00    	jne    ad0 <main+0x130>
 9d4:	48 8d 3d c5 16 20 00 	lea    0x2016c5(%rip),%rdi        # 2020a0 <mutex_lock2>
 9db:	31 f6                	xor    %esi,%esi
 9dd:	e8 6e ff ff ff       	callq  950 <pthread_mutex_init@plt>
 9e2:	85 c0                	test   %eax,%eax
 9e4:	0f 85 e6 00 00 00    	jne    ad0 <main+0x130>
 9ea:	48 8d 3d 6f 16 20 00 	lea    0x20166f(%rip),%rdi        # 202060 <mutex_lock3>
 9f1:	31 f6                	xor    %esi,%esi
 9f3:	e8 58 ff ff ff       	callq  950 <pthread_mutex_init@plt>
 9f8:	85 c0                	test   %eax,%eax
 9fa:	0f 85 d0 00 00 00    	jne    ad0 <main+0x130>
 a00:	bf 08 00 00 00       	mov    $0x8,%edi
 a05:	4c 8d 64 24 08       	lea    0x8(%rsp),%r12
 a0a:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
 a0f:	e8 2c ff ff ff       	callq  940 <malloc@plt>
 a14:	48 8d 1d 91 04 00 00 	lea    0x491(%rip),%rbx        # eac <_IO_stdin_used+0x1c>
 a1b:	48 89 05 26 16 20 00 	mov    %rax,0x201626(%rip)        # 202048 <the_lock>
 a22:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
 a29:	0f ae f0             	mfence 
 a2c:	31 d2                	xor    %edx,%edx
 a2e:	0f ae f0             	mfence 
 a31:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
 a38:	00 00 
 a3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 a40:	48 89 de             	mov    %rbx,%rsi
 a43:	bf 01 00 00 00       	mov    $0x1,%edi
 a48:	31 c0                	xor    %eax,%eax
 a4a:	e8 81 fe ff ff       	callq  8d0 <__printf_chk@plt>
 a4f:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 a54:	48 8d 15 25 02 00 00 	lea    0x225(%rip),%rdx        # c80 <_Z12do_somethingPv>
 a5b:	31 f6                	xor    %esi,%esi
 a5d:	4c 89 e1             	mov    %r12,%rcx
 a60:	48 8d 7c c5 00       	lea    0x0(%rbp,%rax,8),%rdi
 a65:	e8 86 fe ff ff       	callq  8f0 <pthread_create@plt>
 a6a:	85 c0                	test   %eax,%eax
 a6c:	0f 85 ba 00 00 00    	jne    b2c <main+0x18c>
 a72:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 a77:	48 8d 50 01          	lea    0x1(%rax),%rdx
 a7b:	48 83 fa 1f          	cmp    $0x1f,%rdx
 a7f:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
 a84:	7e ba                	jle    a40 <main+0xa0>
 a86:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
 a8d:	00 00 
 a8f:	31 c0                	xor    %eax,%eax
 a91:	eb 19                	jmp    aac <main+0x10c>
 a93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 a98:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 a9d:	48 83 c0 01          	add    $0x1,%rax
 aa1:	48 83 f8 1f          	cmp    $0x1f,%rax
 aa5:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 aaa:	7f 54                	jg     b00 <main+0x160>
 aac:	48 8b 7c c4 10       	mov    0x10(%rsp,%rax,8),%rdi
 ab1:	31 f6                	xor    %esi,%esi
 ab3:	e8 28 fe ff ff       	callq  8e0 <pthread_join@plt>
 ab8:	85 c0                	test   %eax,%eax
 aba:	74 dc                	je     a98 <main+0xf8>
 abc:	bf 01 00 00 00       	mov    $0x1,%edi
 ac1:	e8 6a fe ff ff       	callq  930 <exit@plt>
 ac6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 acd:	00 00 00 
 ad0:	48 8d 3d bd 03 00 00 	lea    0x3bd(%rip),%rdi        # e94 <_IO_stdin_used+0x4>
 ad7:	e8 94 fe ff ff       	callq  970 <puts@plt>
 adc:	48 8b 8c 24 18 01 00 	mov    0x118(%rsp),%rcx
 ae3:	00 
 ae4:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 aeb:	00 00 
 aed:	b8 01 00 00 00       	mov    $0x1,%eax
 af2:	75 40                	jne    b34 <main+0x194>
 af4:	48 81 c4 20 01 00 00 	add    $0x120,%rsp
 afb:	5b                   	pop    %rbx
 afc:	5d                   	pop    %rbp
 afd:	41 5c                	pop    %r12
 aff:	c3                   	retq   
 b00:	48 8b 3d 41 15 20 00 	mov    0x201541(%rip),%rdi        # 202048 <the_lock>
 b07:	e8 14 fe ff ff       	callq  920 <free@plt>
 b0c:	8b 15 2e 15 20 00    	mov    0x20152e(%rip),%edx        # 202040 <val>
 b12:	48 8d 35 b1 03 00 00 	lea    0x3b1(%rip),%rsi        # eca <_IO_stdin_used+0x3a>
 b19:	bf 01 00 00 00       	mov    $0x1,%edi
 b1e:	31 c0                	xor    %eax,%eax
 b20:	e8 ab fd ff ff       	callq  8d0 <__printf_chk@plt>
 b25:	31 ff                	xor    %edi,%edi
 b27:	e8 54 fe ff ff       	callq  980 <pthread_exit@plt>
 b2c:	83 cf ff             	or     $0xffffffff,%edi
 b2f:	e8 fc fd ff ff       	callq  930 <exit@plt>
 b34:	e8 d7 fd ff ff       	callq  910 <__stack_chk_fail@plt>
 b39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000b40 <_GLOBAL__sub_I_mutex_lock1>:
 b40:	48 8d 3d c1 15 20 00 	lea    0x2015c1(%rip),%rdi        # 202108 <_ZStL8__ioinit>
 b47:	48 83 ec 08          	sub    $0x8,%rsp
 b4b:	e8 10 fe ff ff       	callq  960 <_ZNSt8ios_base4InitC1Ev@plt>
 b50:	48 8b 3d a1 14 20 00 	mov    0x2014a1(%rip),%rdi        # 201ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
 b57:	48 8d 15 aa 14 20 00 	lea    0x2014aa(%rip),%rdx        # 202008 <__dso_handle>
 b5e:	48 8d 35 a3 15 20 00 	lea    0x2015a3(%rip),%rsi        # 202108 <_ZStL8__ioinit>
 b65:	48 83 c4 08          	add    $0x8,%rsp
 b69:	e9 92 fd ff ff       	jmpq   900 <__cxa_atexit@plt>
 b6e:	66 90                	xchg   %ax,%ax

0000000000000b70 <_start>:
 b70:	31 ed                	xor    %ebp,%ebp
 b72:	49 89 d1             	mov    %rdx,%r9
 b75:	5e                   	pop    %rsi
 b76:	48 89 e2             	mov    %rsp,%rdx
 b79:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 b7d:	50                   	push   %rax
 b7e:	54                   	push   %rsp
 b7f:	4c 8d 05 fa 02 00 00 	lea    0x2fa(%rip),%r8        # e80 <__libc_csu_fini>
 b86:	48 8d 0d 83 02 00 00 	lea    0x283(%rip),%rcx        # e10 <__libc_csu_init>
 b8d:	48 8d 3d 0c fe ff ff 	lea    -0x1f4(%rip),%rdi        # 9a0 <main>
 b94:	ff 15 46 14 20 00    	callq  *0x201446(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 b9a:	f4                   	hlt    
 b9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000ba0 <deregister_tm_clones>:
 ba0:	48 8d 3d 69 14 20 00 	lea    0x201469(%rip),%rdi        # 202010 <__TMC_END__>
 ba7:	55                   	push   %rbp
 ba8:	48 8d 05 61 14 20 00 	lea    0x201461(%rip),%rax        # 202010 <__TMC_END__>
 baf:	48 39 f8             	cmp    %rdi,%rax
 bb2:	48 89 e5             	mov    %rsp,%rbp
 bb5:	74 19                	je     bd0 <deregister_tm_clones+0x30>
 bb7:	48 8b 05 1a 14 20 00 	mov    0x20141a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 bbe:	48 85 c0             	test   %rax,%rax
 bc1:	74 0d                	je     bd0 <deregister_tm_clones+0x30>
 bc3:	5d                   	pop    %rbp
 bc4:	ff e0                	jmpq   *%rax
 bc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bcd:	00 00 00 
 bd0:	5d                   	pop    %rbp
 bd1:	c3                   	retq   
 bd2:	0f 1f 40 00          	nopl   0x0(%rax)
 bd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bdd:	00 00 00 

0000000000000be0 <register_tm_clones>:
 be0:	48 8d 3d 29 14 20 00 	lea    0x201429(%rip),%rdi        # 202010 <__TMC_END__>
 be7:	48 8d 35 22 14 20 00 	lea    0x201422(%rip),%rsi        # 202010 <__TMC_END__>
 bee:	55                   	push   %rbp
 bef:	48 29 fe             	sub    %rdi,%rsi
 bf2:	48 89 e5             	mov    %rsp,%rbp
 bf5:	48 c1 fe 03          	sar    $0x3,%rsi
 bf9:	48 89 f0             	mov    %rsi,%rax
 bfc:	48 c1 e8 3f          	shr    $0x3f,%rax
 c00:	48 01 c6             	add    %rax,%rsi
 c03:	48 d1 fe             	sar    %rsi
 c06:	74 18                	je     c20 <register_tm_clones+0x40>
 c08:	48 8b 05 e1 13 20 00 	mov    0x2013e1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 c0f:	48 85 c0             	test   %rax,%rax
 c12:	74 0c                	je     c20 <register_tm_clones+0x40>
 c14:	5d                   	pop    %rbp
 c15:	ff e0                	jmpq   *%rax
 c17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 c1e:	00 00 
 c20:	5d                   	pop    %rbp
 c21:	c3                   	retq   
 c22:	0f 1f 40 00          	nopl   0x0(%rax)
 c26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c2d:	00 00 00 

0000000000000c30 <__do_global_dtors_aux>:
 c30:	80 3d e9 13 20 00 00 	cmpb   $0x0,0x2013e9(%rip)        # 202020 <completed.7698>
 c37:	75 2f                	jne    c68 <__do_global_dtors_aux+0x38>
 c39:	48 83 3d 8f 13 20 00 	cmpq   $0x0,0x20138f(%rip)        # 201fd0 <__cxa_finalize@GLIBC_2.2.5>
 c40:	00 
 c41:	55                   	push   %rbp
 c42:	48 89 e5             	mov    %rsp,%rbp
 c45:	74 0c                	je     c53 <__do_global_dtors_aux+0x23>
 c47:	48 8b 3d ba 13 20 00 	mov    0x2013ba(%rip),%rdi        # 202008 <__dso_handle>
 c4e:	e8 3d fd ff ff       	callq  990 <__cxa_finalize@plt>
 c53:	e8 48 ff ff ff       	callq  ba0 <deregister_tm_clones>
 c58:	c6 05 c1 13 20 00 01 	movb   $0x1,0x2013c1(%rip)        # 202020 <completed.7698>
 c5f:	5d                   	pop    %rbp
 c60:	c3                   	retq   
 c61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 c68:	f3 c3                	repz retq 
 c6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000c70 <frame_dummy>:
 c70:	55                   	push   %rbp
 c71:	48 89 e5             	mov    %rsp,%rbp
 c74:	5d                   	pop    %rbp
 c75:	e9 66 ff ff ff       	jmpq   be0 <register_tm_clones>
 c7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000c80 <_Z12do_somethingPv>:
 c80:	bf 10 00 00 00       	mov    $0x10,%edi
 c85:	48 83 ec 08          	sub    $0x8,%rsp
 c89:	e8 b2 fc ff ff       	callq  940 <malloc@plt>
 c8e:	0f ae f0             	mfence 
 c91:	0f ae f0             	mfence 
 c94:	48 89 c7             	mov    %rax,%rdi
 c97:	b9 10 27 00 00       	mov    $0x2710,%ecx
 c9c:	0f 1f 40 00          	nopl   0x0(%rax)
 ca0:	48 c7 47 08 00 00 00 	movq   $0x0,0x8(%rdi)
 ca7:	00 
 ca8:	48 8b 15 99 13 20 00 	mov    0x201399(%rip),%rdx        # 202048 <the_lock>
 caf:	48 89 f8             	mov    %rdi,%rax
 cb2:	0f ae f0             	mfence 
 cb5:	48 87 02             	xchg   %rax,(%rdx)
 cb8:	48 85 c0             	test   %rax,%rax
 cbb:	74 1c                	je     cd9 <_Z12do_somethingPv+0x59>
 cbd:	c6 07 01             	movb   $0x1,(%rdi)
 cc0:	0f ae f0             	mfence 
 cc3:	48 89 78 08          	mov    %rdi,0x8(%rax)
 cc7:	0f b6 07             	movzbl (%rdi),%eax
 cca:	84 c0                	test   %al,%al
 ccc:	74 0b                	je     cd9 <_Z12do_somethingPv+0x59>
 cce:	66 90                	xchg   %ax,%ax
 cd0:	f3 90                	pause  
 cd2:	0f b6 07             	movzbl (%rdi),%eax
 cd5:	84 c0                	test   %al,%al
 cd7:	75 f7                	jne    cd0 <_Z12do_somethingPv+0x50>
 cd9:	48 8b 57 08          	mov    0x8(%rdi),%rdx
 cdd:	83 05 5c 13 20 00 01 	addl   $0x1,0x20135c(%rip)        # 202040 <val>
 ce4:	48 85 d2             	test   %rdx,%rdx
 ce7:	74 17                	je     d00 <_Z12do_somethingPv+0x80>
 ce9:	c6 02 00             	movb   $0x0,(%rdx)
 cec:	83 e9 01             	sub    $0x1,%ecx
 cef:	75 af                	jne    ca0 <_Z12do_somethingPv+0x20>
 cf1:	0f ae f0             	mfence 
 cf4:	e8 27 fc ff ff       	callq  920 <free@plt>
 cf9:	31 c0                	xor    %eax,%eax
 cfb:	48 83 c4 08          	add    $0x8,%rsp
 cff:	c3                   	retq   
 d00:	48 8b 35 41 13 20 00 	mov    0x201341(%rip),%rsi        # 202048 <the_lock>
 d07:	48 89 f8             	mov    %rdi,%rax
 d0a:	f0 48 0f b1 16       	lock cmpxchg %rdx,(%rsi)
 d0f:	48 39 c7             	cmp    %rax,%rdi
 d12:	74 d8                	je     cec <_Z12do_somethingPv+0x6c>
 d14:	0f 1f 40 00          	nopl   0x0(%rax)
 d18:	48 8b 57 08          	mov    0x8(%rdi),%rdx
 d1c:	f3 90                	pause  
 d1e:	48 85 d2             	test   %rdx,%rdx
 d21:	74 f5                	je     d18 <_Z12do_somethingPv+0x98>
 d23:	eb c4                	jmp    ce9 <_Z12do_somethingPv+0x69>
 d25:	90                   	nop
 d26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 d2d:	00 00 00 

0000000000000d30 <_Z11mcs_acquirePPV9mcs_qnodeS1_>:
 d30:	48 c7 46 08 00 00 00 	movq   $0x0,0x8(%rsi)
 d37:	00 
 d38:	48 89 f0             	mov    %rsi,%rax
 d3b:	0f ae f0             	mfence 
 d3e:	48 87 07             	xchg   %rax,(%rdi)
 d41:	48 85 c0             	test   %rax,%rax
 d44:	74 23                	je     d69 <_Z11mcs_acquirePPV9mcs_qnodeS1_+0x39>
 d46:	c6 06 01             	movb   $0x1,(%rsi)
 d49:	0f ae f0             	mfence 
 d4c:	48 89 70 08          	mov    %rsi,0x8(%rax)
 d50:	0f b6 06             	movzbl (%rsi),%eax
 d53:	84 c0                	test   %al,%al
 d55:	74 12                	je     d69 <_Z11mcs_acquirePPV9mcs_qnodeS1_+0x39>
 d57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 d5e:	00 00 
 d60:	f3 90                	pause  
 d62:	0f b6 06             	movzbl (%rsi),%eax
 d65:	84 c0                	test   %al,%al
 d67:	75 f7                	jne    d60 <_Z11mcs_acquirePPV9mcs_qnodeS1_+0x30>
 d69:	f3 c3                	repz retq 
 d6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000d70 <_Z11mcs_releasePPV9mcs_qnodeS1_>:
 d70:	48 8b 56 08          	mov    0x8(%rsi),%rdx
 d74:	48 85 d2             	test   %rdx,%rdx
 d77:	74 07                	je     d80 <_Z11mcs_releasePPV9mcs_qnodeS1_+0x10>
 d79:	c6 02 00             	movb   $0x0,(%rdx)
 d7c:	f3 c3                	repz retq 
 d7e:	66 90                	xchg   %ax,%ax
 d80:	48 89 f0             	mov    %rsi,%rax
 d83:	f0 48 0f b1 17       	lock cmpxchg %rdx,(%rdi)
 d88:	48 39 c6             	cmp    %rax,%rsi
 d8b:	74 ef                	je     d7c <_Z11mcs_releasePPV9mcs_qnodeS1_+0xc>
 d8d:	0f 1f 00             	nopl   (%rax)
 d90:	48 8b 56 08          	mov    0x8(%rsi),%rdx
 d94:	f3 90                	pause  
 d96:	48 85 d2             	test   %rdx,%rdx
 d99:	74 f5                	je     d90 <_Z11mcs_releasePPV9mcs_qnodeS1_+0x20>
 d9b:	eb dc                	jmp    d79 <_Z11mcs_releasePPV9mcs_qnodeS1_+0x9>
 d9d:	0f 1f 00             	nopl   (%rax)

0000000000000da0 <_Z11is_free_mcsPPV9mcs_qnode>:
 da0:	31 c0                	xor    %eax,%eax
 da2:	48 83 3f 00          	cmpq   $0x0,(%rdi)
 da6:	0f 94 c0             	sete   %al
 da9:	c3                   	retq   
 daa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000db0 <_Z15init_mcs_globalP17mcs_global_params>:
 db0:	53                   	push   %rbx
 db1:	48 89 fb             	mov    %rdi,%rbx
 db4:	bf 08 00 00 00       	mov    $0x8,%edi
 db9:	e8 82 fb ff ff       	callq  940 <malloc@plt>
 dbe:	48 89 03             	mov    %rax,(%rbx)
 dc1:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
 dc8:	31 c0                	xor    %eax,%eax
 dca:	0f ae f0             	mfence 
 dcd:	5b                   	pop    %rbx
 dce:	c3                   	retq   
 dcf:	90                   	nop

0000000000000dd0 <_Z14init_mcs_localjPP9mcs_qnode>:
 dd0:	53                   	push   %rbx
 dd1:	bf 10 00 00 00       	mov    $0x10,%edi
 dd6:	48 89 f3             	mov    %rsi,%rbx
 dd9:	e8 62 fb ff ff       	callq  940 <malloc@plt>
 dde:	48 89 03             	mov    %rax,(%rbx)
 de1:	31 c0                	xor    %eax,%eax
 de3:	0f ae f0             	mfence 
 de6:	5b                   	pop    %rbx
 de7:	c3                   	retq   
 de8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 def:	00 

0000000000000df0 <_Z13end_mcs_localP9mcs_qnode>:
 df0:	e9 2b fb ff ff       	jmpq   920 <free@plt>
 df5:	90                   	nop
 df6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 dfd:	00 00 00 

0000000000000e00 <_Z14end_mcs_global17mcs_global_params>:
 e00:	e9 1b fb ff ff       	jmpq   920 <free@plt>
 e05:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 e0c:	00 00 00 
 e0f:	90                   	nop

0000000000000e10 <__libc_csu_init>:
 e10:	41 57                	push   %r15
 e12:	41 56                	push   %r14
 e14:	49 89 d7             	mov    %rdx,%r15
 e17:	41 55                	push   %r13
 e19:	41 54                	push   %r12
 e1b:	4c 8d 25 0e 0f 20 00 	lea    0x200f0e(%rip),%r12        # 201d30 <__frame_dummy_init_array_entry>
 e22:	55                   	push   %rbp
 e23:	48 8d 2d 16 0f 20 00 	lea    0x200f16(%rip),%rbp        # 201d40 <__init_array_end>
 e2a:	53                   	push   %rbx
 e2b:	41 89 fd             	mov    %edi,%r13d
 e2e:	49 89 f6             	mov    %rsi,%r14
 e31:	4c 29 e5             	sub    %r12,%rbp
 e34:	48 83 ec 08          	sub    $0x8,%rsp
 e38:	48 c1 fd 03          	sar    $0x3,%rbp
 e3c:	e8 5f fa ff ff       	callq  8a0 <_init>
 e41:	48 85 ed             	test   %rbp,%rbp
 e44:	74 20                	je     e66 <__libc_csu_init+0x56>
 e46:	31 db                	xor    %ebx,%ebx
 e48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 e4f:	00 
 e50:	4c 89 fa             	mov    %r15,%rdx
 e53:	4c 89 f6             	mov    %r14,%rsi
 e56:	44 89 ef             	mov    %r13d,%edi
 e59:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 e5d:	48 83 c3 01          	add    $0x1,%rbx
 e61:	48 39 dd             	cmp    %rbx,%rbp
 e64:	75 ea                	jne    e50 <__libc_csu_init+0x40>
 e66:	48 83 c4 08          	add    $0x8,%rsp
 e6a:	5b                   	pop    %rbx
 e6b:	5d                   	pop    %rbp
 e6c:	41 5c                	pop    %r12
 e6e:	41 5d                	pop    %r13
 e70:	41 5e                	pop    %r14
 e72:	41 5f                	pop    %r15
 e74:	c3                   	retq   
 e75:	90                   	nop
 e76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 e7d:	00 00 00 

0000000000000e80 <__libc_csu_fini>:
 e80:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000e84 <_fini>:
 e84:	48 83 ec 08          	sub    $0x8,%rsp
 e88:	48 83 c4 08          	add    $0x8,%rsp
 e8c:	c3                   	retq   
