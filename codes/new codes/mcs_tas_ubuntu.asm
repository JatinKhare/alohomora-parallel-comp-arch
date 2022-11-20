
mcs_tas_ubuntu.o:     file format elf64-x86-64


Disassembly of section .init:

00000000000009a8 <_init>:
 9a8:	48 83 ec 08          	sub    $0x8,%rsp
 9ac:	48 8b 05 35 16 20 00 	mov    0x201635(%rip),%rax        # 201fe8 <__gmon_start__>
 9b3:	48 85 c0             	test   %rax,%rax
 9b6:	74 02                	je     9ba <_init+0x12>
 9b8:	ff d0                	callq  *%rax
 9ba:	48 83 c4 08          	add    $0x8,%rsp
 9be:	c3                   	retq   

Disassembly of section .plt:

00000000000009c0 <.plt>:
 9c0:	ff 35 92 15 20 00    	pushq  0x201592(%rip)        # 201f58 <_GLOBAL_OFFSET_TABLE_+0x8>
 9c6:	ff 25 94 15 20 00    	jmpq   *0x201594(%rip)        # 201f60 <_GLOBAL_OFFSET_TABLE_+0x10>
 9cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000009d0 <pthread_join@plt>:
 9d0:	ff 25 92 15 20 00    	jmpq   *0x201592(%rip)        # 201f68 <pthread_join@GLIBC_2.2.5>
 9d6:	68 00 00 00 00       	pushq  $0x0
 9db:	e9 e0 ff ff ff       	jmpq   9c0 <.plt>

00000000000009e0 <pthread_create@plt>:
 9e0:	ff 25 8a 15 20 00    	jmpq   *0x20158a(%rip)        # 201f70 <pthread_create@GLIBC_2.2.5>
 9e6:	68 01 00 00 00       	pushq  $0x1
 9eb:	e9 d0 ff ff ff       	jmpq   9c0 <.plt>

00000000000009f0 <_ZNSo9_M_insertIPKvEERSoT_@plt>:
 9f0:	ff 25 82 15 20 00    	jmpq   *0x201582(%rip)        # 201f78 <_ZNSo9_M_insertIPKvEERSoT_@GLIBCXX_3.4.9>
 9f6:	68 02 00 00 00       	pushq  $0x2
 9fb:	e9 c0 ff ff ff       	jmpq   9c0 <.plt>

0000000000000a00 <__cxa_atexit@plt>:
 a00:	ff 25 7a 15 20 00    	jmpq   *0x20157a(%rip)        # 201f80 <__cxa_atexit@GLIBC_2.2.5>
 a06:	68 03 00 00 00       	pushq  $0x3
 a0b:	e9 b0 ff ff ff       	jmpq   9c0 <.plt>

0000000000000a10 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
 a10:	ff 25 72 15 20 00    	jmpq   *0x201572(%rip)        # 201f88 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
 a16:	68 04 00 00 00       	pushq  $0x4
 a1b:	e9 a0 ff ff ff       	jmpq   9c0 <.plt>

0000000000000a20 <_Znwm@plt>:
 a20:	ff 25 6a 15 20 00    	jmpq   *0x20156a(%rip)        # 201f90 <_Znwm@GLIBCXX_3.4>
 a26:	68 05 00 00 00       	pushq  $0x5
 a2b:	e9 90 ff ff ff       	jmpq   9c0 <.plt>

0000000000000a30 <__stack_chk_fail@plt>:
 a30:	ff 25 62 15 20 00    	jmpq   *0x201562(%rip)        # 201f98 <__stack_chk_fail@GLIBC_2.4>
 a36:	68 06 00 00 00       	pushq  $0x6
 a3b:	e9 80 ff ff ff       	jmpq   9c0 <.plt>

0000000000000a40 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
 a40:	ff 25 5a 15 20 00    	jmpq   *0x20155a(%rip)        # 201fa0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
 a46:	68 07 00 00 00       	pushq  $0x7
 a4b:	e9 70 ff ff ff       	jmpq   9c0 <.plt>

