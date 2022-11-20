
mcs_lock_working_ubuntu.o:     file format elf64-x86-64


Disassembly of section .init:

0000000000000a60 <_init>:
 a60:	48 83 ec 08          	sub    $0x8,%rsp
 a64:	48 8b 05 7d 15 20 00 	mov    0x20157d(%rip),%rax        # 201fe8 <__gmon_start__>
 a6b:	48 85 c0             	test   %rax,%rax
 a6e:	74 02                	je     a72 <_init+0x12>
 a70:	ff d0                	callq  *%rax
 a72:	48 83 c4 08          	add    $0x8,%rsp
 a76:	c3                   	retq   

Disassembly of section .plt:

0000000000000a80 <.plt>:
 a80:	ff 35 b2 14 20 00    	pushq  0x2014b2(%rip)        # 201f38 <_GLOBAL_OFFSET_TABLE_+0x8>
 a86:	ff 25 b4 14 20 00    	jmpq   *0x2014b4(%rip)        # 201f40 <_GLOBAL_OFFSET_TABLE_+0x10>
 a8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000a90 <_ZNSolsEm@plt>:
 a90:	ff 25 b2 14 20 00    	jmpq   *0x2014b2(%rip)        # 201f48 <_ZNSolsEm@GLIBCXX_3.4>
 a96:	68 00 00 00 00       	pushq  $0x0
 a9b:	e9 e0 ff ff ff       	jmpq   a80 <.plt>

0000000000000aa0 <pthread_join@plt>:
 aa0:	ff 25 aa 14 20 00    	jmpq   *0x2014aa(%rip)        # 201f50 <pthread_join@GLIBC_2.2.5>
 aa6:	68 01 00 00 00       	pushq  $0x1
 aab:	e9 d0 ff ff ff       	jmpq   a80 <.plt>

0000000000000ab0 <pthread_create@plt>:
 ab0:	ff 25 a2 14 20 00    	jmpq   *0x2014a2(%rip)        # 201f58 <pthread_create@GLIBC_2.2.5>
 ab6:	68 02 00 00 00       	pushq  $0x2
 abb:	e9 c0 ff ff ff       	jmpq   a80 <.plt>

0000000000000ac0 <pthread_mutex_unlock@plt>:
 ac0:	ff 25 9a 14 20 00    	jmpq   *0x20149a(%rip)        # 201f60 <pthread_mutex_unlock@GLIBC_2.2.5>
 ac6:	68 03 00 00 00       	pushq  $0x3
 acb:	e9 b0 ff ff ff       	jmpq   a80 <.plt>

0000000000000ad0 <_ZNSolsEPKv@plt>:
 ad0:	ff 25 92 14 20 00    	jmpq   *0x201492(%rip)        # 201f68 <_ZNSolsEPKv@GLIBCXX_3.4>
 ad6:	68 04 00 00 00       	pushq  $0x4
 adb:	e9 a0 ff ff ff       	jmpq   a80 <.plt>

0000000000000ae0 <__cxa_atexit@plt>:
 ae0:	ff 25 8a 14 20 00    	jmpq   *0x20148a(%rip)        # 201f70 <__cxa_atexit@GLIBC_2.2.5>
 ae6:	68 05 00 00 00       	pushq  $0x5
 aeb:	e9 90 ff ff ff       	jmpq   a80 <.plt>

0000000000000af0 <pthread_self@plt>:
 af0:	ff 25 82 14 20 00    	jmpq   *0x201482(%rip)        # 201f78 <pthread_self@GLIBC_2.2.5>
 af6:	68 06 00 00 00       	pushq  $0x6
 afb:	e9 80 ff ff ff       	jmpq   a80 <.plt>

0000000000000b00 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
 b00:	ff 25 7a 14 20 00    	jmpq   *0x20147a(%rip)        # 201f80 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
 b06:	68 07 00 00 00       	pushq  $0x7
 b0b:	e9 70 ff ff ff       	jmpq   a80 <.plt>

0000000000000b10 <_Znwm@plt>:
 b10:	ff 25 72 14 20 00    	jmpq   *0x201472(%rip)        # 201f88 <_Znwm@GLIBCXX_3.4>
 b16:	68 08 00 00 00       	pushq  $0x8
 b1b:	e9 60 ff ff ff       	jmpq   a80 <.plt>

0000000000000b20 <__stack_chk_fail@plt>:
 b20:	ff 25 6a 14 20 00    	jmpq   *0x20146a(%rip)        # 201f90 <__stack_chk_fail@GLIBC_2.4>
 b26:	68 09 00 00 00       	pushq  $0x9
 b2b:	e9 50 ff ff ff       	jmpq   a80 <.plt>

0000000000000b30 <free@plt>:
 b30:	ff 25 62 14 20 00    	jmpq   *0x201462(%rip)        # 201f98 <free@GLIBC_2.2.5>
 b36:	68 0a 00 00 00       	pushq  $0xa
 b3b:	e9 40 ff ff ff       	jmpq   a80 <.plt>

0000000000000b40 <pthread_mutex_lock@plt>:
 b40:	ff 25 5a 14 20 00    	jmpq   *0x20145a(%rip)        # 201fa0 <pthread_mutex_lock@GLIBC_2.2.5>
 b46:	68 0b 00 00 00       	pushq  $0xb
 b4b:	e9 30 ff ff ff       	jmpq   a80 <.plt>

0000000000000b50 <pthread_mutex_init@plt>:
 b50:	ff 25 52 14 20 00    	jmpq   *0x201452(%rip)        # 201fa8 <pthread_mutex_init@GLIBC_2.2.5>
 b56:	68 0c 00 00 00       	pushq  $0xc
 b5b:	e9 20 ff ff ff       	jmpq   a80 <.plt>

0000000000000b60 <_ZNSt8ios_base4InitC1Ev@plt>:
 b60:	ff 25 4a 14 20 00    	jmpq   *0x20144a(%rip)        # 201fb0 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
 b66:	68 0d 00 00 00       	pushq  $0xd
 b6b:	e9 10 ff ff ff       	jmpq   a80 <.plt>

0000000000000b70 <puts@plt>:
 b70:	ff 25 42 14 20 00    	jmpq   *0x201442(%rip)        # 201fb8 <puts@GLIBC_2.2.5>
 b76:	68 0e 00 00 00       	pushq  $0xe
 b7b:	e9 00 ff ff ff       	jmpq   a80 <.plt>

