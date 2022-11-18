
mcs_tas_ubuntu.o:     file format elf64-x86-64


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
     b1d:	48 8d 3d d6 04 00 00 	lea    0x4d6(%rip),%rdi        # ffa <main>
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
     c69:	e8 ac 05 00 00       	callq  121a <_ZNSt11this_thread6get_idEv>
     c6e:	48 89 c6             	mov    %rax,%rsi
     c71:	48 89 df             	mov    %rbx,%rdi
     c74:	e8 0e 06 00 00       	callq  1287 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE>
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
     cdc:	90                   	nop
     cdd:	48 83 c4 28          	add    $0x28,%rsp
     ce1:	5b                   	pop    %rbx
     ce2:	5d                   	pop    %rbp
     ce3:	c3                   	retq   

0000000000000ce4 <_Z7my_lockP5qnodeS0_>:
     ce4:	55                   	push   %rbp
     ce5:	48 89 e5             	mov    %rsp,%rbp
     ce8:	48 83 ec 20          	sub    $0x20,%rsp
     cec:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     cf0:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
     cf4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     cf8:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
     cff:	bf 10 00 00 00       	mov    $0x10,%edi
     d04:	e8 87 fd ff ff       	callq  a90 <_Znwm@plt>
     d09:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     d0d:	48 8d 3d 2c 14 20 00 	lea    0x20142c(%rip),%rdi        # 202140 <mutext_lock1>
     d14:	e8 a7 fd ff ff       	callq  ac0 <pthread_mutex_lock@plt>
     d19:	48 8d 35 8c 06 00 00 	lea    0x68c(%rip),%rsi        # 13ac <_ZStL6ignore+0xb>
     d20:	48 8d 3d f9 12 20 00 	lea    0x2012f9(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
     d27:	e8 54 fd ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     d2c:	48 89 c2             	mov    %rax,%rdx
     d2f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     d33:	48 89 c6             	mov    %rax,%rsi
     d36:	48 89 d7             	mov    %rdx,%rdi
     d39:	e8 12 fd ff ff       	callq  a50 <_ZNSolsEPKv@plt>
     d3e:	48 8d 35 73 06 00 00 	lea    0x673(%rip),%rsi        # 13b8 <_ZStL6ignore+0x17>
     d45:	48 89 c7             	mov    %rax,%rdi
     d48:	e8 33 fd ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     d4d:	48 89 c2             	mov    %rax,%rdx
     d50:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     d54:	48 89 c6             	mov    %rax,%rsi
     d57:	48 89 d7             	mov    %rdx,%rdi
     d5a:	e8 f1 fc ff ff       	callq  a50 <_ZNSolsEPKv@plt>
     d5f:	48 8d 35 59 06 00 00 	lea    0x659(%rip),%rsi        # 13bf <_ZStL6ignore+0x1e>
     d66:	48 89 c7             	mov    %rax,%rdi
     d69:	e8 12 fd ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     d6e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     d72:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     d76:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     d7a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     d7e:	48 8d 35 3c 06 00 00 	lea    0x63c(%rip),%rsi        # 13c1 <_ZStL6ignore+0x20>
     d85:	48 8d 3d 94 12 20 00 	lea    0x201294(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
     d8c:	e8 ef fc ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     d91:	48 89 c2             	mov    %rax,%rdx
     d94:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     d98:	48 89 c6             	mov    %rax,%rsi
     d9b:	48 89 d7             	mov    %rdx,%rdi
     d9e:	e8 ad fc ff ff       	callq  a50 <_ZNSolsEPKv@plt>
     da3:	48 8d 35 0e 06 00 00 	lea    0x60e(%rip),%rsi        # 13b8 <_ZStL6ignore+0x17>
     daa:	48 89 c7             	mov    %rax,%rdi
     dad:	e8 ce fc ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     db2:	48 89 c2             	mov    %rax,%rdx
     db5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     db9:	48 89 c6             	mov    %rax,%rsi
     dbc:	48 89 d7             	mov    %rdx,%rdi
     dbf:	e8 8c fc ff ff       	callq  a50 <_ZNSolsEPKv@plt>
     dc4:	48 8d 35 0b 06 00 00 	lea    0x60b(%rip),%rsi        # 13d6 <_ZStL6ignore+0x35>
     dcb:	48 89 c7             	mov    %rax,%rdi
     dce:	e8 ad fc ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     dd3:	48 8d 3d 66 13 20 00 	lea    0x201366(%rip),%rdi        # 202140 <mutext_lock1>
     dda:	e8 61 fc ff ff       	callq  a40 <pthread_mutex_unlock@plt>
     ddf:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
     de4:	74 34                	je     e1a <_Z7my_lockP5qnodeS0_+0x136>
     de6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     dea:	c6 40 08 01          	movb   $0x1,0x8(%rax)
     dee:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     df2:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
     df6:	48 89 10             	mov    %rdx,(%rax)
     df9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     dfd:	0f b6 40 08          	movzbl 0x8(%rax),%eax
     e01:	84 c0                	test   %al,%al
     e03:	74 15                	je     e1a <_Z7my_lockP5qnodeS0_+0x136>
     e05:	48 8d 35 d4 05 00 00 	lea    0x5d4(%rip),%rsi        # 13e0 <_ZStL6ignore+0x3f>
     e0c:	48 8d 3d 0d 12 20 00 	lea    0x20120d(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
     e13:	e8 68 fc ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     e18:	eb df                	jmp    df9 <_Z7my_lockP5qnodeS0_+0x115>
     e1a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     e1e:	48 89 c7             	mov    %rax,%rdi
     e21:	e8 8a fc ff ff       	callq  ab0 <free@plt>
     e26:	90                   	nop
     e27:	c9                   	leaveq 
     e28:	c3                   	retq   

0000000000000e29 <_Z9my_unlockP5qnodeS0_>:
     e29:	55                   	push   %rbp
     e2a:	48 89 e5             	mov    %rsp,%rbp
     e2d:	48 83 ec 10          	sub    $0x10,%rsp
     e31:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
     e35:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
     e39:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     e3d:	48 8b 00             	mov    (%rax),%rax
     e40:	48 85 c0             	test   %rax,%rax
     e43:	0f 85 db 00 00 00    	jne    f24 <_Z9my_unlockP5qnodeS0_+0xfb>
     e49:	48 8d 3d 30 13 20 00 	lea    0x201330(%rip),%rdi        # 202180 <mutext_lock2>
     e50:	e8 6b fc ff ff       	callq  ac0 <pthread_mutex_lock@plt>
     e55:	48 8d 35 50 05 00 00 	lea    0x550(%rip),%rsi        # 13ac <_ZStL6ignore+0xb>
     e5c:	48 8d 3d bd 11 20 00 	lea    0x2011bd(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
     e63:	e8 18 fc ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     e68:	48 89 c2             	mov    %rax,%rdx
     e6b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     e6f:	48 89 c6             	mov    %rax,%rsi
     e72:	48 89 d7             	mov    %rdx,%rdi
     e75:	e8 d6 fb ff ff       	callq  a50 <_ZNSolsEPKv@plt>
     e7a:	48 8d 35 37 05 00 00 	lea    0x537(%rip),%rsi        # 13b8 <_ZStL6ignore+0x17>
     e81:	48 89 c7             	mov    %rax,%rdi
     e84:	e8 f7 fb ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     e89:	48 89 c2             	mov    %rax,%rdx
     e8c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     e90:	48 89 c6             	mov    %rax,%rsi
     e93:	48 89 d7             	mov    %rdx,%rdi
     e96:	e8 b5 fb ff ff       	callq  a50 <_ZNSolsEPKv@plt>
     e9b:	48 8d 35 1d 05 00 00 	lea    0x51d(%rip),%rsi        # 13bf <_ZStL6ignore+0x1e>
     ea2:	48 89 c7             	mov    %rax,%rdi
     ea5:	e8 d6 fb ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     eaa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     eae:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
     eb2:	75 08                	jne    ebc <_Z9my_unlockP5qnodeS0_+0x93>
     eb4:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
     ebb:	00 
     ebc:	48 8d 35 4a 05 00 00 	lea    0x54a(%rip),%rsi        # 140d <_ZStL6ignore+0x6c>
     ec3:	48 8d 3d 56 11 20 00 	lea    0x201156(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
     eca:	e8 b1 fb ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     ecf:	48 89 c2             	mov    %rax,%rdx
     ed2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     ed6:	48 89 c6             	mov    %rax,%rsi
     ed9:	48 89 d7             	mov    %rdx,%rdi
     edc:	e8 6f fb ff ff       	callq  a50 <_ZNSolsEPKv@plt>
     ee1:	48 8d 35 d0 04 00 00 	lea    0x4d0(%rip),%rsi        # 13b8 <_ZStL6ignore+0x17>
     ee8:	48 89 c7             	mov    %rax,%rdi
     eeb:	e8 90 fb ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     ef0:	48 89 c2             	mov    %rax,%rdx
     ef3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     ef7:	48 89 c6             	mov    %rax,%rsi
     efa:	48 89 d7             	mov    %rdx,%rdi
     efd:	e8 4e fb ff ff       	callq  a50 <_ZNSolsEPKv@plt>
     f02:	48 8d 35 cd 04 00 00 	lea    0x4cd(%rip),%rsi        # 13d6 <_ZStL6ignore+0x35>
     f09:	48 89 c7             	mov    %rax,%rdi
     f0c:	e8 6f fb ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     f11:	48 8d 3d 68 12 20 00 	lea    0x201268(%rip),%rdi        # 202180 <mutext_lock2>
     f18:	e8 23 fb ff ff       	callq  a40 <pthread_mutex_unlock@plt>
     f1d:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
     f22:	74 2e                	je     f52 <_Z9my_unlockP5qnodeS0_+0x129>
     f24:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     f28:	48 8b 00             	mov    (%rax),%rax
     f2b:	48 85 c0             	test   %rax,%rax
     f2e:	75 15                	jne    f45 <_Z9my_unlockP5qnodeS0_+0x11c>
     f30:	48 8d 35 e1 04 00 00 	lea    0x4e1(%rip),%rsi        # 1418 <_ZStL6ignore+0x77>
     f37:	48 8d 3d e2 10 20 00 	lea    0x2010e2(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
     f3e:	e8 3d fb ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     f43:	eb df                	jmp    f24 <_Z9my_unlockP5qnodeS0_+0xfb>
     f45:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     f49:	48 8b 00             	mov    (%rax),%rax
     f4c:	c6 40 08 00          	movb   $0x0,0x8(%rax)
     f50:	eb 01                	jmp    f53 <_Z9my_unlockP5qnodeS0_+0x12a>
     f52:	90                   	nop
     f53:	c9                   	leaveq 
     f54:	c3                   	retq   

0000000000000f55 <_Z12lock_examplePv>:
     f55:	55                   	push   %rbp
     f56:	48 89 e5             	mov    %rsp,%rbp
     f59:	48 83 ec 20          	sub    $0x20,%rsp
     f5d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     f61:	bf 10 00 00 00       	mov    $0x10,%edi
     f66:	e8 25 fb ff ff       	callq  a90 <_Znwm@plt>
     f6b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     f6f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
     f76:	81 7d f4 c7 00 00 00 	cmpl   $0xc7,-0xc(%rbp)
     f7d:	7f 68                	jg     fe7 <_Z12lock_examplePv+0x92>
     f7f:	48 8b 05 72 12 20 00 	mov    0x201272(%rip),%rax        # 2021f8 <L>
     f86:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
     f8a:	48 89 d6             	mov    %rdx,%rsi
     f8d:	48 89 c7             	mov    %rax,%rdi
     f90:	e8 4f fd ff ff       	callq  ce4 <_Z7my_lockP5qnodeS0_>
     f95:	8b 05 55 12 20 00    	mov    0x201255(%rip),%eax        # 2021f0 <val>
     f9b:	83 c0 01             	add    $0x1,%eax
     f9e:	89 05 4c 12 20 00    	mov    %eax,0x20124c(%rip)        # 2021f0 <val>
     fa4:	48 8d 3d 15 12 20 00 	lea    0x201215(%rip),%rdi        # 2021c0 <mutext_lock3>
     fab:	e8 10 fb ff ff       	callq  ac0 <pthread_mutex_lock@plt>
     fb0:	48 8b 05 41 12 20 00 	mov    0x201241(%rip),%rax        # 2021f8 <L>
     fb7:	48 89 c7             	mov    %rax,%rdi
     fba:	e8 75 fc ff ff       	callq  c34 <_Z8print_llP5qnode>
     fbf:	48 8d 3d fa 11 20 00 	lea    0x2011fa(%rip),%rdi        # 2021c0 <mutext_lock3>
     fc6:	e8 75 fa ff ff       	callq  a40 <pthread_mutex_unlock@plt>
     fcb:	48 8b 05 26 12 20 00 	mov    0x201226(%rip),%rax        # 2021f8 <L>
     fd2:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
     fd6:	48 89 d6             	mov    %rdx,%rsi
     fd9:	48 89 c7             	mov    %rax,%rdi
     fdc:	e8 48 fe ff ff       	callq  e29 <_Z9my_unlockP5qnodeS0_>
     fe1:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
     fe5:	eb 8f                	jmp    f76 <_Z12lock_examplePv+0x21>
     fe7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     feb:	48 89 c7             	mov    %rax,%rdi
     fee:	e8 bd fa ff ff       	callq  ab0 <free@plt>
     ff3:	b8 00 00 00 00       	mov    $0x0,%eax
     ff8:	c9                   	leaveq 
     ff9:	c3                   	retq   

0000000000000ffa <main>:
     ffa:	55                   	push   %rbp
     ffb:	48 89 e5             	mov    %rsp,%rbp
     ffe:	53                   	push   %rbx
     fff:	48 83 ec 38          	sub    $0x38,%rsp
    1003:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    100a:	00 00 
    100c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1010:	31 c0                	xor    %eax,%eax
    1012:	48 89 e0             	mov    %rsp,%rax
    1015:	48 89 c3             	mov    %rax,%rbx
    1018:	48 c7 05 d5 11 20 00 	movq   $0x0,0x2011d5(%rip)        # 2021f8 <L>
    101f:	00 00 00 00 
    1023:	c7 45 d4 0a 00 00 00 	movl   $0xa,-0x2c(%rbp)
    102a:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    102d:	48 98                	cltq   
    102f:	48 83 e8 01          	sub    $0x1,%rax
    1033:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    1037:	48 89 c2             	mov    %rax,%rdx
    103a:	48 83 c2 01          	add    $0x1,%rdx
    103e:	49 89 d0             	mov    %rdx,%r8
    1041:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    1047:	48 89 c2             	mov    %rax,%rdx
    104a:	48 83 c2 01          	add    $0x1,%rdx
    104e:	48 89 d6             	mov    %rdx,%rsi
    1051:	bf 00 00 00 00       	mov    $0x0,%edi
    1056:	48 83 c0 01          	add    $0x1,%rax
    105a:	48 c1 e0 03          	shl    $0x3,%rax
    105e:	48 8d 50 07          	lea    0x7(%rax),%rdx
    1062:	b8 10 00 00 00       	mov    $0x10,%eax
    1067:	48 83 e8 01          	sub    $0x1,%rax
    106b:	48 01 d0             	add    %rdx,%rax
    106e:	b9 10 00 00 00       	mov    $0x10,%ecx
    1073:	ba 00 00 00 00       	mov    $0x0,%edx
    1078:	48 f7 f1             	div    %rcx
    107b:	48 6b c0 10          	imul   $0x10,%rax,%rax
    107f:	48 29 c4             	sub    %rax,%rsp
    1082:	48 89 e0             	mov    %rsp,%rax
    1085:	48 83 c0 07          	add    $0x7,%rax
    1089:	48 c1 e8 03          	shr    $0x3,%rax
    108d:	48 c1 e0 03          	shl    $0x3,%rax
    1091:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1095:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%rbp)
    109c:	8b 45 d0             	mov    -0x30(%rbp),%eax
    109f:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
    10a2:	7d 33                	jge    10d7 <main+0xdd>
    10a4:	8b 45 d0             	mov    -0x30(%rbp),%eax
    10a7:	48 98                	cltq   
    10a9:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    10b0:	00 
    10b1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    10b5:	48 01 d0             	add    %rdx,%rax
    10b8:	b9 00 00 00 00       	mov    $0x0,%ecx
    10bd:	48 8d 15 91 fe ff ff 	lea    -0x16f(%rip),%rdx        # f55 <_Z12lock_examplePv>
    10c4:	be 00 00 00 00       	mov    $0x0,%esi
    10c9:	48 89 c7             	mov    %rax,%rdi
    10cc:	e8 5f f9 ff ff       	callq  a30 <pthread_create@plt>
    10d1:	83 45 d0 01          	addl   $0x1,-0x30(%rbp)
    10d5:	eb c5                	jmp    109c <main+0xa2>
    10d7:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
    10de:	8b 45 cc             	mov    -0x34(%rbp),%eax
    10e1:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
    10e4:	7d 21                	jge    1107 <main+0x10d>
    10e6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    10ea:	8b 55 cc             	mov    -0x34(%rbp),%edx
    10ed:	48 63 d2             	movslq %edx,%rdx
    10f0:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
    10f4:	be 00 00 00 00       	mov    $0x0,%esi
    10f9:	48 89 c7             	mov    %rax,%rdi
    10fc:	e8 1f f9 ff ff       	callq  a20 <pthread_join@plt>
    1101:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
    1105:	eb d7                	jmp    10de <main+0xe4>
    1107:	48 8d 35 33 03 00 00 	lea    0x333(%rip),%rsi        # 1441 <_ZStL6ignore+0xa0>
    110e:	48 8d 3d 0b 0f 20 00 	lea    0x200f0b(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
    1115:	e8 66 f9 ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    111a:	48 89 c2             	mov    %rax,%rdx
    111d:	8b 05 cd 10 20 00    	mov    0x2010cd(%rip),%eax        # 2021f0 <val>
    1123:	89 c6                	mov    %eax,%esi
    1125:	48 89 d7             	mov    %rdx,%rdi
    1128:	e8 b3 f9 ff ff       	callq  ae0 <_ZNSolsEi@plt>
    112d:	48 8d 35 8b 02 00 00 	lea    0x28b(%rip),%rsi        # 13bf <_ZStL6ignore+0x1e>
    1134:	48 89 c7             	mov    %rax,%rdi
    1137:	e8 44 f9 ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    113c:	48 89 dc             	mov    %rbx,%rsp
    113f:	b8 00 00 00 00       	mov    $0x0,%eax
    1144:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    1148:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    114f:	00 00 
    1151:	74 05                	je     1158 <main+0x15e>
    1153:	e8 48 f9 ff ff       	callq  aa0 <__stack_chk_fail@plt>
    1158:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    115c:	c9                   	leaveq 
    115d:	c3                   	retq   

000000000000115e <_Z41__static_initialization_and_destruction_0ii>:
    115e:	55                   	push   %rbp
    115f:	48 89 e5             	mov    %rsp,%rbp
    1162:	48 83 ec 10          	sub    $0x10,%rsp
    1166:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1169:	89 75 f8             	mov    %esi,-0x8(%rbp)
    116c:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    1170:	75 43                	jne    11b5 <_Z41__static_initialization_and_destruction_0ii+0x57>
    1172:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    1179:	75 3a                	jne    11b5 <_Z41__static_initialization_and_destruction_0ii+0x57>
    117b:	48 8d 3d 7e 10 20 00 	lea    0x20107e(%rip),%rdi        # 202200 <_ZStL8__ioinit>
    1182:	e8 49 f9 ff ff       	callq  ad0 <_ZNSt8ios_base4InitC1Ev@plt>
    1187:	48 8d 15 7a 0e 20 00 	lea    0x200e7a(%rip),%rdx        # 202008 <__dso_handle>
    118e:	48 8d 35 6b 10 20 00 	lea    0x20106b(%rip),%rsi        # 202200 <_ZStL8__ioinit>
    1195:	48 8b 05 5c 0e 20 00 	mov    0x200e5c(%rip),%rax        # 201ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    119c:	48 89 c7             	mov    %rax,%rdi
    119f:	e8 bc f8 ff ff       	callq  a60 <__cxa_atexit@plt>
    11a4:	bf 10 00 00 00       	mov    $0x10,%edi
    11a9:	e8 e2 f8 ff ff       	callq  a90 <_Znwm@plt>
    11ae:	48 89 05 43 10 20 00 	mov    %rax,0x201043(%rip)        # 2021f8 <L>
    11b5:	90                   	nop
    11b6:	c9                   	leaveq 
    11b7:	c3                   	retq   

00000000000011b8 <_GLOBAL__sub_I_mutext_lock1>:
    11b8:	55                   	push   %rbp
    11b9:	48 89 e5             	mov    %rsp,%rbp
    11bc:	be ff ff 00 00       	mov    $0xffff,%esi
    11c1:	bf 01 00 00 00       	mov    $0x1,%edi
    11c6:	e8 93 ff ff ff       	callq  115e <_Z41__static_initialization_and_destruction_0ii>
    11cb:	5d                   	pop    %rbp
    11cc:	c3                   	retq   
    11cd:	90                   	nop

00000000000011ce <_ZNSt6thread2idC1Ev>:
    11ce:	55                   	push   %rbp
    11cf:	48 89 e5             	mov    %rsp,%rbp
    11d2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    11d6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    11da:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    11e1:	90                   	nop
    11e2:	5d                   	pop    %rbp
    11e3:	c3                   	retq   

00000000000011e4 <_ZNSt6thread2idC1Em>:
    11e4:	55                   	push   %rbp
    11e5:	48 89 e5             	mov    %rsp,%rbp
    11e8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    11ec:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    11f0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    11f4:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    11f8:	48 89 10             	mov    %rdx,(%rax)
    11fb:	90                   	nop
    11fc:	5d                   	pop    %rbp
    11fd:	c3                   	retq   

00000000000011fe <_ZSteqNSt6thread2idES0_>:
    11fe:	55                   	push   %rbp
    11ff:	48 89 e5             	mov    %rsp,%rbp
    1202:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1206:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    120a:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    120e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1212:	48 39 c2             	cmp    %rax,%rdx
    1215:	0f 94 c0             	sete   %al
    1218:	5d                   	pop    %rbp
    1219:	c3                   	retq   

000000000000121a <_ZNSt11this_thread6get_idEv>:
    121a:	55                   	push   %rbp
    121b:	48 89 e5             	mov    %rsp,%rbp
    121e:	48 83 ec 10          	sub    $0x10,%rsp
    1222:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1229:	00 00 
    122b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    122f:	31 c0                	xor    %eax,%eax
    1231:	e8 d4 f9 ff ff       	callq  c0a <_ZL18__gthread_active_pv>
    1236:	85 c0                	test   %eax,%eax
    1238:	0f 94 c0             	sete   %al
    123b:	84 c0                	test   %al,%al
    123d:	74 17                	je     1256 <_ZNSt11this_thread6get_idEv+0x3c>
    123f:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    1243:	be 01 00 00 00       	mov    $0x1,%esi
    1248:	48 89 c7             	mov    %rax,%rdi
    124b:	e8 94 ff ff ff       	callq  11e4 <_ZNSt6thread2idC1Em>
    1250:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1254:	eb 1b                	jmp    1271 <_ZNSt11this_thread6get_idEv+0x57>
    1256:	e8 ce f9 ff ff       	callq  c29 <_ZL14__gthread_selfv>
    125b:	48 89 c2             	mov    %rax,%rdx
    125e:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    1262:	48 89 d6             	mov    %rdx,%rsi
    1265:	48 89 c7             	mov    %rax,%rdi
    1268:	e8 77 ff ff ff       	callq  11e4 <_ZNSt6thread2idC1Em>
    126d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1271:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    1275:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    127c:	00 00 
    127e:	74 05                	je     1285 <_ZNSt11this_thread6get_idEv+0x6b>
    1280:	e8 1b f8 ff ff       	callq  aa0 <__stack_chk_fail@plt>
    1285:	c9                   	leaveq 
    1286:	c3                   	retq   

0000000000001287 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE>:
    1287:	55                   	push   %rbp
    1288:	48 89 e5             	mov    %rsp,%rbp
    128b:	48 83 ec 20          	sub    $0x20,%rsp
    128f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1293:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    1297:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    129e:	00 00 
    12a0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    12a4:	31 c0                	xor    %eax,%eax
    12a6:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    12aa:	48 89 c7             	mov    %rax,%rdi
    12ad:	e8 1c ff ff ff       	callq  11ce <_ZNSt6thread2idC1Ev>
    12b2:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    12b6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    12ba:	48 89 d6             	mov    %rdx,%rsi
    12bd:	48 89 c7             	mov    %rax,%rdi
    12c0:	e8 39 ff ff ff       	callq  11fe <_ZSteqNSt6thread2idES0_>
    12c5:	84 c0                	test   %al,%al
    12c7:	74 15                	je     12de <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE+0x57>
    12c9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12cd:	48 8d 35 7c 01 00 00 	lea    0x17c(%rip),%rsi        # 1450 <_ZStL6ignore+0xaf>
    12d4:	48 89 c7             	mov    %rax,%rdi
    12d7:	e8 a4 f7 ff ff       	callq  a80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    12dc:	eb 13                	jmp    12f1 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE+0x6a>
    12de:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    12e2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12e6:	48 89 d6             	mov    %rdx,%rsi
    12e9:	48 89 c7             	mov    %rax,%rdi
    12ec:	e8 1f f7 ff ff       	callq  a10 <_ZNSolsEm@plt>
    12f1:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    12f5:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    12fc:	00 00 
    12fe:	74 05                	je     1305 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE+0x7e>
    1300:	e8 9b f7 ff ff       	callq  aa0 <__stack_chk_fail@plt>
    1305:	c9                   	leaveq 
    1306:	c3                   	retq   
    1307:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    130e:	00 00 

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