0000000000000a50 <free@plt>:
 a50:	ff 25 52 15 20 00    	jmpq   *0x201552(%rip)        # 201fa8 <free@GLIBC_2.2.5>
 a56:	68 08 00 00 00       	pushq  $0x8
 a5b:	e9 60 ff ff ff       	jmpq   9c0 <.plt>

0000000000000a60 <pthread_mutex_init@plt>:
 a60:	ff 25 4a 15 20 00    	jmpq   *0x20154a(%rip)        # 201fb0 <pthread_mutex_init@GLIBC_2.2.5>
 a66:	68 09 00 00 00       	pushq  $0x9
 a6b:	e9 50 ff ff ff       	jmpq   9c0 <.plt>

0000000000000a70 <_ZNSt8ios_base4InitC1Ev@plt>:
 a70:	ff 25 42 15 20 00    	jmpq   *0x201542(%rip)        # 201fb8 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
 a76:	68 0a 00 00 00       	pushq  $0xa
 a7b:	e9 40 ff ff ff       	jmpq   9c0 <.plt>

0000000000000a80 <puts@plt>:
 a80:	ff 25 3a 15 20 00    	jmpq   *0x20153a(%rip)        # 201fc0 <puts@GLIBC_2.2.5>
 a86:	68 0b 00 00 00       	pushq  $0xb
 a8b:	e9 30 ff ff ff       	jmpq   9c0 <.plt>

0000000000000a90 <_ZNSolsEi@plt>:
 a90:	ff 25 32 15 20 00    	jmpq   *0x201532(%rip)        # 201fc8 <_ZNSolsEi@GLIBCXX_3.4>
 a96:	68 0c 00 00 00       	pushq  $0xc
 a9b:	e9 20 ff ff ff       	jmpq   9c0 <.plt>

Disassembly of section .plt.got:

0000000000000aa0 <__cxa_finalize@plt>:
 aa0:	ff 25 2a 15 20 00    	jmpq   *0x20152a(%rip)        # 201fd0 <__cxa_finalize@GLIBC_2.2.5>
 aa6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000ab0 <main>:
 ab0:	55                   	push   %rbp
 ab1:	48 8d 3d 48 17 20 00 	lea    0x201748(%rip),%rdi        # 202200 <mutex_lock1>
 ab8:	31 f6                	xor    %esi,%esi
 aba:	48 89 e5             	mov    %rsp,%rbp
 abd:	41 56                	push   %r14
 abf:	53                   	push   %rbx
 ac0:	48 83 ec 20          	sub    $0x20,%rsp
 ac4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 acb:	00 00 
 acd:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 ad1:	31 c0                	xor    %eax,%eax
 ad3:	e8 88 ff ff ff       	callq  a60 <pthread_mutex_init@plt>
 ad8:	85 c0                	test   %eax,%eax
 ada:	49 89 e6             	mov    %rsp,%r14
 add:	75 12                	jne    af1 <main+0x41>
 adf:	48 8d 3d da 16 20 00 	lea    0x2016da(%rip),%rdi        # 2021c0 <mutex_lock2>
 ae6:	31 f6                	xor    %esi,%esi
 ae8:	e8 73 ff ff ff       	callq  a60 <pthread_mutex_init@plt>
 aed:	85 c0                	test   %eax,%eax
 aef:	74 32                	je     b23 <main+0x73>
 af1:	48 8d 3d 16 05 00 00 	lea    0x516(%rip),%rdi        # 100e <_IO_stdin_used+0xe>
 af8:	bb 01 00 00 00       	mov    $0x1,%ebx
 afd:	e8 7e ff ff ff       	callq  a80 <puts@plt>
 b02:	4c 89 f4             	mov    %r14,%rsp
 b05:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
 b09:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 b10:	00 00 
 b12:	89 d8                	mov    %ebx,%eax
 b14:	0f 85 aa 00 00 00    	jne    bc4 <main+0x114>
 b1a:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
 b1e:	5b                   	pop    %rbx
 b1f:	41 5e                	pop    %r14
 b21:	5d                   	pop    %rbp
 b22:	c3                   	retq   
 b23:	48 8d 3d 56 16 20 00 	lea    0x201656(%rip),%rdi        # 202180 <mutex_lock3>
 b2a:	31 f6                	xor    %esi,%esi
 b2c:	e8 2f ff ff ff       	callq  a60 <pthread_mutex_init@plt>
 b31:	85 c0                	test   %eax,%eax
 b33:	89 c3                	mov    %eax,%ebx
 b35:	75 ba                	jne    af1 <main+0x41>
 b37:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
 b3b:	48 8d 15 fe 01 00 00 	lea    0x1fe(%rip),%rdx        # d40 <_Z12lock_examplePv>
 b42:	31 c9                	xor    %ecx,%ecx
 b44:	31 f6                	xor    %esi,%esi
 b46:	48 c7 05 f7 15 20 00 	movq   $0x0,0x2015f7(%rip)        # 202148 <L>
 b4d:	00 00 00 00 
 b51:	49 89 c6             	mov    %rax,%r14
 b54:	48 89 c7             	mov    %rax,%rdi
 b57:	e8 84 fe ff ff       	callq  9e0 <pthread_create@plt>
 b5c:	48 8d 15 dd 01 00 00 	lea    0x1dd(%rip),%rdx        # d40 <_Z12lock_examplePv>
 b63:	49 8d 7e 08          	lea    0x8(%r14),%rdi
 b67:	31 c9                	xor    %ecx,%ecx
 b69:	31 f6                	xor    %esi,%esi
 b6b:	e8 70 fe ff ff       	callq  9e0 <pthread_create@plt>
 b70:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
 b74:	31 f6                	xor    %esi,%esi
 b76:	e8 55 fe ff ff       	callq  9d0 <pthread_join@plt>
 b7b:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
 b7f:	31 f6                	xor    %esi,%esi
 b81:	e8 4a fe ff ff       	callq  9d0 <pthread_join@plt>
 b86:	48 8d 35 99 04 00 00 	lea    0x499(%rip),%rsi        # 1026 <_IO_stdin_used+0x26>
 b8d:	48 8d 3d 8c 14 20 00 	lea    0x20148c(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
 b94:	ba 0a 00 00 00       	mov    $0xa,%edx
 b99:	e8 a2 fe ff ff       	callq  a40 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
 b9e:	8b 35 ac 15 20 00    	mov    0x2015ac(%rip),%esi        # 202150 <val>
 ba4:	48 8d 3d 75 14 20 00 	lea    0x201475(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
 bab:	e8 e0 fe ff ff       	callq  a90 <_ZNSolsEi@plt>
 bb0:	48 8d 35 55 04 00 00 	lea    0x455(%rip),%rsi        # 100c <_IO_stdin_used+0xc>
 bb7:	48 89 c7             	mov    %rax,%rdi
 bba:	e8 51 fe ff ff       	callq  a10 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
 bbf:	e9 41 ff ff ff       	jmpq   b05 <main+0x55>
 bc4:	e8 67 fe ff ff       	callq  a30 <__stack_chk_fail@plt>
 bc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000bd0 <_GLOBAL__sub_I_mutex_lock1>:
 bd0:	48 8d 3d 51 16 20 00 	lea    0x201651(%rip),%rdi        # 202228 <_ZStL8__ioinit>
 bd7:	48 83 ec 08          	sub    $0x8,%rsp
 bdb:	e8 90 fe ff ff       	callq  a70 <_ZNSt8ios_base4InitC1Ev@plt>
 be0:	48 8b 3d 11 14 20 00 	mov    0x201411(%rip),%rdi        # 201ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
 be7:	48 8d 15 1a 14 20 00 	lea    0x20141a(%rip),%rdx        # 202008 <__dso_handle>
 bee:	48 8d 35 33 16 20 00 	lea    0x201633(%rip),%rsi        # 202228 <_ZStL8__ioinit>
 bf5:	e8 06 fe ff ff       	callq  a00 <__cxa_atexit@plt>
 bfa:	bf 10 00 00 00       	mov    $0x10,%edi
 bff:	e8 1c fe ff ff       	callq  a20 <_Znwm@plt>
 c04:	bf 10 00 00 00       	mov    $0x10,%edi
 c09:	48 89 05 38 15 20 00 	mov    %rax,0x201538(%rip)        # 202148 <L>
 c10:	e8 0b fe ff ff       	callq  a20 <_Znwm@plt>
 c15:	48 89 05 24 15 20 00 	mov    %rax,0x201524(%rip)        # 202140 <predecessor>
 c1c:	48 83 c4 08          	add    $0x8,%rsp
 c20:	c3                   	retq   
 c21:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c28:	00 00 00 
 c2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000c30 <_start>:
 c30:	31 ed                	xor    %ebp,%ebp
 c32:	49 89 d1             	mov    %rdx,%r9
 c35:	5e                   	pop    %rsi
 c36:	48 89 e2             	mov    %rsp,%rdx
 c39:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 c3d:	50                   	push   %rax
 c3e:	54                   	push   %rsp
 c3f:	4c 8d 05 aa 03 00 00 	lea    0x3aa(%rip),%r8        # ff0 <__libc_csu_fini>
 c46:	48 8d 0d 33 03 00 00 	lea    0x333(%rip),%rcx        # f80 <__libc_csu_init>
 c4d:	48 8d 3d 5c fe ff ff 	lea    -0x1a4(%rip),%rdi        # ab0 <main>
 c54:	ff 15 86 13 20 00    	callq  *0x201386(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 c5a:	f4                   	hlt    
 c5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000c60 <deregister_tm_clones>:
 c60:	48 8d 3d a9 13 20 00 	lea    0x2013a9(%rip),%rdi        # 202010 <__TMC_END__>
 c67:	55                   	push   %rbp
 c68:	48 8d 05 a1 13 20 00 	lea    0x2013a1(%rip),%rax        # 202010 <__TMC_END__>
 c6f:	48 39 f8             	cmp    %rdi,%rax
 c72:	48 89 e5             	mov    %rsp,%rbp
 c75:	74 19                	je     c90 <deregister_tm_clones+0x30>
 c77:	48 8b 05 5a 13 20 00 	mov    0x20135a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 c7e:	48 85 c0             	test   %rax,%rax
 c81:	74 0d                	je     c90 <deregister_tm_clones+0x30>
 c83:	5d                   	pop    %rbp
 c84:	ff e0                	jmpq   *%rax
 c86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c8d:	00 00 00 
 c90:	5d                   	pop    %rbp
 c91:	c3                   	retq   
 c92:	0f 1f 40 00          	nopl   0x0(%rax)
 c96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c9d:	00 00 00 

0000000000000ca0 <register_tm_clones>:
 ca0:	48 8d 3d 69 13 20 00 	lea    0x201369(%rip),%rdi        # 202010 <__TMC_END__>
 ca7:	48 8d 35 62 13 20 00 	lea    0x201362(%rip),%rsi        # 202010 <__TMC_END__>
 cae:	55                   	push   %rbp
 caf:	48 29 fe             	sub    %rdi,%rsi
 cb2:	48 89 e5             	mov    %rsp,%rbp
 cb5:	48 c1 fe 03          	sar    $0x3,%rsi
 cb9:	48 89 f0             	mov    %rsi,%rax
 cbc:	48 c1 e8 3f          	shr    $0x3f,%rax
 cc0:	48 01 c6             	add    %rax,%rsi
 cc3:	48 d1 fe             	sar    %rsi
 cc6:	74 18                	je     ce0 <register_tm_clones+0x40>
 cc8:	48 8b 05 21 13 20 00 	mov    0x201321(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 ccf:	48 85 c0             	test   %rax,%rax
 cd2:	74 0c                	je     ce0 <register_tm_clones+0x40>
 cd4:	5d                   	pop    %rbp
 cd5:	ff e0                	jmpq   *%rax
 cd7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 cde:	00 00 
 ce0:	5d                   	pop    %rbp
 ce1:	c3                   	retq   
 ce2:	0f 1f 40 00          	nopl   0x0(%rax)
 ce6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 ced:	00 00 00 

0000000000000cf0 <__do_global_dtors_aux>:
 cf0:	80 3d 39 14 20 00 00 	cmpb   $0x0,0x201439(%rip)        # 202130 <completed.7698>
 cf7:	75 2f                	jne    d28 <__do_global_dtors_aux+0x38>
 cf9:	48 83 3d cf 12 20 00 	cmpq   $0x0,0x2012cf(%rip)        # 201fd0 <__cxa_finalize@GLIBC_2.2.5>
 d00:	00 
 d01:	55                   	push   %rbp
 d02:	48 89 e5             	mov    %rsp,%rbp
 d05:	74 0c                	je     d13 <__do_global_dtors_aux+0x23>
 d07:	48 8b 3d fa 12 20 00 	mov    0x2012fa(%rip),%rdi        # 202008 <__dso_handle>
 d0e:	e8 8d fd ff ff       	callq  aa0 <__cxa_finalize@plt>
 d13:	e8 48 ff ff ff       	callq  c60 <deregister_tm_clones>
 d18:	c6 05 11 14 20 00 01 	movb   $0x1,0x201411(%rip)        # 202130 <completed.7698>
 d1f:	5d                   	pop    %rbp
 d20:	c3                   	retq   
 d21:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 d28:	f3 c3                	repz retq 
 d2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000d30 <frame_dummy>:
 d30:	55                   	push   %rbp
 d31:	48 89 e5             	mov    %rsp,%rbp
 d34:	5d                   	pop    %rbp
 d35:	e9 66 ff ff ff       	jmpq   ca0 <register_tm_clones>
 d3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000d40 <_Z12lock_examplePv>:
 d40:	55                   	push   %rbp
 d41:	53                   	push   %rbx
 d42:	bd 64 00 00 00       	mov    $0x64,%ebp
 d47:	bb 01 00 00 00       	mov    $0x1,%ebx
 d4c:	48 83 ec 08          	sub    $0x8,%rsp
 d50:	bf 10 00 00 00       	mov    $0x10,%edi
 d55:	e8 c6 fc ff ff       	callq  a20 <_Znwm@plt>
 d5a:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
 d61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 d68:	89 da                	mov    %ebx,%edx
 d6a:	86 15 f8 13 20 00    	xchg   %dl,0x2013f8(%rip)        # 202168 <lock_flag1>
 d70:	84 d2                	test   %dl,%dl
 d72:	75 f4                	jne    d68 <_Z12lock_examplePv+0x28>
 d74:	48 8b 0d cd 13 20 00 	mov    0x2013cd(%rip),%rcx        # 202148 <L>
 d7b:	48 89 05 c6 13 20 00 	mov    %rax,0x2013c6(%rip)        # 202148 <L>
 d82:	48 89 0d b7 13 20 00 	mov    %rcx,0x2013b7(%rip)        # 202140 <predecessor>
 d89:	86 15 d9 13 20 00    	xchg   %dl,0x2013d9(%rip)        # 202168 <lock_flag1>
 d8f:	48 8b 15 aa 13 20 00 	mov    0x2013aa(%rip),%rdx        # 202140 <predecessor>
 d96:	48 85 d2             	test   %rdx,%rdx
 d99:	74 15                	je     db0 <_Z12lock_examplePv+0x70>
 d9b:	c6 40 08 01          	movb   $0x1,0x8(%rax)
 d9f:	48 89 02             	mov    %rax,(%rdx)
 da2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 da8:	0f b6 50 08          	movzbl 0x8(%rax),%edx
 dac:	84 d2                	test   %dl,%dl
 dae:	75 f8                	jne    da8 <_Z12lock_examplePv+0x68>
 db0:	83 05 99 13 20 00 01 	addl   $0x1,0x201399(%rip)        # 202150 <val>
 db7:	48 8b 10             	mov    (%rax),%rdx
 dba:	48 85 d2             	test   %rdx,%rdx
 dbd:	74 21                	je     de0 <_Z12lock_examplePv+0xa0>
 dbf:	c6 42 08 00          	movb   $0x0,0x8(%rdx)
 dc3:	48 89 c7             	mov    %rax,%rdi
 dc6:	e8 85 fc ff ff       	callq  a50 <free@plt>
 dcb:	83 ed 01             	sub    $0x1,%ebp
 dce:	75 80                	jne    d50 <_Z12lock_examplePv+0x10>
 dd0:	48 83 c4 08          	add    $0x8,%rsp
 dd4:	31 c0                	xor    %eax,%eax
 dd6:	5b                   	pop    %rbx
 dd7:	5d                   	pop    %rbp
 dd8:	c3                   	retq   
 dd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 de0:	89 da                	mov    %ebx,%edx
 de2:	86 15 80 13 20 00    	xchg   %dl,0x201380(%rip)        # 202168 <lock_flag1>
 de8:	84 d2                	test   %dl,%dl
 dea:	75 f4                	jne    de0 <_Z12lock_examplePv+0xa0>
 dec:	48 3b 05 55 13 20 00 	cmp    0x201355(%rip),%rax        # 202148 <L>
 df3:	74 23                	je     e18 <_Z12lock_examplePv+0xd8>
 df5:	31 d2                	xor    %edx,%edx
 df7:	86 15 6b 13 20 00    	xchg   %dl,0x20136b(%rip)        # 202168 <lock_flag1>
 dfd:	48 83 3d 43 13 20 00 	cmpq   $0x0,0x201343(%rip)        # 202148 <L>
 e04:	00 
 e05:	74 bc                	je     dc3 <_Z12lock_examplePv+0x83>
 e07:	48 8b 10             	mov    (%rax),%rdx
 e0a:	48 85 d2             	test   %rdx,%rdx
 e0d:	75 b0                	jne    dbf <_Z12lock_examplePv+0x7f>
 e0f:	eb fe                	jmp    e0f <_Z12lock_examplePv+0xcf>
 e11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 e18:	48 c7 05 25 13 20 00 	movq   $0x0,0x201325(%rip)        # 202148 <L>
 e1f:	00 00 00 00 
 e23:	eb d0                	jmp    df5 <_Z12lock_examplePv+0xb5>
 e25:	90                   	nop
 e26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 e2d:	00 00 00 

0000000000000e30 <_Z8print_llP5qnode>:
 e30:	41 55                	push   %r13
 e32:	41 54                	push   %r12
 e34:	55                   	push   %rbp
 e35:	53                   	push   %rbx
 e36:	48 83 ec 08          	sub    $0x8,%rsp
 e3a:	48 85 ff             	test   %rdi,%rdi
 e3d:	74 5c                	je     e9b <_Z8print_llP5qnode+0x6b>
 e3f:	4c 8d 2d da 11 20 00 	lea    0x2011da(%rip),%r13        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
 e46:	48 89 fb             	mov    %rdi,%rbx
 e49:	31 ed                	xor    %ebp,%ebp
 e4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 e50:	48 89 de             	mov    %rbx,%rsi
 e53:	4c 89 ef             	mov    %r13,%rdi
 e56:	e8 95 fb ff ff       	callq  9f0 <_ZNSo9_M_insertIPKvEERSoT_@plt>
 e5b:	48 8d 35 a2 01 00 00 	lea    0x1a2(%rip),%rsi        # 1004 <_IO_stdin_used+0x4>
 e62:	ba 01 00 00 00       	mov    $0x1,%edx
 e67:	49 89 c4             	mov    %rax,%r12
 e6a:	48 89 c7             	mov    %rax,%rdi
 e6d:	e8 ce fb ff ff       	callq  a40 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
 e72:	89 ee                	mov    %ebp,%esi
 e74:	4c 89 e7             	mov    %r12,%rdi
 e77:	83 c5 01             	add    $0x1,%ebp
 e7a:	e8 11 fc ff ff       	callq  a90 <_ZNSolsEi@plt>
 e7f:	48 8d 35 80 01 00 00 	lea    0x180(%rip),%rsi        # 1006 <_IO_stdin_used+0x6>
 e86:	ba 05 00 00 00       	mov    $0x5,%edx
 e8b:	48 89 c7             	mov    %rax,%rdi
 e8e:	e8 ad fb ff ff       	callq  a40 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
 e93:	48 8b 1b             	mov    (%rbx),%rbx
 e96:	48 85 db             	test   %rbx,%rbx
 e99:	75 b5                	jne    e50 <_Z8print_llP5qnode+0x20>
 e9b:	48 83 c4 08          	add    $0x8,%rsp
 e9f:	48 8d 35 66 01 00 00 	lea    0x166(%rip),%rsi        # 100c <_IO_stdin_used+0xc>
 ea6:	48 8d 3d 73 11 20 00 	lea    0x201173(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
 ead:	5b                   	pop    %rbx
 eae:	5d                   	pop    %rbp
 eaf:	41 5c                	pop    %r12
 eb1:	41 5d                	pop    %r13
 eb3:	ba 01 00 00 00       	mov    $0x1,%edx
 eb8:	e9 83 fb ff ff       	jmpq   a40 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
 ebd:	0f 1f 00             	nopl   (%rax)

0000000000000ec0 <_Z7my_lockP5qnode>:
 ec0:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
 ec7:	ba 01 00 00 00       	mov    $0x1,%edx
 ecc:	0f 1f 40 00          	nopl   0x0(%rax)
 ed0:	89 d0                	mov    %edx,%eax
 ed2:	86 05 90 12 20 00    	xchg   %al,0x201290(%rip)        # 202168 <lock_flag1>
 ed8:	84 c0                	test   %al,%al
 eda:	75 f4                	jne    ed0 <_Z7my_lockP5qnode+0x10>
 edc:	48 8b 15 65 12 20 00 	mov    0x201265(%rip),%rdx        # 202148 <L>
 ee3:	48 89 3d 5e 12 20 00 	mov    %rdi,0x20125e(%rip)        # 202148 <L>
 eea:	48 89 15 4f 12 20 00 	mov    %rdx,0x20124f(%rip)        # 202140 <predecessor>
 ef1:	86 05 71 12 20 00    	xchg   %al,0x201271(%rip)        # 202168 <lock_flag1>
 ef7:	48 8b 05 42 12 20 00 	mov    0x201242(%rip),%rax        # 202140 <predecessor>
 efe:	48 85 c0             	test   %rax,%rax
 f01:	74 15                	je     f18 <_Z7my_lockP5qnode+0x58>
 f03:	c6 47 08 01          	movb   $0x1,0x8(%rdi)
 f07:	48 89 38             	mov    %rdi,(%rax)
 f0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 f10:	0f b6 47 08          	movzbl 0x8(%rdi),%eax
 f14:	84 c0                	test   %al,%al
 f16:	75 f8                	jne    f10 <_Z7my_lockP5qnode+0x50>
 f18:	f3 c3                	repz retq 
 f1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000f20 <_Z9my_unlockP5qnode>:
 f20:	48 8b 07             	mov    (%rdi),%rax
 f23:	48 85 c0             	test   %rax,%rax
 f26:	74 08                	je     f30 <_Z9my_unlockP5qnode+0x10>
 f28:	c6 40 08 00          	movb   $0x0,0x8(%rax)
 f2c:	f3 c3                	repz retq 
 f2e:	66 90                	xchg   %ax,%ax
 f30:	ba 01 00 00 00       	mov    $0x1,%edx
 f35:	0f 1f 00             	nopl   (%rax)
 f38:	89 d0                	mov    %edx,%eax
 f3a:	86 05 28 12 20 00    	xchg   %al,0x201228(%rip)        # 202168 <lock_flag1>
 f40:	84 c0                	test   %al,%al
 f42:	75 f4                	jne    f38 <_Z9my_unlockP5qnode+0x18>
 f44:	48 39 3d fd 11 20 00 	cmp    %rdi,0x2011fd(%rip)        # 202148 <L>
 f4b:	74 23                	je     f70 <_Z9my_unlockP5qnode+0x50>
 f4d:	31 c0                	xor    %eax,%eax
 f4f:	86 05 13 12 20 00    	xchg   %al,0x201213(%rip)        # 202168 <lock_flag1>
 f55:	48 83 3d eb 11 20 00 	cmpq   $0x0,0x2011eb(%rip)        # 202148 <L>
 f5c:	00 
 f5d:	74 cd                	je     f2c <_Z9my_unlockP5qnode+0xc>
 f5f:	48 8b 07             	mov    (%rdi),%rax
 f62:	48 85 c0             	test   %rax,%rax
 f65:	75 c1                	jne    f28 <_Z9my_unlockP5qnode+0x8>
 f67:	eb fe                	jmp    f67 <_Z9my_unlockP5qnode+0x47>
 f69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 f70:	48 c7 05 cd 11 20 00 	movq   $0x0,0x2011cd(%rip)        # 202148 <L>
 f77:	00 00 00 00 
 f7b:	eb d0                	jmp    f4d <_Z9my_unlockP5qnode+0x2d>
 f7d:	0f 1f 00             	nopl   (%rax)

0000000000000f80 <__libc_csu_init>:
 f80:	41 57                	push   %r15
 f82:	41 56                	push   %r14
 f84:	49 89 d7             	mov    %rdx,%r15
 f87:	41 55                	push   %r13
 f89:	41 54                	push   %r12
 f8b:	4c 8d 25 96 0d 20 00 	lea    0x200d96(%rip),%r12        # 201d28 <__frame_dummy_init_array_entry>
 f92:	55                   	push   %rbp
 f93:	48 8d 2d 9e 0d 20 00 	lea    0x200d9e(%rip),%rbp        # 201d38 <__init_array_end>
 f9a:	53                   	push   %rbx
 f9b:	41 89 fd             	mov    %edi,%r13d
 f9e:	49 89 f6             	mov    %rsi,%r14
 fa1:	4c 29 e5             	sub    %r12,%rbp
 fa4:	48 83 ec 08          	sub    $0x8,%rsp
 fa8:	48 c1 fd 03          	sar    $0x3,%rbp
 fac:	e8 f7 f9 ff ff       	callq  9a8 <_init>
 fb1:	48 85 ed             	test   %rbp,%rbp
 fb4:	74 20                	je     fd6 <__libc_csu_init+0x56>
 fb6:	31 db                	xor    %ebx,%ebx
 fb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 fbf:	00 
 fc0:	4c 89 fa             	mov    %r15,%rdx
 fc3:	4c 89 f6             	mov    %r14,%rsi
 fc6:	44 89 ef             	mov    %r13d,%edi
 fc9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 fcd:	48 83 c3 01          	add    $0x1,%rbx
 fd1:	48 39 dd             	cmp    %rbx,%rbp
 fd4:	75 ea                	jne    fc0 <__libc_csu_init+0x40>
 fd6:	48 83 c4 08          	add    $0x8,%rsp
 fda:	5b                   	pop    %rbx
 fdb:	5d                   	pop    %rbp
 fdc:	41 5c                	pop    %r12
 fde:	41 5d                	pop    %r13
 fe0:	41 5e                	pop    %r14
 fe2:	41 5f                	pop    %r15
 fe4:	c3                   	retq   
 fe5:	90                   	nop
 fe6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 fed:	00 00 00 

0000000000000ff0 <__libc_csu_fini>:
 ff0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000ff4 <_fini>:
 ff4:	48 83 ec 08          	sub    $0x8,%rsp
 ff8:	48 83 c4 08          	add    $0x8,%rsp
 ffc:	c3                   	retq   