0000000000000b80 <_ZNSolsEi@plt>:
 b80:	ff 25 3a 14 20 00    	jmpq   *0x20143a(%rip)        # 201fc0 <_ZNSolsEi@GLIBCXX_3.4>
 b86:	68 0f 00 00 00       	pushq  $0xf
 b8b:	e9 f0 fe ff ff       	jmpq   a80 <.plt>

Disassembly of section .plt.got:

0000000000000b90 <__cxa_finalize@plt>:
 b90:	ff 25 32 14 20 00    	jmpq   *0x201432(%rip)        # 201fc8 <__cxa_finalize@GLIBC_2.2.5>
 b96:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000ba0 <_start>:
     ba0:	31 ed                	xor    %ebp,%ebp
     ba2:	49 89 d1             	mov    %rdx,%r9
     ba5:	5e                   	pop    %rsi
     ba6:	48 89 e2             	mov    %rsp,%rdx
     ba9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
     bad:	50                   	push   %rax
     bae:	54                   	push   %rsp
     baf:	4c 8d 05 fa 09 00 00 	lea    0x9fa(%rip),%r8        # 15b0 <__libc_csu_fini>
     bb6:	48 8d 0d 83 09 00 00 	lea    0x983(%rip),%rcx        # 1540 <__libc_csu_init>
     bbd:	48 8d 3d 1f 05 00 00 	lea    0x51f(%rip),%rdi        # 10e3 <main>
     bc4:	ff 15 16 14 20 00    	callq  *0x201416(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
     bca:	f4                   	hlt    
     bcb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000bd0 <deregister_tm_clones>:
     bd0:	48 8d 3d 39 14 20 00 	lea    0x201439(%rip),%rdi        # 202010 <__TMC_END__>
     bd7:	55                   	push   %rbp
     bd8:	48 8d 05 31 14 20 00 	lea    0x201431(%rip),%rax        # 202010 <__TMC_END__>
     bdf:	48 39 f8             	cmp    %rdi,%rax
     be2:	48 89 e5             	mov    %rsp,%rbp
     be5:	74 19                	je     c00 <deregister_tm_clones+0x30>
     be7:	48 8b 05 ea 13 20 00 	mov    0x2013ea(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
     bee:	48 85 c0             	test   %rax,%rax
     bf1:	74 0d                	je     c00 <deregister_tm_clones+0x30>
     bf3:	5d                   	pop    %rbp
     bf4:	ff e0                	jmpq   *%rax
     bf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     bfd:	00 00 00 
     c00:	5d                   	pop    %rbp
     c01:	c3                   	retq   
     c02:	0f 1f 40 00          	nopl   0x0(%rax)
     c06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     c0d:	00 00 00 

0000000000000c10 <register_tm_clones>:
     c10:	48 8d 3d f9 13 20 00 	lea    0x2013f9(%rip),%rdi        # 202010 <__TMC_END__>
     c17:	48 8d 35 f2 13 20 00 	lea    0x2013f2(%rip),%rsi        # 202010 <__TMC_END__>
     c1e:	55                   	push   %rbp
     c1f:	48 29 fe             	sub    %rdi,%rsi
     c22:	48 89 e5             	mov    %rsp,%rbp
     c25:	48 c1 fe 03          	sar    $0x3,%rsi
     c29:	48 89 f0             	mov    %rsi,%rax
     c2c:	48 c1 e8 3f          	shr    $0x3f,%rax
     c30:	48 01 c6             	add    %rax,%rsi
     c33:	48 d1 fe             	sar    %rsi
     c36:	74 18                	je     c50 <register_tm_clones+0x40>
     c38:	48 8b 05 b1 13 20 00 	mov    0x2013b1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
     c3f:	48 85 c0             	test   %rax,%rax
     c42:	74 0c                	je     c50 <register_tm_clones+0x40>
     c44:	5d                   	pop    %rbp
     c45:	ff e0                	jmpq   *%rax
     c47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     c4e:	00 00 
     c50:	5d                   	pop    %rbp
     c51:	c3                   	retq   
     c52:	0f 1f 40 00          	nopl   0x0(%rax)
     c56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     c5d:	00 00 00 

0000000000000c60 <__do_global_dtors_aux>:
     c60:	80 3d c9 14 20 00 00 	cmpb   $0x0,0x2014c9(%rip)        # 202130 <completed.7698>
     c67:	75 2f                	jne    c98 <__do_global_dtors_aux+0x38>
     c69:	48 83 3d 57 13 20 00 	cmpq   $0x0,0x201357(%rip)        # 201fc8 <__cxa_finalize@GLIBC_2.2.5>
     c70:	00 
     c71:	55                   	push   %rbp
     c72:	48 89 e5             	mov    %rsp,%rbp
     c75:	74 0c                	je     c83 <__do_global_dtors_aux+0x23>
     c77:	48 8b 3d 8a 13 20 00 	mov    0x20138a(%rip),%rdi        # 202008 <__dso_handle>
     c7e:	e8 0d ff ff ff       	callq  b90 <__cxa_finalize@plt>
     c83:	e8 48 ff ff ff       	callq  bd0 <deregister_tm_clones>
     c88:	c6 05 a1 14 20 00 01 	movb   $0x1,0x2014a1(%rip)        # 202130 <completed.7698>
     c8f:	5d                   	pop    %rbp
     c90:	c3                   	retq   
     c91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     c98:	f3 c3                	repz retq 
     c9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000ca0 <frame_dummy>:
     ca0:	55                   	push   %rbp
     ca1:	48 89 e5             	mov    %rsp,%rbp
     ca4:	5d                   	pop    %rbp
     ca5:	e9 66 ff ff ff       	jmpq   c10 <register_tm_clones>

0000000000000caa <_ZL18__gthread_active_pv>:
     caa:	55                   	push   %rbp
     cab:	48 89 e5             	mov    %rsp,%rbp
     cae:	ba 01 00 00 00       	mov    $0x1,%edx
     cb3:	48 8b 05 16 13 20 00 	mov    0x201316(%rip),%rax        # 201fd0 <__pthread_key_create@GLIBC_2.2.5>
     cba:	48 85 c0             	test   %rax,%rax
     cbd:	75 05                	jne    cc4 <_ZL18__gthread_active_pv+0x1a>
     cbf:	ba 00 00 00 00       	mov    $0x0,%edx
     cc4:	0f b6 c2             	movzbl %dl,%eax
     cc7:	5d                   	pop    %rbp
     cc8:	c3                   	retq   

0000000000000cc9 <_ZL14__gthread_selfv>:
     cc9:	55                   	push   %rbp
     cca:	48 89 e5             	mov    %rsp,%rbp
     ccd:	e8 1e fe ff ff       	callq  af0 <pthread_self@plt>
     cd2:	5d                   	pop    %rbp
     cd3:	c3                   	retq   

0000000000000cd4 <_Z8print_llP5qnode>:
     cd4:	55                   	push   %rbp
     cd5:	48 89 e5             	mov    %rsp,%rbp
     cd8:	53                   	push   %rbx
     cd9:	48 83 ec 28          	sub    $0x28,%rsp
     cdd:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     ce1:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
     ce8:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
     ced:	0f 84 89 00 00 00    	je     d7c <_Z8print_llP5qnode+0xa8>
     cf3:	48 8d 35 d8 08 00 00 	lea    0x8d8(%rip),%rsi        # 15d2 <_ZStL6ignore+0x1>
     cfa:	48 8d 3d 1f 13 20 00 	lea    0x20131f(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
     d01:	e8 fa fd ff ff       	callq  b00 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     d06:	48 89 c3             	mov    %rax,%rbx
     d09:	e8 8c 06 00 00       	callq  139a <_ZNSt11this_thread6get_idEv>
     d0e:	48 89 c6             	mov    %rax,%rsi
     d11:	48 89 df             	mov    %rbx,%rdi
     d14:	e8 ee 06 00 00       	callq  1407 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE>
     d19:	48 8d 35 b4 08 00 00 	lea    0x8b4(%rip),%rsi        # 15d4 <_ZStL6ignore+0x3>
     d20:	48 89 c7             	mov    %rax,%rdi
     d23:	e8 d8 fd ff ff       	callq  b00 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     d28:	48 89 c2             	mov    %rax,%rdx
     d2b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     d2f:	48 89 c6             	mov    %rax,%rsi
     d32:	48 89 d7             	mov    %rdx,%rdi
     d35:	e8 96 fd ff ff       	callq  ad0 <_ZNSolsEPKv@plt>
     d3a:	48 8d 35 91 08 00 00 	lea    0x891(%rip),%rsi        # 15d2 <_ZStL6ignore+0x1>
     d41:	48 89 c7             	mov    %rax,%rdi
     d44:	e8 b7 fd ff ff       	callq  b00 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     d49:	48 89 c2             	mov    %rax,%rdx
     d4c:	8b 45 ec             	mov    -0x14(%rbp),%eax
     d4f:	89 c6                	mov    %eax,%esi
     d51:	48 89 d7             	mov    %rdx,%rdi
     d54:	e8 27 fe ff ff       	callq  b80 <_ZNSolsEi@plt>
     d59:	48 8d 35 76 08 00 00 	lea    0x876(%rip),%rsi        # 15d6 <_ZStL6ignore+0x5>
     d60:	48 89 c7             	mov    %rax,%rdi
     d63:	e8 98 fd ff ff       	callq  b00 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     d68:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     d6c:	48 8b 00             	mov    (%rax),%rax
     d6f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
     d73:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
     d77:	e9 6c ff ff ff       	jmpq   ce8 <_Z8print_llP5qnode+0x14>
     d7c:	48 8d 35 59 08 00 00 	lea    0x859(%rip),%rsi        # 15dc <_ZStL6ignore+0xb>
     d83:	48 8d 3d 96 12 20 00 	lea    0x201296(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
     d8a:	e8 71 fd ff ff       	callq  b00 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     d8f:	90                   	nop
     d90:	48 83 c4 28          	add    $0x28,%rsp
     d94:	5b                   	pop    %rbx
     d95:	5d                   	pop    %rbp
     d96:	c3                   	retq   

0000000000000d97 <_Z4lockP5qnode>:
     d97:	55                   	push   %rbp
     d98:	48 89 e5             	mov    %rsp,%rbp
     d9b:	48 83 ec 20          	sub    $0x20,%rsp
     d9f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     da3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     da7:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
     dae:	bf 10 00 00 00       	mov    $0x10,%edi
     db3:	e8 58 fd ff ff       	callq  b10 <_Znwm@plt>
     db8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     dbc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     dc0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     dc4:	48 8b 05 a5 13 20 00 	mov    0x2013a5(%rip),%rax        # 202170 <L>
     dcb:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
     dcf:	ba 05 00 00 00       	mov    $0x5,%edx
     dd4:	48 89 ce             	mov    %rcx,%rsi
     dd7:	48 89 c7             	mov    %rax,%rdi
     dda:	e8 a9 06 00 00       	callq  1488 <_ZNSt6atomicIP5qnodeE8exchangeES1_St12memory_order>
     ddf:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     de3:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
     de8:	0f 84 92 00 00 00    	je     e80 <_Z4lockP5qnode+0xe9>
     dee:	8b 05 74 13 20 00    	mov    0x201374(%rip),%eax        # 202168 <came_here>
     df4:	83 c0 01             	add    $0x1,%eax
     df7:	89 05 6b 13 20 00    	mov    %eax,0x20136b(%rip)        # 202168 <came_here>
     dfd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     e01:	c6 40 08 01          	movb   $0x1,0x8(%rax)
     e05:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     e09:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
     e0d:	48 89 10             	mov    %rdx,(%rax)
     e10:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
     e17:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
     e1b:	75 4c                	jne    e69 <_Z4lockP5qnode+0xd2>
     e1d:	48 8d 3d 1c 13 20 00 	lea    0x20131c(%rip),%rdi        # 202140 <mutext_lock1>
     e24:	e8 17 fd ff ff       	callq  b40 <pthread_mutex_lock@plt>
     e29:	48 8d 35 ae 07 00 00 	lea    0x7ae(%rip),%rsi        # 15de <_ZStL6ignore+0xd>
     e30:	48 8d 3d e9 11 20 00 	lea    0x2011e9(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
     e37:	e8 c4 fc ff ff       	callq  b00 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     e3c:	48 89 c2             	mov    %rax,%rdx
     e3f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     e43:	48 89 c6             	mov    %rax,%rsi
     e46:	48 89 d7             	mov    %rdx,%rdi
     e49:	e8 82 fc ff ff       	callq  ad0 <_ZNSolsEPKv@plt>
     e4e:	48 8d 35 87 07 00 00 	lea    0x787(%rip),%rsi        # 15dc <_ZStL6ignore+0xb>
     e55:	48 89 c7             	mov    %rax,%rdi
     e58:	e8 a3 fc ff ff       	callq  b00 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     e5d:	48 8d 3d dc 12 20 00 	lea    0x2012dc(%rip),%rdi        # 202140 <mutext_lock1>
     e64:	e8 57 fc ff ff       	callq  ac0 <pthread_mutex_unlock@plt>
     e69:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     e6d:	0f b6 40 08          	movzbl 0x8(%rax),%eax
     e71:	88 45 f3             	mov    %al,-0xd(%rbp)
     e74:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
     e78:	80 7d f3 00          	cmpb   $0x0,-0xd(%rbp)
     e7c:	75 4e                	jne    ecc <_Z4lockP5qnode+0x135>
     e7e:	eb 97                	jmp    e17 <_Z4lockP5qnode+0x80>
     e80:	48 8d 3d b9 12 20 00 	lea    0x2012b9(%rip),%rdi        # 202140 <mutext_lock1>
     e87:	e8 b4 fc ff ff       	callq  b40 <pthread_mutex_lock@plt>
     e8c:	48 8d 35 59 07 00 00 	lea    0x759(%rip),%rsi        # 15ec <_ZStL6ignore+0x1b>
     e93:	48 8d 3d 86 11 20 00 	lea    0x201186(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
     e9a:	e8 61 fc ff ff       	callq  b00 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     e9f:	48 89 c2             	mov    %rax,%rdx
     ea2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     ea6:	48 89 c6             	mov    %rax,%rsi
     ea9:	48 89 d7             	mov    %rdx,%rdi
     eac:	e8 1f fc ff ff       	callq  ad0 <_ZNSolsEPKv@plt>
     eb1:	48 8d 35 24 07 00 00 	lea    0x724(%rip),%rsi        # 15dc <_ZStL6ignore+0xb>
     eb8:	48 89 c7             	mov    %rax,%rdi
     ebb:	e8 40 fc ff ff       	callq  b00 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     ec0:	48 8d 3d 79 12 20 00 	lea    0x201279(%rip),%rdi        # 202140 <mutext_lock1>
     ec7:	e8 f4 fb ff ff       	callq  ac0 <pthread_mutex_unlock@plt>
     ecc:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
     ed1:	74 4c                	je     f1f <_Z4lockP5qnode+0x188>
     ed3:	48 8d 3d 66 12 20 00 	lea    0x201266(%rip),%rdi        # 202140 <mutext_lock1>
     eda:	e8 61 fc ff ff       	callq  b40 <pthread_mutex_lock@plt>
     edf:	48 8d 35 22 07 00 00 	lea    0x722(%rip),%rsi        # 1608 <_ZStL6ignore+0x37>
     ee6:	48 8d 3d 33 11 20 00 	lea    0x201133(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
     eed:	e8 0e fc ff ff       	callq  b00 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     ef2:	48 89 c2             	mov    %rax,%rdx
     ef5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     ef9:	48 89 c6             	mov    %rax,%rsi
     efc:	48 89 d7             	mov    %rdx,%rdi
     eff:	e8 cc fb ff ff       	callq  ad0 <_ZNSolsEPKv@plt>
     f04:	48 8d 35 d1 06 00 00 	lea    0x6d1(%rip),%rsi        # 15dc <_ZStL6ignore+0xb>
     f0b:	48 89 c7             	mov    %rax,%rdi
     f0e:	e8 ed fb ff ff       	callq  b00 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     f13:	48 8d 3d 26 12 20 00 	lea    0x201226(%rip),%rdi        # 202140 <mutext_lock1>
     f1a:	e8 a1 fb ff ff       	callq  ac0 <pthread_mutex_unlock@plt>
     f1f:	90                   	nop
     f20:	c9                   	leaveq 
     f21:	c3                   	retq   

0000000000000f22 <_Z6unlockP5qnode>:
     f22:	55                   	push   %rbp
     f23:	48 89 e5             	mov    %rsp,%rbp
     f26:	48 83 ec 30          	sub    $0x30,%rsp
     f2a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     f2e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     f32:	48 8b 00             	mov    (%rax),%rax
     f35:	48 85 c0             	test   %rax,%rax
     f38:	74 5c                	je     f96 <_Z6unlockP5qnode+0x74>
     f3a:	48 8d 3d ff 11 20 00 	lea    0x2011ff(%rip),%rdi        # 202140 <mutext_lock1>
     f41:	e8 fa fb ff ff       	callq  b40 <pthread_mutex_lock@plt>
     f46:	48 8d 35 da 06 00 00 	lea    0x6da(%rip),%rsi        # 1627 <_ZStL6ignore+0x56>
     f4d:	48 8d 3d cc 10 20 00 	lea    0x2010cc(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
     f54:	e8 a7 fb ff ff       	callq  b00 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     f59:	48 89 c2             	mov    %rax,%rdx
     f5c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     f60:	48 89 c6             	mov    %rax,%rsi
     f63:	48 89 d7             	mov    %rdx,%rdi
     f66:	e8 65 fb ff ff       	callq  ad0 <_ZNSolsEPKv@plt>
     f6b:	48 8d 35 6a 06 00 00 	lea    0x66a(%rip),%rsi        # 15dc <_ZStL6ignore+0xb>
     f72:	48 89 c7             	mov    %rax,%rdi
     f75:	e8 86 fb ff ff       	callq  b00 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
     f7a:	48 8d 3d bf 11 20 00 	lea    0x2011bf(%rip),%rdi        # 202140 <mutext_lock1>
     f81:	e8 3a fb ff ff       	callq  ac0 <pthread_mutex_unlock@plt>
     f86:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     f8a:	48 8b 00             	mov    (%rax),%rax
     f8d:	c6 40 08 00          	movb   $0x0,0x8(%rax)
     f91:	e9 e1 00 00 00       	jmpq   1077 <_Z6unlockP5qnode+0x155>
     f96:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     f9d:	00 
     f9e:	48 8b 05 cb 11 20 00 	mov    0x2011cb(%rip),%rax        # 202170 <L>
     fa5:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
     fa9:	ba 05 00 00 00       	mov    $0x5,%edx
     fae:	48 89 ce             	mov    %rcx,%rsi
     fb1:	48 89 c7             	mov    %rax,%rdi
     fb4:	e8 cf 04 00 00       	callq  1488 <_ZNSt6atomicIP5qnodeE8exchangeES1_St12memory_order>
     fb9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     fbd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     fc1:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
     fc5:	0f 84 ab 00 00 00    	je     1076 <_Z6unlockP5qnode+0x154>
     fcb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     fcf:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     fd3:	48 8b 05 96 11 20 00 	mov    0x201196(%rip),%rax        # 202170 <L>
     fda:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
     fde:	ba 05 00 00 00       	mov    $0x5,%edx
     fe3:	48 89 ce             	mov    %rcx,%rsi
     fe6:	48 89 c7             	mov    %rax,%rdi
     fe9:	e8 9a 04 00 00       	callq  1488 <_ZNSt6atomicIP5qnodeE8exchangeES1_St12memory_order>
     fee:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     ff2:	48 8d 3d 47 11 20 00 	lea    0x201147(%rip),%rdi        # 202140 <mutext_lock1>
     ff9:	e8 42 fb ff ff       	callq  b40 <pthread_mutex_lock@plt>
     ffe:	48 8d 35 40 06 00 00 	lea    0x640(%rip),%rsi        # 1645 <_ZStL6ignore+0x74>
    1005:	48 8d 3d 14 10 20 00 	lea    0x201014(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
    100c:	e8 ef fa ff ff       	callq  b00 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1011:	48 89 c2             	mov    %rax,%rdx
    1014:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1018:	48 89 c6             	mov    %rax,%rsi
    101b:	48 89 d7             	mov    %rdx,%rdi
    101e:	e8 ad fa ff ff       	callq  ad0 <_ZNSolsEPKv@plt>
    1023:	48 8d 35 b2 05 00 00 	lea    0x5b2(%rip),%rsi        # 15dc <_ZStL6ignore+0xb>
    102a:	48 89 c7             	mov    %rax,%rdi
    102d:	e8 ce fa ff ff       	callq  b00 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1032:	48 8d 3d 07 11 20 00 	lea    0x201107(%rip),%rdi        # 202140 <mutext_lock1>
    1039:	e8 82 fa ff ff       	callq  ac0 <pthread_mutex_unlock@plt>
    103e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1042:	48 8b 00             	mov    (%rax),%rax
    1045:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1049:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    104e:	75 02                	jne    1052 <_Z6unlockP5qnode+0x130>
    1050:	eb a0                	jmp    ff2 <_Z6unlockP5qnode+0xd0>
    1052:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    1057:	74 10                	je     1069 <_Z6unlockP5qnode+0x147>
    1059:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    105d:	48 8b 10             	mov    (%rax),%rdx
    1060:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1064:	48 89 10             	mov    %rdx,(%rax)
    1067:	eb 0e                	jmp    1077 <_Z6unlockP5qnode+0x155>
    1069:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    106d:	48 8b 00             	mov    (%rax),%rax
    1070:	c6 40 08 00          	movb   $0x0,0x8(%rax)
    1074:	eb 01                	jmp    1077 <_Z6unlockP5qnode+0x155>
    1076:	90                   	nop
    1077:	c9                   	leaveq 
    1078:	c3                   	retq   

0000000000001079 <_Z12lock_examplePv>:
    1079:	55                   	push   %rbp
    107a:	48 89 e5             	mov    %rsp,%rbp
    107d:	48 83 ec 20          	sub    $0x20,%rsp
    1081:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1085:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    108c:	81 7d f4 f3 01 00 00 	cmpl   $0x1f3,-0xc(%rbp)
    1093:	7f 47                	jg     10dc <_Z12lock_examplePv+0x63>
    1095:	bf 10 00 00 00       	mov    $0x10,%edi
    109a:	e8 71 fa ff ff       	callq  b10 <_Znwm@plt>
    109f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    10a3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    10a7:	48 89 c7             	mov    %rax,%rdi
    10aa:	e8 e8 fc ff ff       	callq  d97 <_Z4lockP5qnode>
    10af:	8b 05 b7 10 20 00    	mov    0x2010b7(%rip),%eax        # 20216c <val>
    10b5:	83 c0 01             	add    $0x1,%eax
    10b8:	89 05 ae 10 20 00    	mov    %eax,0x2010ae(%rip)        # 20216c <val>
    10be:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    10c2:	48 89 c7             	mov    %rax,%rdi
    10c5:	e8 58 fe ff ff       	callq  f22 <_Z6unlockP5qnode>
    10ca:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    10ce:	48 89 c7             	mov    %rax,%rdi
    10d1:	e8 5a fa ff ff       	callq  b30 <free@plt>
    10d6:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    10da:	eb b0                	jmp    108c <_Z12lock_examplePv+0x13>
    10dc:	b8 00 00 00 00       	mov    $0x0,%eax
    10e1:	c9                   	leaveq 
    10e2:	c3                   	retq   

00000000000010e3 <main>:
    10e3:	55                   	push   %rbp
    10e4:	48 89 e5             	mov    %rsp,%rbp
    10e7:	41 57                	push   %r15
    10e9:	41 56                	push   %r14
    10eb:	41 55                	push   %r13
    10ed:	41 54                	push   %r12
    10ef:	53                   	push   %rbx
    10f0:	48 83 ec 38          	sub    $0x38,%rsp
    10f4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    10fb:	00 00 
    10fd:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    1101:	31 c0                	xor    %eax,%eax
    1103:	48 89 e0             	mov    %rsp,%rax
    1106:	48 89 c3             	mov    %rax,%rbx
    1109:	be 00 00 00 00       	mov    $0x0,%esi
    110e:	48 8d 3d 2b 10 20 00 	lea    0x20102b(%rip),%rdi        # 202140 <mutext_lock1>
    1115:	e8 36 fa ff ff       	callq  b50 <pthread_mutex_init@plt>
    111a:	85 c0                	test   %eax,%eax
    111c:	0f 95 c0             	setne  %al
    111f:	84 c0                	test   %al,%al
    1121:	74 19                	je     113c <main+0x59>
    1123:	48 8d 3d 39 05 00 00 	lea    0x539(%rip),%rdi        # 1663 <_ZStL6ignore+0x92>
    112a:	e8 41 fa ff ff       	callq  b70 <puts@plt>
    112f:	b8 01 00 00 00       	mov    $0x1,%eax
    1134:	48 89 dc             	mov    %rbx,%rsp
    1137:	e9 6b 01 00 00       	jmpq   12a7 <main+0x1c4>
    113c:	48 8b 05 2d 10 20 00 	mov    0x20102d(%rip),%rax        # 202170 <L>
    1143:	be 00 00 00 00       	mov    $0x0,%esi
    1148:	48 89 c7             	mov    %rax,%rdi
    114b:	e8 6e 03 00 00       	callq  14be <_ZNSt6atomicIP5qnodeEaSES1_>
    1150:	c7 45 b4 64 00 00 00 	movl   $0x64,-0x4c(%rbp)
    1157:	8b 45 b4             	mov    -0x4c(%rbp),%eax
    115a:	48 98                	cltq   
    115c:	48 83 e8 01          	sub    $0x1,%rax
    1160:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    1164:	48 89 c2             	mov    %rax,%rdx
    1167:	48 83 c2 01          	add    $0x1,%rdx
    116b:	49 89 d6             	mov    %rdx,%r14
    116e:	41 bf 00 00 00 00    	mov    $0x0,%r15d
    1174:	48 89 c2             	mov    %rax,%rdx
    1177:	48 83 c2 01          	add    $0x1,%rdx
    117b:	49 89 d4             	mov    %rdx,%r12
    117e:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    1184:	48 83 c0 01          	add    $0x1,%rax
    1188:	48 c1 e0 03          	shl    $0x3,%rax
    118c:	48 8d 50 07          	lea    0x7(%rax),%rdx
    1190:	b8 10 00 00 00       	mov    $0x10,%eax
    1195:	48 83 e8 01          	sub    $0x1,%rax
    1199:	48 01 d0             	add    %rdx,%rax
    119c:	b9 10 00 00 00       	mov    $0x10,%ecx
    11a1:	ba 00 00 00 00       	mov    $0x0,%edx
    11a6:	48 f7 f1             	div    %rcx
    11a9:	48 6b c0 10          	imul   $0x10,%rax,%rax
    11ad:	48 29 c4             	sub    %rax,%rsp
    11b0:	48 89 e0             	mov    %rsp,%rax
    11b3:	48 83 c0 07          	add    $0x7,%rax
    11b7:	48 c1 e8 03          	shr    $0x3,%rax
    11bb:	48 c1 e0 03          	shl    $0x3,%rax
    11bf:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    11c3:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%rbp)
    11ca:	8b 45 b0             	mov    -0x50(%rbp),%eax
    11cd:	3b 45 b4             	cmp    -0x4c(%rbp),%eax
    11d0:	7d 33                	jge    1205 <main+0x122>
    11d2:	8b 45 b0             	mov    -0x50(%rbp),%eax
    11d5:	48 98                	cltq   
    11d7:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    11de:	00 
    11df:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    11e3:	48 01 d0             	add    %rdx,%rax
    11e6:	b9 00 00 00 00       	mov    $0x0,%ecx
    11eb:	48 8d 15 87 fe ff ff 	lea    -0x179(%rip),%rdx        # 1079 <_Z12lock_examplePv>
    11f2:	be 00 00 00 00       	mov    $0x0,%esi
    11f7:	48 89 c7             	mov    %rax,%rdi
    11fa:	e8 b1 f8 ff ff       	callq  ab0 <pthread_create@plt>
    11ff:	83 45 b0 01          	addl   $0x1,-0x50(%rbp)
    1203:	eb c5                	jmp    11ca <main+0xe7>
    1205:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%rbp)
    120c:	8b 45 ac             	mov    -0x54(%rbp),%eax
    120f:	3b 45 b4             	cmp    -0x4c(%rbp),%eax
    1212:	7d 21                	jge    1235 <main+0x152>
    1214:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    1218:	8b 55 ac             	mov    -0x54(%rbp),%edx
    121b:	48 63 d2             	movslq %edx,%rdx
    121e:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
    1222:	be 00 00 00 00       	mov    $0x0,%esi
    1227:	48 89 c7             	mov    %rax,%rdi
    122a:	e8 71 f8 ff ff       	callq  aa0 <pthread_join@plt>
    122f:	83 45 ac 01          	addl   $0x1,-0x54(%rbp)
    1233:	eb d7                	jmp    120c <main+0x129>
    1235:	48 8d 35 3f 04 00 00 	lea    0x43f(%rip),%rsi        # 167b <_ZStL6ignore+0xaa>
    123c:	48 8d 3d dd 0d 20 00 	lea    0x200ddd(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
    1243:	e8 b8 f8 ff ff       	callq  b00 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1248:	48 89 c2             	mov    %rax,%rdx
    124b:	8b 05 1b 0f 20 00    	mov    0x200f1b(%rip),%eax        # 20216c <val>
    1251:	89 c6                	mov    %eax,%esi
    1253:	48 89 d7             	mov    %rdx,%rdi
    1256:	e8 25 f9 ff ff       	callq  b80 <_ZNSolsEi@plt>
    125b:	48 8d 35 7a 03 00 00 	lea    0x37a(%rip),%rsi        # 15dc <_ZStL6ignore+0xb>
    1262:	48 89 c7             	mov    %rax,%rdi
    1265:	e8 96 f8 ff ff       	callq  b00 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    126a:	48 8d 35 15 04 00 00 	lea    0x415(%rip),%rsi        # 1686 <_ZStL6ignore+0xb5>
    1271:	48 8d 3d a8 0d 20 00 	lea    0x200da8(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
    1278:	e8 83 f8 ff ff       	callq  b00 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    127d:	48 89 c2             	mov    %rax,%rdx
    1280:	8b 05 e2 0e 20 00    	mov    0x200ee2(%rip),%eax        # 202168 <came_here>
    1286:	89 c6                	mov    %eax,%esi
    1288:	48 89 d7             	mov    %rdx,%rdi
    128b:	e8 f0 f8 ff ff       	callq  b80 <_ZNSolsEi@plt>
    1290:	48 8d 35 45 03 00 00 	lea    0x345(%rip),%rsi        # 15dc <_ZStL6ignore+0xb>
    1297:	48 89 c7             	mov    %rax,%rdi
    129a:	e8 61 f8 ff ff       	callq  b00 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    129f:	48 89 dc             	mov    %rbx,%rsp
    12a2:	b8 00 00 00 00       	mov    $0x0,%eax
    12a7:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    12ab:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    12b2:	00 00 
    12b4:	74 05                	je     12bb <main+0x1d8>
    12b6:	e8 65 f8 ff ff       	callq  b20 <__stack_chk_fail@plt>
    12bb:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
    12bf:	5b                   	pop    %rbx
    12c0:	41 5c                	pop    %r12
    12c2:	41 5d                	pop    %r13
    12c4:	41 5e                	pop    %r14
    12c6:	41 5f                	pop    %r15
    12c8:	5d                   	pop    %rbp
    12c9:	c3                   	retq   

00000000000012ca <_Z41__static_initialization_and_destruction_0ii>:
    12ca:	55                   	push   %rbp
    12cb:	48 89 e5             	mov    %rsp,%rbp
    12ce:	48 83 ec 10          	sub    $0x10,%rsp
    12d2:	89 7d fc             	mov    %edi,-0x4(%rbp)
    12d5:	89 75 f8             	mov    %esi,-0x8(%rbp)
    12d8:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    12dc:	75 43                	jne    1321 <_Z41__static_initialization_and_destruction_0ii+0x57>
    12de:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    12e5:	75 3a                	jne    1321 <_Z41__static_initialization_and_destruction_0ii+0x57>
    12e7:	48 8d 3d 8a 0e 20 00 	lea    0x200e8a(%rip),%rdi        # 202178 <_ZStL8__ioinit>
    12ee:	e8 6d f8 ff ff       	callq  b60 <_ZNSt8ios_base4InitC1Ev@plt>
    12f3:	48 8d 15 0e 0d 20 00 	lea    0x200d0e(%rip),%rdx        # 202008 <__dso_handle>
    12fa:	48 8d 35 77 0e 20 00 	lea    0x200e77(%rip),%rsi        # 202178 <_ZStL8__ioinit>
    1301:	48 8b 05 f0 0c 20 00 	mov    0x200cf0(%rip),%rax        # 201ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    1308:	48 89 c7             	mov    %rax,%rdi
    130b:	e8 d0 f7 ff ff       	callq  ae0 <__cxa_atexit@plt>
    1310:	bf 08 00 00 00       	mov    $0x8,%edi
    1315:	e8 f6 f7 ff ff       	callq  b10 <_Znwm@plt>
    131a:	48 89 05 4f 0e 20 00 	mov    %rax,0x200e4f(%rip)        # 202170 <L>
    1321:	90                   	nop
    1322:	c9                   	leaveq 
    1323:	c3                   	retq   

0000000000001324 <_GLOBAL__sub_I_mutext_lock1>:
    1324:	55                   	push   %rbp
    1325:	48 89 e5             	mov    %rsp,%rbp
    1328:	be ff ff 00 00       	mov    $0xffff,%esi
    132d:	bf 01 00 00 00       	mov    $0x1,%edi
    1332:	e8 93 ff ff ff       	callq  12ca <_Z41__static_initialization_and_destruction_0ii>
    1337:	5d                   	pop    %rbp
    1338:	c3                   	retq   

0000000000001339 <_ZStanSt12memory_orderSt23__memory_order_modifier>:
    1339:	55                   	push   %rbp
    133a:	48 89 e5             	mov    %rsp,%rbp
    133d:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1340:	89 75 f8             	mov    %esi,-0x8(%rbp)
    1343:	8b 55 fc             	mov    -0x4(%rbp),%edx
    1346:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1349:	21 d0                	and    %edx,%eax
    134b:	5d                   	pop    %rbp
    134c:	c3                   	retq   
    134d:	90                   	nop

000000000000134e <_ZNSt6thread2idC1Ev>:
    134e:	55                   	push   %rbp
    134f:	48 89 e5             	mov    %rsp,%rbp
    1352:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1356:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    135a:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    1361:	90                   	nop
    1362:	5d                   	pop    %rbp
    1363:	c3                   	retq   

0000000000001364 <_ZNSt6thread2idC1Em>:
    1364:	55                   	push   %rbp
    1365:	48 89 e5             	mov    %rsp,%rbp
    1368:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    136c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1370:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1374:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1378:	48 89 10             	mov    %rdx,(%rax)
    137b:	90                   	nop
    137c:	5d                   	pop    %rbp
    137d:	c3                   	retq   

000000000000137e <_ZSteqNSt6thread2idES0_>:
    137e:	55                   	push   %rbp
    137f:	48 89 e5             	mov    %rsp,%rbp
    1382:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1386:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    138a:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    138e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1392:	48 39 c2             	cmp    %rax,%rdx
    1395:	0f 94 c0             	sete   %al
    1398:	5d                   	pop    %rbp
    1399:	c3                   	retq   

000000000000139a <_ZNSt11this_thread6get_idEv>:
    139a:	55                   	push   %rbp
    139b:	48 89 e5             	mov    %rsp,%rbp
    139e:	48 83 ec 10          	sub    $0x10,%rsp
    13a2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    13a9:	00 00 
    13ab:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    13af:	31 c0                	xor    %eax,%eax
    13b1:	e8 f4 f8 ff ff       	callq  caa <_ZL18__gthread_active_pv>
    13b6:	85 c0                	test   %eax,%eax
    13b8:	0f 94 c0             	sete   %al
    13bb:	84 c0                	test   %al,%al
    13bd:	74 17                	je     13d6 <_ZNSt11this_thread6get_idEv+0x3c>
    13bf:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    13c3:	be 01 00 00 00       	mov    $0x1,%esi
    13c8:	48 89 c7             	mov    %rax,%rdi
    13cb:	e8 94 ff ff ff       	callq  1364 <_ZNSt6thread2idC1Em>
    13d0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    13d4:	eb 1b                	jmp    13f1 <_ZNSt11this_thread6get_idEv+0x57>
    13d6:	e8 ee f8 ff ff       	callq  cc9 <_ZL14__gthread_selfv>
    13db:	48 89 c2             	mov    %rax,%rdx
    13de:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    13e2:	48 89 d6             	mov    %rdx,%rsi
    13e5:	48 89 c7             	mov    %rax,%rdi
    13e8:	e8 77 ff ff ff       	callq  1364 <_ZNSt6thread2idC1Em>
    13ed:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    13f1:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    13f5:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    13fc:	00 00 
    13fe:	74 05                	je     1405 <_ZNSt11this_thread6get_idEv+0x6b>
    1400:	e8 1b f7 ff ff       	callq  b20 <__stack_chk_fail@plt>
    1405:	c9                   	leaveq 
    1406:	c3                   	retq   

0000000000001407 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE>:
    1407:	55                   	push   %rbp
    1408:	48 89 e5             	mov    %rsp,%rbp
    140b:	48 83 ec 20          	sub    $0x20,%rsp
    140f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1413:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    1417:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    141e:	00 00 
    1420:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1424:	31 c0                	xor    %eax,%eax
    1426:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    142a:	48 89 c7             	mov    %rax,%rdi
    142d:	e8 1c ff ff ff       	callq  134e <_ZNSt6thread2idC1Ev>
    1432:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1436:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    143a:	48 89 d6             	mov    %rdx,%rsi
    143d:	48 89 c7             	mov    %rax,%rdi
    1440:	e8 39 ff ff ff       	callq  137e <_ZSteqNSt6thread2idES0_>
    1445:	84 c0                	test   %al,%al
    1447:	74 15                	je     145e <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE+0x57>
    1449:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    144d:	48 8d 35 44 02 00 00 	lea    0x244(%rip),%rsi        # 1698 <_ZStL6ignore+0xc7>
    1454:	48 89 c7             	mov    %rax,%rdi
    1457:	e8 a4 f6 ff ff       	callq  b00 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    145c:	eb 13                	jmp    1471 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE+0x6a>
    145e:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    1462:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1466:	48 89 d6             	mov    %rdx,%rsi
    1469:	48 89 c7             	mov    %rax,%rdi
    146c:	e8 1f f6 ff ff       	callq  a90 <_ZNSolsEm@plt>
    1471:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    1475:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    147c:	00 00 
    147e:	74 05                	je     1485 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_NSt6thread2idE+0x7e>
    1480:	e8 9b f6 ff ff       	callq  b20 <__stack_chk_fail@plt>
    1485:	c9                   	leaveq 
    1486:	c3                   	retq   
    1487:	90                   	nop

0000000000001488 <_ZNSt6atomicIP5qnodeE8exchangeES1_St12memory_order>:
    1488:	55                   	push   %rbp
    1489:	48 89 e5             	mov    %rsp,%rbp
    148c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1490:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    1494:	89 55 cc             	mov    %edx,-0x34(%rbp)
    1497:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    149b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    149f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    14a3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    14a7:	8b 45 cc             	mov    -0x34(%rbp),%eax
    14aa:	89 45 ec             	mov    %eax,-0x14(%rbp)
    14ad:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    14b1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    14b5:	48 87 10             	xchg   %rdx,(%rax)
    14b8:	48 89 d0             	mov    %rdx,%rax
    14bb:	90                   	nop
    14bc:	5d                   	pop    %rbp
    14bd:	c3                   	retq   

00000000000014be <_ZNSt6atomicIP5qnodeEaSES1_>:
    14be:	55                   	push   %rbp
    14bf:	48 89 e5             	mov    %rsp,%rbp
    14c2:	48 83 ec 10          	sub    $0x10,%rsp
    14c6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    14ca:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    14ce:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14d2:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    14d6:	48 89 d6             	mov    %rdx,%rsi
    14d9:	48 89 c7             	mov    %rax,%rdi
    14dc:	e8 03 00 00 00       	callq  14e4 <_ZNSt13__atomic_baseIP5qnodeEaSES1_>
    14e1:	c9                   	leaveq 
    14e2:	c3                   	retq   
    14e3:	90                   	nop

00000000000014e4 <_ZNSt13__atomic_baseIP5qnodeEaSES1_>:
    14e4:	55                   	push   %rbp
    14e5:	48 89 e5             	mov    %rsp,%rbp
    14e8:	48 83 ec 30          	sub    $0x30,%rsp
    14ec:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    14f0:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    14f4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    14f8:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    14fc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1500:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1504:	c7 45 e8 05 00 00 00 	movl   $0x5,-0x18(%rbp)
    150b:	8b 45 e8             	mov    -0x18(%rbp),%eax
    150e:	be ff ff 00 00       	mov    $0xffff,%esi
    1513:	89 c7                	mov    %eax,%edi
    1515:	e8 1f fe ff ff       	callq  1339 <_ZStanSt12memory_orderSt23__memory_order_modifier>
    151a:	89 45 ec             	mov    %eax,-0x14(%rbp)
    151d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1521:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1525:	48 89 10             	mov    %rdx,(%rax)
    1528:	0f ae f0             	mfence 
    152b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    152f:	c9                   	leaveq 
    1530:	c3                   	retq   
    1531:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1538:	00 00 00 
    153b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001540 <__libc_csu_init>:
    1540:	41 57                	push   %r15
    1542:	41 56                	push   %r14
    1544:	49 89 d7             	mov    %rdx,%r15
    1547:	41 55                	push   %r13
    1549:	41 54                	push   %r12
    154b:	4c 8d 25 ae 07 20 00 	lea    0x2007ae(%rip),%r12        # 201d00 <__frame_dummy_init_array_entry>
    1552:	55                   	push   %rbp
    1553:	48 8d 2d b6 07 20 00 	lea    0x2007b6(%rip),%rbp        # 201d10 <__init_array_end>
    155a:	53                   	push   %rbx
    155b:	41 89 fd             	mov    %edi,%r13d
    155e:	49 89 f6             	mov    %rsi,%r14
    1561:	4c 29 e5             	sub    %r12,%rbp
    1564:	48 83 ec 08          	sub    $0x8,%rsp
    1568:	48 c1 fd 03          	sar    $0x3,%rbp
    156c:	e8 ef f4 ff ff       	callq  a60 <_init>
    1571:	48 85 ed             	test   %rbp,%rbp
    1574:	74 20                	je     1596 <__libc_csu_init+0x56>
    1576:	31 db                	xor    %ebx,%ebx
    1578:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    157f:	00 
    1580:	4c 89 fa             	mov    %r15,%rdx
    1583:	4c 89 f6             	mov    %r14,%rsi
    1586:	44 89 ef             	mov    %r13d,%edi
    1589:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    158d:	48 83 c3 01          	add    $0x1,%rbx
    1591:	48 39 dd             	cmp    %rbx,%rbp
    1594:	75 ea                	jne    1580 <__libc_csu_init+0x40>
    1596:	48 83 c4 08          	add    $0x8,%rsp
    159a:	5b                   	pop    %rbx
    159b:	5d                   	pop    %rbp
    159c:	41 5c                	pop    %r12
    159e:	41 5d                	pop    %r13
    15a0:	41 5e                	pop    %r14
    15a2:	41 5f                	pop    %r15
    15a4:	c3                   	retq   
    15a5:	90                   	nop
    15a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    15ad:	00 00 00 

00000000000015b0 <__libc_csu_fini>:
    15b0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000000015b4 <_fini>:
    15b4:	48 83 ec 08          	sub    $0x8,%rsp
    15b8:	48 83 c4 08          	add    $0x8,%rsp
    15bc:	c3                   	retq   
