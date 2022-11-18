
mcs_lock_working_ubuntu.o:     file format elf64-x86-64


Disassembly of section .init:

00000000000009e8 <_init>:
 9e8:	48 83 ec 08          	sub    $0x8,%rsp
 9ec:	48 8b 05 f5 15 20 00 	mov    0x2015f5(%rip),%rax        # 201fe8 <__gmon_start__>
 9f3:	48 85 c0             	test   %rax,%rax
 9f6:	74 02                	je     9fa <_init+0x12>
 9f8:	ff d0                	callq  *%rax
 9fa:	48 83 c4 08          	add    $0x8,%rsp
 9fe:	c3                   	retq   

Disassembly of section .plt:

0000000000000a00 <.plt>:
 a00:	ff 35 42 15 20 00    	pushq  0x201542(%rip)        # 201f48 <_GLOBAL_OFFSET_TABLE_+0x8>
 a06:	ff 25 44 15 20 00    	jmpq   *0x201544(%rip)        # 201f50 <_GLOBAL_OFFSET_TABLE_+0x10>
 a0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000a10 <_ZNSolsEm@plt>:
 a10:	ff 25 42 15 20 00    	jmpq   *0x201542(%rip)        # 201f58 <_ZNSolsEm@GLIBCXX_3.4>
 a16:	68 00 00 00 00       	pushq  $0x0
 a1b:	e9 e0 ff ff ff       	jmpq   a00 <.plt>

0000000000000a20 <pthread_join@plt>:
 a20:	ff 25 3a 15 20 00    	jmpq   *0x20153a(%rip)        # 201f60 <pthread_join@GLIBC_2.2.5>
 a26:	68 01 00 00 00       	pushq  $0x1
 a2b:	e9 d0 ff ff ff       	jmpq   a00 <.plt>

0000000000000a30 <pthread_create@plt>:
 a30:	ff 25 32 15 20 00    	jmpq   *0x201532(%rip)        # 201f68 <pthread_create@GLIBC_2.2.5>
 a36:	68 02 00 00 00       	pushq  $0x2
 a3b:	e9 c0 ff ff ff       	jmpq   a00 <.plt>

0000000000000a40 <pthread_mutex_unlock@plt>:
 a40:	ff 25 2a 15 20 00    	jmpq   *0x20152a(%rip)        # 201f70 <pthread_mutex_unlock@GLIBC_2.2.5>
 a46:	68 03 00 00 00       	pushq  $0x3
 a4b:	e9 b0 ff ff ff       	jmpq   a00 <.plt>

0000000000000a50 <_ZNSolsEPKv@plt>:
 a50:	ff 25 22 15 20 00    	jmpq   *0x201522(%rip)        # 201f78 <_ZNSolsEPKv@GLIBCXX_3.4>
 a56:	68 04 00 00 00       	pushq  $0x4
 a5b:	e9 a0 ff ff ff       	jmpq   a00 <.plt>

0000000000000a60 <__cxa_atexit@plt>:
 a60:	ff 25 1a 15 20 00    	jmpq   *0x20151a(%rip)        # 201f80 <__cxa_atexit@GLIBC_2.2.5>
 a66:	68 05 00 00 00       	pushq  $0x5
 a6b:	e9 90 ff ff ff       	jmpq   a00 <.plt>

0000000000000a70 <pthread_self@plt>:
 a70:	ff 25 12 15 20 00    	jmpq   *0x201512(%rip)        # 201f88 <pthread_self@GLIBC_2.2.5>
 a76:	68 06 00 00 00       	pushq  $0x6
 a7b:	e9 80 ff ff ff       	jmpq   a00 <.plt>

0000000000000a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
 a80:	ff 25 0a 15 20 00    	jmpq   *0x20150a(%rip)        # 201f90 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
 a86:	68 07 00 00 00       	pushq  $0x7
 a8b:	e9 70 ff ff ff       	jmpq   a00 <.plt>

0000000000000a90 <_Znwm@plt>:
 a90:	ff 25 02 15 20 00    	jmpq   *0x201502(%rip)        # 201f98 <_Znwm@GLIBCXX_3.4>
 a96:	68 08 00 00 00       	pushq  $0x8
 a9b:	e9 60 ff ff ff       	jmpq   a00 <.plt>

0000000000000aa0 <__stack_chk_fail@plt>:
 aa0:	ff 25 fa 14 20 00    	jmpq   *0x2014fa(%rip)        # 201fa0 <__stack_chk_fail@GLIBC_2.4>
 aa6:	68 09 00 00 00       	pushq  $0x9
 aab:	e9 50 ff ff ff       	jmpq   a00 <.plt>

0000000000000ab0 <free@plt>:
 ab0:	ff 25 f2 14 20 00    	jmpq   *0x2014f2(%rip)        # 201fa8 <free@GLIBC_2.2.5>
 ab6:	68 0a 00 00 00       	pushq  $0xa
 abb:	e9 40 ff ff ff       	jmpq   a00 <.plt>

0000000000000ac0 <pthread_mutex_lock@plt>:
 ac0:	ff 25 ea 14 20 00    	jmpq   *0x2014ea(%rip)        # 201fb0 <pthread_mutex_lock@GLIBC_2.2.5>
 ac6:	68 0b 00 00 00       	pushq  $0xb
 acb:	e9 30 ff ff ff       	jmpq   a00 <.plt>

0000000000000ad0 <_ZNSt8ios_base4InitC1Ev@plt>:
 ad0:	ff 25 e2 14 20 00    	jmpq   *0x2014e2(%rip)        # 201fb8 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
 ad6:	68 0c 00 00 00       	pushq  $0xc
 adb:	e9 20 ff ff ff       	jmpq   a00 <.plt>

0000000000000ae0 <_ZNSolsEi@plt>:
 ae0:	ff 25 da 14 20 00    	jmpq   *0x2014da(%rip)        # 201fc0 <_ZNSolsEi@GLIBCXX_3.4>
 ae6:	68 0d 00 00 00       	pushq  $0xd
 aeb:	e9 10 ff ff ff       	jmpq   a00 <.plt>

Disassembly of section .plt.got:

0000000000000af0 <__cxa_finalize@plt>:
 af0:	ff 25 d2 14 20 00    	jmpq   *0x2014d2(%rip)        # 201fc8 <__cxa_finalize@GLIBC_2.2.5>
 af6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000b00 <_start>:
     b00:	31 ed                	xor    %ebp,%ebp
     b02:	49 89 d1             	mov    %rdx,%r9
     b05:	5e                   	pop    %rsi
     b06:	48 89 e2             	mov    %rsp,%rdx
     b09:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
     b0d:	50                   	push   %rax
     b0e:	54                   	push   %rsp
     b0f:	4c 8d 05 6a 08 00 00 	lea    0x86a(%rip),%r8        # 1380 <__libc_csu_fini>
     b16:	48 8d 0d f3 07 00 00 	lea    0x7f3(%rip),%rcx        # 1310 <__libc_csu_init>
     b1d:	48 8d 3d af 03 00 00 	lea    0x3af(%rip),%rdi        # ed3 <main>
     b24:	ff 15 b6 14 20 00    	callq  *0x2014b6(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
     b2a:	f4                   	hlt    
     b2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000b30 <deregister_tm_clones>:
     b30:	48 8d 3d d9 14 20 00 	lea    0x2014d9(%rip),%rdi        # 202010 <__TMC_END__>
     b37:	55                   	push   %rbp
     b38:	48 8d 05 d1 14 20 00 	lea    0x2014d1(%rip),%rax        # 202010 <__TMC_END__>
     b3f:	48 39 f8             	cmp    %rdi,%rax
     b42:	48 89 e5             	mov    %rsp,%rbp
     b45:	74 19                	je     b60 <deregister_tm_clones+0x30>
     b47:	48 8b 05 8a 14 20 00 	mov    0x20148a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
     b4e:	48 85 c0             	test   %rax,%rax
     b51:	74 0d                	je     b60 <deregister_tm_clones+0x30>
     b53:	5d                   	pop    %rbp
     b54:	ff e0                	jmpq   *%rax
     b56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     b5d:	00 00 00 
     b60:	5d                   	pop    %rbp
     b61:	c3                   	retq   
     b62:	0f 1f 40 00          	nopl   0x0(%rax)
     b66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     b6d:	00 00 00 

0000000000000b70 <register_tm_clones>:
     b70:	48 8d 3d 99 14 20 00 	lea    0x201499(%rip),%rdi        # 202010 <__TMC_END__>
     b77:	48 8d 35 92 14 20 00 	lea    0x201492(%rip),%rsi        # 202010 <__TMC_END__>
     b7e:	55                   	push   %rbp
     b7f:	48 29 fe             	sub    %rdi,%rsi
     b82:	48 89 e5             	mov    %rsp,%rbp
     b85:	48 c1 fe 03          	sar    $0x3,%rsi
     b89:	48 89 f0             	mov    %rsi,%rax
     b8c:	48 c1 e8 3f          	shr    $0x3f,%rax
     b90:	48 01 c6             	add    %rax,%rsi
     b93:	48 d1 fe             	sar    %rsi
     b96:	74 18                	je     bb0 <register_tm_clones+0x40>
     b98:	48 8b 05 51 14 20 00 	mov    0x201451(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
     b9f:	48 85 c0             	test   %rax,%rax
     ba2:	74 0c                	je     bb0 <register_tm_clones+0x40>
     ba4:	5d                   	pop    %rbp
     ba5:	ff e0                	jmpq   *%rax
     ba7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     bae:	00 00 
     bb0:	5d                   	pop    %rbp
     bb1:	c3                   	retq   
     bb2:	0f 1f 40 00          	nopl   0x0(%rax)
     bb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     bbd:	00 00 00 

0000000000000bc0 <__do_global_dtors_aux>:
     bc0:	80 3d 69 15 20 00 00 	cmpb   $0x0,0x201569(%rip)        # 202130 <completed.7698>
     bc7:	75 2f                	jne    bf8 <__do_global_dtors_aux+0x38>
     bc9:	48 83 3d f7 13 20 00 	cmpq   $0x0,0x2013f7(%rip)        # 201fc8 <__cxa_finalize@GLIBC_2.2.5>
     bd0:	00 
     bd1:	55                   	push   %rbp
     bd2:	48 89 e5             	mov    %rsp,%rbp
     bd5:	74 0c                	je     be3 <__do_global_dtors_aux+0x23>
     bd7:	48 8b 3d 2a 14 20 00 	mov    0x20142a(%rip),%rdi        # 202008 <__dso_handle>
     bde:	e8 0d ff ff ff       	callq  af0 <__cxa_finalize@plt>
     be3:	e8 48 ff ff ff       	callq  b30 <deregister_tm_clones>
     be8:	c6 05 41 15 20 00 01 	movb   $0x1,0x201541(%rip)        # 202130 <completed.7698>
     bef:	5d                   	pop    %rbp
     bf0:	c3                   	retq   
     bf1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     bf8:	f3 c3                	repz retq 
     bfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000c00 <frame_dummy>:
     c00:	55                   	push   %rbp
     c01:	48 89 e5             	mov    %rsp,%rbp
     c04:	5d                   	pop    %rbp
     c05:	e9 66 ff ff ff       	jmpq   b70 <register_tm_clones>

0000000000000c0a <_ZL18__gthread_active_pv>:
     c0a:	55                   	push   %rbp
     c0b:	48 89 e5             	mov    %rsp,%rbp
     c0e:	ba 01 00 00 00       	mov    $0x1,%edx
     c13:	48 8b 05 b6 13 20 00 	mov    0x2013b6(%rip),%rax        # 201fd0 <__pthread_key_create@GLIBC_2.2.5>
     c1a:	48 85 c0             	test   %rax,%rax
     c1d:	75 05                	jne    c24 <_ZL18__gthread_active_pv+0x1a>
     c1f:	ba 00 00 00 00       	mov    $0x0,%edx
     c24:	0f b6 c2             	movzbl %dl,%eax
     c27:	5d                   	pop    %rbp
     c28:	c3                   	retq   

0000000000000c29 <_ZL14__gthread_selfv>:
     c29:	55                   	push   %rbp
     c2a:	48 89 e5             	mov    %rsp,%rbp
     c2d:	e8 3e fe ff ff       	callq  a70 <pthread_self@plt>
     c32:	5d                   	pop    %rbp
     c33:	c3                   	retq   

0000000000000c34 <_Z8print_llP5qnode>:
     c34:	55                   	push   %rbp
     c35:	48 89 e5             	mov    %rsp,%rbp
     c38:	53                   	push   %rbx
     c39:	48 83 ec 28          	sub    $0x28,%rsp
     c3d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     c41:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
     c48:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
     c4d:	0f 84 89 00 00 00    	je     cdc <_Z8print_llP5qnode+0xa8>
     c53:	48 8d 35 48 07 00 00 	lea    0x748(%rip),%rsi        # 13a2 <_ZStL6ignore+0x1>
     c5a:	48 8d 3d bf 13 20 00 	lea    0x2013bf(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
     c61:	e8 1a fe ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     c66:	48 89 c3             	mov    %rax,%rbx
     c69:	e8 b4 04 00 00       	callq  1122 <_ZNSt11this_thread6get_idEv>
     c6e:	48 89 c6             	mov    %rax,%rsi
     c71:	48 89 df             	mov    %rbx,%rdi
     c74:	e8 16 05 00 00       	callq  118f <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE>
     c79:	48 8d 35 24 07 00 00 	lea    0x724(%rip),%rsi        # 13a4 <_ZStL6ignore+0x3>
     c80:	48 89 c7             	mov    %rax,%rdi
     c83:	e8 f8 fd ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     c88:	48 89 c2             	mov    %rax,%rdx
     c8b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     c8f:	48 89 c6             	mov    %rax,%rsi
     c92:	48 89 d7             	mov    %rdx,%rdi
     c95:	e8 b6 fd ff ff       	callq  a50 <_ZNSolsEPKv@plt>
     c9a:	48 8d 35 01 07 00 00 	lea    0x701(%rip),%rsi        # 13a2 <_ZStL6ignore+0x1>
     ca1:	48 89 c7             	mov    %rax,%rdi
     ca4:	e8 d7 fd ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     ca9:	48 89 c2             	mov    %rax,%rdx
     cac:	8b 45 ec             	mov    -0x14(%rbp),%eax
     caf:	89 c6                	mov    %eax,%esi
     cb1:	48 89 d7             	mov    %rdx,%rdi
     cb4:	e8 27 fe ff ff       	callq  ae0 <_ZNSolsEi@plt>
     cb9:	48 8d 35 e6 06 00 00 	lea    0x6e6(%rip),%rsi        # 13a6 <_ZStL6ignore+0x5>
     cc0:	48 89 c7             	mov    %rax,%rdi
     cc3:	e8 b8 fd ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     cc8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     ccc:	48 8b 00             	mov    (%rax),%rax
     ccf:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
     cd3:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
     cd7:	e9 6c ff ff ff       	jmpq   c48 <_Z8print_llP5qnode+0x14>
     cdc:	48 8d 35 c9 06 00 00 	lea    0x6c9(%rip),%rsi        # 13ac <_ZStL6ignore+0xb>
     ce3:	48 8d 3d 36 13 20 00 	lea    0x201336(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
     cea:	e8 91 fd ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     cef:	90                   	nop
     cf0:	48 83 c4 28          	add    $0x28,%rsp
     cf4:	5b                   	pop    %rbx
     cf5:	5d                   	pop    %rbp
     cf6:	c3                   	retq   

0000000000000cf7 <_Z4lockPSt6atomicIP5qnodeES1_>:
     cf7:	55                   	push   %rbp
     cf8:	48 89 e5             	mov    %rsp,%rbp
     cfb:	48 83 ec 20          	sub    $0x20,%rsp
     cff:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     d03:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
     d07:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     d0b:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
     d12:	bf 10 00 00 00       	mov    $0x10,%edi
     d17:	e8 74 fd ff ff       	callq  a90 <_Znwm@plt>
     d1c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     d20:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     d24:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     d28:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
     d2c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     d30:	ba 05 00 00 00       	mov    $0x5,%edx
     d35:	48 89 ce             	mov    %rcx,%rsi
     d38:	48 89 c7             	mov    %rax,%rdi
     d3b:	e8 d0 04 00 00       	callq  1210 <_ZNSt6atomicIP5qnodeE8exchangeES1_St12memory_order>
     d40:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     d44:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
     d49:	74 21                	je     d6c <_Z4lockPSt6atomicIP5qnodeES1_+0x75>
     d4b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     d4f:	c6 40 08 01          	movb   $0x1,0x8(%rax)
     d53:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     d57:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
     d5b:	48 89 10             	mov    %rdx,(%rax)
     d5e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     d62:	0f b6 40 08          	movzbl 0x8(%rax),%eax
     d66:	84 c0                	test   %al,%al
     d68:	74 02                	je     d6c <_Z4lockPSt6atomicIP5qnodeES1_+0x75>
     d6a:	eb f2                	jmp    d5e <_Z4lockPSt6atomicIP5qnodeES1_+0x67>
     d6c:	90                   	nop
     d6d:	c9                   	leaveq 
     d6e:	c3                   	retq   

0000000000000d6f <_Z6unlockPSt6atomicIP5qnodeES1_>:
     d6f:	55                   	push   %rbp
     d70:	48 89 e5             	mov    %rsp,%rbp
     d73:	48 83 ec 20          	sub    $0x20,%rsp
     d77:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     d7b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
     d7f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     d83:	48 8b 00             	mov    (%rax),%rax
     d86:	48 85 c0             	test   %rax,%rax
     d89:	74 10                	je     d9b <_Z6unlockPSt6atomicIP5qnodeES1_+0x2c>
     d8b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     d8f:	48 8b 00             	mov    (%rax),%rax
     d92:	c6 40 08 00          	movb   $0x0,0x8(%rax)
     d96:	e9 85 00 00 00       	jmpq   e20 <_Z6unlockPSt6atomicIP5qnodeES1_+0xb1>
     d9b:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
     da2:	00 
     da3:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
     da7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     dab:	ba 05 00 00 00       	mov    $0x5,%edx
     db0:	48 89 ce             	mov    %rcx,%rsi
     db3:	48 89 c7             	mov    %rax,%rdi
     db6:	e8 55 04 00 00       	callq  1210 <_ZNSt6atomicIP5qnodeE8exchangeES1_St12memory_order>
     dbb:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     dbf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     dc3:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
     dc7:	74 56                	je     e1f <_Z6unlockPSt6atomicIP5qnodeES1_+0xb0>
     dc9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     dcd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     dd1:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
     dd5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     dd9:	ba 05 00 00 00       	mov    $0x5,%edx
     dde:	48 89 ce             	mov    %rcx,%rsi
     de1:	48 89 c7             	mov    %rax,%rdi
     de4:	e8 27 04 00 00       	callq  1210 <_ZNSt6atomicIP5qnodeE8exchangeES1_St12memory_order>
     de9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     ded:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     df1:	48 8b 00             	mov    (%rax),%rax
     df4:	48 85 c0             	test   %rax,%rax
     df7:	75 02                	jne    dfb <_Z6unlockPSt6atomicIP5qnodeES1_+0x8c>
     df9:	eb f2                	jmp    ded <_Z6unlockPSt6atomicIP5qnodeES1_+0x7e>
     dfb:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
     e00:	74 10                	je     e12 <_Z6unlockPSt6atomicIP5qnodeES1_+0xa3>
     e02:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     e06:	48 8b 10             	mov    (%rax),%rdx
     e09:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     e0d:	48 89 10             	mov    %rdx,(%rax)
     e10:	eb 0e                	jmp    e20 <_Z6unlockPSt6atomicIP5qnodeES1_+0xb1>
     e12:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     e16:	48 8b 00             	mov    (%rax),%rax
     e19:	c6 40 08 00          	movb   $0x0,0x8(%rax)
     e1d:	eb 01                	jmp    e20 <_Z6unlockPSt6atomicIP5qnodeES1_+0xb1>
     e1f:	90                   	nop
     e20:	c9                   	leaveq 
     e21:	c3                   	retq   

0000000000000e22 <_Z12lock_examplePv>:
     e22:	55                   	push   %rbp
     e23:	48 89 e5             	mov    %rsp,%rbp
     e26:	48 83 ec 20          	sub    $0x20,%rsp
     e2a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     e2e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
     e35:	83 7d f4 13          	cmpl   $0x13,-0xc(%rbp)
     e39:	0f 8f 8d 00 00 00    	jg     ecc <_Z12lock_examplePv+0xaa>
     e3f:	bf 10 00 00 00       	mov    $0x10,%edi
     e44:	e8 47 fc ff ff       	callq  a90 <_Znwm@plt>
     e49:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     e4d:	48 8b 05 1c 13 20 00 	mov    0x20131c(%rip),%rax        # 202170 <L>
     e54:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
     e58:	48 89 d6             	mov    %rdx,%rsi
     e5b:	48 89 c7             	mov    %rax,%rdi
     e5e:	e8 94 fe ff ff       	callq  cf7 <_Z4lockPSt6atomicIP5qnodeES1_>
     e63:	8b 05 ff 12 20 00    	mov    0x2012ff(%rip),%eax        # 202168 <val>
     e69:	83 c0 01             	add    $0x1,%eax
     e6c:	89 05 f6 12 20 00    	mov    %eax,0x2012f6(%rip)        # 202168 <val>
     e72:	48 8b 05 f7 12 20 00 	mov    0x2012f7(%rip),%rax        # 202170 <L>
     e79:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
     e7d:	48 89 d6             	mov    %rdx,%rsi
     e80:	48 89 c7             	mov    %rax,%rdi
     e83:	e8 e7 fe ff ff       	callq  d6f <_Z6unlockPSt6atomicIP5qnodeES1_>
     e88:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     e8c:	48 89 c7             	mov    %rax,%rdi
     e8f:	e8 1c fc ff ff       	callq  ab0 <free@plt>
     e94:	48 8d 3d a5 12 20 00 	lea    0x2012a5(%rip),%rdi        # 202140 <mutext_lock>
     e9b:	e8 20 fc ff ff       	callq  ac0 <pthread_mutex_lock@plt>
     ea0:	48 8b 05 c9 12 20 00 	mov    0x2012c9(%rip),%rax        # 202170 <L>
     ea7:	48 89 c7             	mov    %rax,%rdi
     eaa:	e8 97 03 00 00       	callq  1246 <_ZNKSt6atomicIP5qnodeEcvS1_Ev>
     eaf:	48 89 c7             	mov    %rax,%rdi
     eb2:	e8 7d fd ff ff       	callq  c34 <_Z8print_llP5qnode>
     eb7:	48 8d 3d 82 12 20 00 	lea    0x201282(%rip),%rdi        # 202140 <mutext_lock>
     ebe:	e8 7d fb ff ff       	callq  a40 <pthread_mutex_unlock@plt>
     ec3:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
     ec7:	e9 69 ff ff ff       	jmpq   e35 <_Z12lock_examplePv+0x13>
     ecc:	b8 00 00 00 00       	mov    $0x0,%eax
     ed1:	c9                   	leaveq 
     ed2:	c3                   	retq   

0000000000000ed3 <main>:
     ed3:	55                   	push   %rbp
     ed4:	48 89 e5             	mov    %rsp,%rbp
     ed7:	41 57                	push   %r15
     ed9:	41 56                	push   %r14
     edb:	41 55                	push   %r13
     edd:	41 54                	push   %r12
     edf:	53                   	push   %rbx
     ee0:	48 83 ec 38          	sub    $0x38,%rsp
     ee4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     eeb:	00 00 
     eed:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
     ef1:	31 c0                	xor    %eax,%eax
     ef3:	48 89 e0             	mov    %rsp,%rax
     ef6:	48 89 c3             	mov    %rax,%rbx
     ef9:	48 8b 05 70 12 20 00 	mov    0x201270(%rip),%rax        # 202170 <L>
     f00:	be 00 00 00 00       	mov    $0x0,%esi
     f05:	48 89 c7             	mov    %rax,%rdi
     f08:	e8 53 03 00 00       	callq  1260 <_ZNSt6atomicIP5qnodeEaSES1_>
     f0d:	c7 45 b4 64 00 00 00 	movl   $0x64,-0x4c(%rbp)
     f14:	8b 45 b4             	mov    -0x4c(%rbp),%eax
     f17:	48 98                	cltq   
     f19:	48 83 e8 01          	sub    $0x1,%rax
     f1d:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
     f21:	48 89 c2             	mov    %rax,%rdx
     f24:	48 83 c2 01          	add    $0x1,%rdx
     f28:	49 89 d6             	mov    %rdx,%r14
     f2b:	41 bf 00 00 00 00    	mov    $0x0,%r15d
     f31:	48 89 c2             	mov    %rax,%rdx
     f34:	48 83 c2 01          	add    $0x1,%rdx
     f38:	49 89 d4             	mov    %rdx,%r12
     f3b:	41 bd 00 00 00 00    	mov    $0x0,%r13d
     f41:	48 83 c0 01          	add    $0x1,%rax
     f45:	48 c1 e0 03          	shl    $0x3,%rax
     f49:	48 8d 50 07          	lea    0x7(%rax),%rdx
     f4d:	b8 10 00 00 00       	mov    $0x10,%eax
     f52:	48 83 e8 01          	sub    $0x1,%rax
     f56:	48 01 d0             	add    %rdx,%rax
     f59:	b9 10 00 00 00       	mov    $0x10,%ecx
     f5e:	ba 00 00 00 00       	mov    $0x0,%edx
     f63:	48 f7 f1             	div    %rcx
     f66:	48 6b c0 10          	imul   $0x10,%rax,%rax
     f6a:	48 29 c4             	sub    %rax,%rsp
     f6d:	48 89 e0             	mov    %rsp,%rax
     f70:	48 83 c0 07          	add    $0x7,%rax
     f74:	48 c1 e8 03          	shr    $0x3,%rax
     f78:	48 c1 e0 03          	shl    $0x3,%rax
     f7c:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
     f80:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%rbp)
     f87:	8b 45 b0             	mov    -0x50(%rbp),%eax
     f8a:	3b 45 b4             	cmp    -0x4c(%rbp),%eax
     f8d:	7d 33                	jge    fc2 <main+0xef>
     f8f:	8b 45 b0             	mov    -0x50(%rbp),%eax
     f92:	48 98                	cltq   
     f94:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     f9b:	00 
     f9c:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
     fa0:	48 01 d0             	add    %rdx,%rax
     fa3:	b9 00 00 00 00       	mov    $0x0,%ecx
     fa8:	48 8d 15 73 fe ff ff 	lea    -0x18d(%rip),%rdx        # e22 <_Z12lock_examplePv>
     faf:	be 00 00 00 00       	mov    $0x0,%esi
     fb4:	48 89 c7             	mov    %rax,%rdi
     fb7:	e8 74 fa ff ff       	callq  a30 <pthread_create@plt>
     fbc:	83 45 b0 01          	addl   $0x1,-0x50(%rbp)
     fc0:	eb c5                	jmp    f87 <main+0xb4>
     fc2:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%rbp)
     fc9:	8b 45 ac             	mov    -0x54(%rbp),%eax
     fcc:	3b 45 b4             	cmp    -0x4c(%rbp),%eax
     fcf:	7d 21                	jge    ff2 <main+0x11f>
     fd1:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
     fd5:	8b 55 ac             	mov    -0x54(%rbp),%edx
     fd8:	48 63 d2             	movslq %edx,%rdx
     fdb:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
     fdf:	be 00 00 00 00       	mov    $0x0,%esi
     fe4:	48 89 c7             	mov    %rax,%rdi
     fe7:	e8 34 fa ff ff       	callq  a20 <pthread_join@plt>
     fec:	83 45 ac 01          	addl   $0x1,-0x54(%rbp)
     ff0:	eb d7                	jmp    fc9 <main+0xf6>
     ff2:	48 8d 35 b5 03 00 00 	lea    0x3b5(%rip),%rsi        # 13ae <_ZStL6ignore+0xd>
     ff9:	48 8d 3d 20 10 20 00 	lea    0x201020(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
    1000:	e8 7b fa ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1005:	48 89 c2             	mov    %rax,%rdx
    1008:	8b 05 5a 11 20 00    	mov    0x20115a(%rip),%eax        # 202168 <val>
    100e:	89 c6                	mov    %eax,%esi
    1010:	48 89 d7             	mov    %rdx,%rdi
    1013:	e8 c8 fa ff ff       	callq  ae0 <_ZNSolsEi@plt>
    1018:	48 8d 35 8d 03 00 00 	lea    0x38d(%rip),%rsi        # 13ac <_ZStL6ignore+0xb>
    101f:	48 89 c7             	mov    %rax,%rdi
    1022:	e8 59 fa ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1027:	48 89 dc             	mov    %rbx,%rsp
    102a:	b8 00 00 00 00       	mov    $0x0,%eax
    102f:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    1033:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    103a:	00 00 
    103c:	74 05                	je     1043 <main+0x170>
    103e:	e8 5d fa ff ff       	callq  aa0 <__stack_chk_fail@plt>
    1043:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
    1047:	5b                   	pop    %rbx
    1048:	41 5c                	pop    %r12
    104a:	41 5d                	pop    %r13
    104c:	41 5e                	pop    %r14
    104e:	41 5f                	pop    %r15
    1050:	5d                   	pop    %rbp
    1051:	c3                   	retq   

0000000000001052 <_Z41__static_initialization_and_destruction_0ii>:
    1052:	55                   	push   %rbp
    1053:	48 89 e5             	mov    %rsp,%rbp
    1056:	48 83 ec 10          	sub    $0x10,%rsp
    105a:	89 7d fc             	mov    %edi,-0x4(%rbp)
    105d:	89 75 f8             	mov    %esi,-0x8(%rbp)
    1060:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    1064:	75 43                	jne    10a9 <_Z41__static_initialization_and_destruction_0ii+0x57>
    1066:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    106d:	75 3a                	jne    10a9 <_Z41__static_initialization_and_destruction_0ii+0x57>
    106f:	48 8d 3d 02 11 20 00 	lea    0x201102(%rip),%rdi        # 202178 <_ZStL8__ioinit>
    1076:	e8 55 fa ff ff       	callq  ad0 <_ZNSt8ios_base4InitC1Ev@plt>
    107b:	48 8d 15 86 0f 20 00 	lea    0x200f86(%rip),%rdx        # 202008 <__dso_handle>
    1082:	48 8d 35 ef 10 20 00 	lea    0x2010ef(%rip),%rsi        # 202178 <_ZStL8__ioinit>
    1089:	48 8b 05 68 0f 20 00 	mov    0x200f68(%rip),%rax        # 201ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    1090:	48 89 c7             	mov    %rax,%rdi
    1093:	e8 c8 f9 ff ff       	callq  a60 <__cxa_atexit@plt>
    1098:	bf 08 00 00 00       	mov    $0x8,%edi
    109d:	e8 ee f9 ff ff       	callq  a90 <_Znwm@plt>
    10a2:	48 89 05 c7 10 20 00 	mov    %rax,0x2010c7(%rip)        # 202170 <L>
    10a9:	90                   	nop
    10aa:	c9                   	leaveq 
    10ab:	c3                   	retq   

00000000000010ac <_GLOBAL__sub_I_mutext_lock>:
    10ac:	55                   	push   %rbp
    10ad:	48 89 e5             	mov    %rsp,%rbp
    10b0:	be ff ff 00 00       	mov    $0xffff,%esi
    10b5:	bf 01 00 00 00       	mov    $0x1,%edi
    10ba:	e8 93 ff ff ff       	callq  1052 <_Z41__static_initialization_and_destruction_0ii>
    10bf:	5d                   	pop    %rbp
    10c0:	c3                   	retq   

00000000000010c1 <_ZStanSt12memory_orderSt23__memory_order_modifier>:
    10c1:	55                   	push   %rbp
    10c2:	48 89 e5             	mov    %rsp,%rbp
    10c5:	89 7d fc             	mov    %edi,-0x4(%rbp)
    10c8:	89 75 f8             	mov    %esi,-0x8(%rbp)
    10cb:	8b 55 fc             	mov    -0x4(%rbp),%edx
    10ce:	8b 45 f8             	mov    -0x8(%rbp),%eax
    10d1:	21 d0                	and    %edx,%eax
    10d3:	5d                   	pop    %rbp
    10d4:	c3                   	retq   
    10d5:	90                   	nop

00000000000010d6 <_ZNSt6thread2idC1Ev>:
    10d6:	55                   	push   %rbp
    10d7:	48 89 e5             	mov    %rsp,%rbp
    10da:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    10de:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    10e2:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    10e9:	90                   	nop
    10ea:	5d                   	pop    %rbp
    10eb:	c3                   	retq   

00000000000010ec <_ZNSt6thread2idC1Em>:
    10ec:	55                   	push   %rbp
    10ed:	48 89 e5             	mov    %rsp,%rbp
    10f0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    10f4:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    10f8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    10fc:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1100:	48 89 10             	mov    %rdx,(%rax)
    1103:	90                   	nop
    1104:	5d                   	pop    %rbp
    1105:	c3                   	retq   

0000000000001106 <_ZSteqNSt6thread2idES0_>:
    1106:	55                   	push   %rbp
    1107:	48 89 e5             	mov    %rsp,%rbp
    110a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    110e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1112:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1116:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    111a:	48 39 c2             	cmp    %rax,%rdx
    111d:	0f 94 c0             	sete   %al
    1120:	5d                   	pop    %rbp
    1121:	c3                   	retq   

0000000000001122 <_ZNSt11this_thread6get_idEv>:
    1122:	55                   	push   %rbp
    1123:	48 89 e5             	mov    %rsp,%rbp
    1126:	48 83 ec 10          	sub    $0x10,%rsp
    112a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1131:	00 00 
    1133:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1137:	31 c0                	xor    %eax,%eax
    1139:	e8 cc fa ff ff       	callq  c0a <_ZL18__gthread_active_pv>
    113e:	85 c0                	test   %eax,%eax
    1140:	0f 94 c0             	sete   %al
    1143:	84 c0                	test   %al,%al
    1145:	74 17                	je     115e <_ZNSt11this_thread6get_idEv+0x3c>
    1147:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    114b:	be 01 00 00 00       	mov    $0x1,%esi
    1150:	48 89 c7             	mov    %rax,%rdi
    1153:	e8 94 ff ff ff       	callq  10ec <_ZNSt6thread2idC1Em>
    1158:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    115c:	eb 1b                	jmp    1179 <_ZNSt11this_thread6get_idEv+0x57>
    115e:	e8 c6 fa ff ff       	callq  c29 <_ZL14__gthread_selfv>
    1163:	48 89 c2             	mov    %rax,%rdx
    1166:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    116a:	48 89 d6             	mov    %rdx,%rsi
    116d:	48 89 c7             	mov    %rax,%rdi
    1170:	e8 77 ff ff ff       	callq  10ec <_ZNSt6thread2idC1Em>
    1175:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1179:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    117d:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    1184:	00 00 
    1186:	74 05                	je     118d <_ZNSt11this_thread6get_idEv+0x6b>
    1188:	e8 13 f9 ff ff       	callq  aa0 <__stack_chk_fail@plt>
    118d:	c9                   	leaveq 
    118e:	c3                   	retq   

000000000000118f <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE>:
    118f:	55                   	push   %rbp
    1190:	48 89 e5             	mov    %rsp,%rbp
    1193:	48 83 ec 20          	sub    $0x20,%rsp
    1197:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    119b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    119f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    11a6:	00 00 
    11a8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    11ac:	31 c0                	xor    %eax,%eax
    11ae:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    11b2:	48 89 c7             	mov    %rax,%rdi
    11b5:	e8 1c ff ff ff       	callq  10d6 <_ZNSt6thread2idC1Ev>
    11ba:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    11be:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    11c2:	48 89 d6             	mov    %rdx,%rsi
    11c5:	48 89 c7             	mov    %rax,%rdi
    11c8:	e8 39 ff ff ff       	callq  1106 <_ZSteqNSt6thread2idES0_>
    11cd:	84 c0                	test   %al,%al
    11cf:	74 15                	je     11e6 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE+0x57>
    11d1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11d5:	48 8d 35 e4 01 00 00 	lea    0x1e4(%rip),%rsi        # 13c0 <_ZStL6ignore+0x1f>
    11dc:	48 89 c7             	mov    %rax,%rdi
    11df:	e8 9c f8 ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    11e4:	eb 13                	jmp    11f9 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE+0x6a>
    11e6:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    11ea:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11ee:	48 89 d6             	mov    %rdx,%rsi
    11f1:	48 89 c7             	mov    %rax,%rdi
    11f4:	e8 17 f8 ff ff       	callq  a10 <_ZNSolsEm@plt>
    11f9:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    11fd:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    1204:	00 00 
    1206:	74 05                	je     120d <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE+0x7e>
    1208:	e8 93 f8 ff ff       	callq  aa0 <__stack_chk_fail@plt>
    120d:	c9                   	leaveq 
    120e:	c3                   	retq   
    120f:	90                   	nop

0000000000001210 <_ZNSt6atomicIP5qnodeE8exchangeES1_St12memory_order>:
    1210:	55                   	push   %rbp
    1211:	48 89 e5             	mov    %rsp,%rbp
    1214:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1218:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    121c:	89 55 cc             	mov    %edx,-0x34(%rbp)
    121f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1223:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1227:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    122b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    122f:	8b 45 cc             	mov    -0x34(%rbp),%eax
    1232:	89 45 ec             	mov    %eax,-0x14(%rbp)
    1235:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1239:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    123d:	48 87 10             	xchg   %rdx,(%rax)
    1240:	48 89 d0             	mov    %rdx,%rax
    1243:	90                   	nop
    1244:	5d                   	pop    %rbp
    1245:	c3                   	retq   

0000000000001246 <_ZNKSt6atomicIP5qnodeEcvS1_Ev>:
    1246:	55                   	push   %rbp
    1247:	48 89 e5             	mov    %rsp,%rbp
    124a:	48 83 ec 10          	sub    $0x10,%rsp
    124e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1252:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1256:	48 89 c7             	mov    %rax,%rdi
    1259:	e8 28 00 00 00       	callq  1286 <_ZNKSt13__atomic_baseIP5qnodeEcvS1_Ev>
    125e:	c9                   	leaveq 
    125f:	c3                   	retq   

0000000000001260 <_ZNSt6atomicIP5qnodeEaSES1_>:
    1260:	55                   	push   %rbp
    1261:	48 89 e5             	mov    %rsp,%rbp
    1264:	48 83 ec 10          	sub    $0x10,%rsp
    1268:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    126c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1270:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1274:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1278:	48 89 d6             	mov    %rdx,%rsi
    127b:	48 89 c7             	mov    %rax,%rdi
    127e:	e8 3b 00 00 00       	callq  12be <_ZNSt13__atomic_baseIP5qnodeEaSES1_>
    1283:	c9                   	leaveq 
    1284:	c3                   	retq   
    1285:	90                   	nop

0000000000001286 <_ZNKSt13__atomic_baseIP5qnodeEcvS1_Ev>:
    1286:	55                   	push   %rbp
    1287:	48 89 e5             	mov    %rsp,%rbp
    128a:	48 83 ec 20          	sub    $0x20,%rsp
    128e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1292:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1296:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    129a:	c7 45 f0 05 00 00 00 	movl   $0x5,-0x10(%rbp)
    12a1:	8b 45 f0             	mov    -0x10(%rbp),%eax
    12a4:	be ff ff 00 00       	mov    $0xffff,%esi
    12a9:	89 c7                	mov    %eax,%edi
    12ab:	e8 11 fe ff ff       	callq  10c1 <_ZStanSt12memory_orderSt23__memory_order_modifier>
    12b0:	89 45 f4             	mov    %eax,-0xc(%rbp)
    12b3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    12b7:	48 8b 00             	mov    (%rax),%rax
    12ba:	90                   	nop
    12bb:	c9                   	leaveq 
    12bc:	c3                   	retq   
    12bd:	90                   	nop

00000000000012be <_ZNSt13__atomic_baseIP5qnodeEaSES1_>:
    12be:	55                   	push   %rbp
    12bf:	48 89 e5             	mov    %rsp,%rbp
    12c2:	48 83 ec 30          	sub    $0x30,%rsp
    12c6:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    12ca:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    12ce:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    12d2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    12d6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    12da:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    12de:	c7 45 e8 05 00 00 00 	movl   $0x5,-0x18(%rbp)
    12e5:	8b 45 e8             	mov    -0x18(%rbp),%eax
    12e8:	be ff ff 00 00       	mov    $0xffff,%esi
    12ed:	89 c7                	mov    %eax,%edi
    12ef:	e8 cd fd ff ff       	callq  10c1 <_ZStanSt12memory_orderSt23__memory_order_modifier>
    12f4:	89 45 ec             	mov    %eax,-0x14(%rbp)
    12f7:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    12fb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    12ff:	48 89 10             	mov    %rdx,(%rax)
    1302:	0f ae f0             	mfence 
    1305:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1309:	c9                   	leaveq 
    130a:	c3                   	retq   
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <__libc_csu_init>:
    1310:	41 57                	push   %r15
    1312:	41 56                	push   %r14
    1314:	49 89 d7             	mov    %rdx,%r15
    1317:	41 55                	push   %r13
    1319:	41 54                	push   %r12
    131b:	4c 8d 25 ee 09 20 00 	lea    0x2009ee(%rip),%r12        # 201d10 <__frame_dummy_init_array_entry>
    1322:	55                   	push   %rbp
    1323:	48 8d 2d f6 09 20 00 	lea    0x2009f6(%rip),%rbp        # 201d20 <__init_array_end>
    132a:	53                   	push   %rbx
    132b:	41 89 fd             	mov    %edi,%r13d
    132e:	49 89 f6             	mov    %rsi,%r14
    1331:	4c 29 e5             	sub    %r12,%rbp
    1334:	48 83 ec 08          	sub    $0x8,%rsp
    1338:	48 c1 fd 03          	sar    $0x3,%rbp
    133c:	e8 a7 f6 ff ff       	callq  9e8 <_init>
    1341:	48 85 ed             	test   %rbp,%rbp
    1344:	74 20                	je     1366 <__libc_csu_init+0x56>
    1346:	31 db                	xor    %ebx,%ebx
    1348:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    134f:	00 
    1350:	4c 89 fa             	mov    %r15,%rdx
    1353:	4c 89 f6             	mov    %r14,%rsi
    1356:	44 89 ef             	mov    %r13d,%edi
    1359:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    135d:	48 83 c3 01          	add    $0x1,%rbx
    1361:	48 39 dd             	cmp    %rbx,%rbp
    1364:	75 ea                	jne    1350 <__libc_csu_init+0x40>
    1366:	48 83 c4 08          	add    $0x8,%rsp
    136a:	5b                   	pop    %rbx
    136b:	5d                   	pop    %rbp
    136c:	41 5c                	pop    %r12
    136e:	41 5d                	pop    %r13
    1370:	41 5e                	pop    %r14
    1372:	41 5f                	pop    %r15
    1374:	c3                   	retq   
    1375:	90                   	nop
    1376:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    137d:	00 00 00 

0000000000001380 <__libc_csu_fini>:
    1380:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000001384 <_fini>:
    1384:	48 83 ec 08          	sub    $0x8,%rsp
    1388:	48 83 c4 08          	add    $0x8,%rsp
    138c:	c3                   	retq   
