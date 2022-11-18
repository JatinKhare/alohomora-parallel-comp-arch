
tas_ubuntu.o:     file format elf64-x86-64


Disassembly of section .init:

00000000000007d0 <_init>:
 7d0:	48 83 ec 08          	sub    $0x8,%rsp
 7d4:	48 8b 05 0d 18 20 00 	mov    0x20180d(%rip),%rax        # 201fe8 <__gmon_start__>
 7db:	48 85 c0             	test   %rax,%rax
 7de:	74 02                	je     7e2 <_init+0x12>
 7e0:	ff d0                	callq  *%rax
 7e2:	48 83 c4 08          	add    $0x8,%rsp
 7e6:	c3                   	retq   

Disassembly of section .plt:

00000000000007f0 <.plt>:
 7f0:	ff 35 92 17 20 00    	pushq  0x201792(%rip)        # 201f88 <_GLOBAL_OFFSET_TABLE_+0x8>
 7f6:	ff 25 94 17 20 00    	jmpq   *0x201794(%rip)        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x10>
 7fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000800 <pthread_join@plt>:
 800:	ff 25 92 17 20 00    	jmpq   *0x201792(%rip)        # 201f98 <pthread_join@GLIBC_2.2.5>
 806:	68 00 00 00 00       	pushq  $0x0
 80b:	e9 e0 ff ff ff       	jmpq   7f0 <.plt>

0000000000000810 <pthread_create@plt>:
 810:	ff 25 8a 17 20 00    	jmpq   *0x20178a(%rip)        # 201fa0 <pthread_create@GLIBC_2.2.5>
 816:	68 01 00 00 00       	pushq  $0x1
 81b:	e9 d0 ff ff ff       	jmpq   7f0 <.plt>

0000000000000820 <__cxa_atexit@plt>:
 820:	ff 25 82 17 20 00    	jmpq   *0x201782(%rip)        # 201fa8 <__cxa_atexit@GLIBC_2.2.5>
 826:	68 02 00 00 00       	pushq  $0x2
 82b:	e9 c0 ff ff ff       	jmpq   7f0 <.plt>

0000000000000830 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
 830:	ff 25 7a 17 20 00    	jmpq   *0x20177a(%rip)        # 201fb0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
 836:	68 03 00 00 00       	pushq  $0x3
 83b:	e9 b0 ff ff ff       	jmpq   7f0 <.plt>

0000000000000840 <__stack_chk_fail@plt>:
 840:	ff 25 72 17 20 00    	jmpq   *0x201772(%rip)        # 201fb8 <__stack_chk_fail@GLIBC_2.4>
 846:	68 04 00 00 00       	pushq  $0x4
 84b:	e9 a0 ff ff ff       	jmpq   7f0 <.plt>

0000000000000850 <_ZNSt8ios_base4InitC1Ev@plt>:
 850:	ff 25 6a 17 20 00    	jmpq   *0x20176a(%rip)        # 201fc0 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
 856:	68 05 00 00 00       	pushq  $0x5
 85b:	e9 90 ff ff ff       	jmpq   7f0 <.plt>

0000000000000860 <_ZNSolsEi@plt>:
 860:	ff 25 62 17 20 00    	jmpq   *0x201762(%rip)        # 201fc8 <_ZNSolsEi@GLIBCXX_3.4>
 866:	68 06 00 00 00       	pushq  $0x6
 86b:	e9 80 ff ff ff       	jmpq   7f0 <.plt>

Disassembly of section .plt.got:

0000000000000870 <__cxa_finalize@plt>:
 870:	ff 25 5a 17 20 00    	jmpq   *0x20175a(%rip)        # 201fd0 <__cxa_finalize@GLIBC_2.2.5>
 876:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000880 <_start>:
 880:	31 ed                	xor    %ebp,%ebp
 882:	49 89 d1             	mov    %rdx,%r9
 885:	5e                   	pop    %rsi
 886:	48 89 e2             	mov    %rsp,%rdx
 889:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 88d:	50                   	push   %rax
 88e:	54                   	push   %rsp
 88f:	4c 8d 05 ba 03 00 00 	lea    0x3ba(%rip),%r8        # c50 <__libc_csu_fini>
 896:	48 8d 0d 43 03 00 00 	lea    0x343(%rip),%rcx        # be0 <__libc_csu_init>
 89d:	48 8d 3d 83 01 00 00 	lea    0x183(%rip),%rdi        # a27 <main>
 8a4:	ff 15 36 17 20 00    	callq  *0x201736(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 8aa:	f4                   	hlt    
 8ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000008b0 <deregister_tm_clones>:
 8b0:	48 8d 3d 59 17 20 00 	lea    0x201759(%rip),%rdi        # 202010 <__TMC_END__>
 8b7:	55                   	push   %rbp
 8b8:	48 8d 05 51 17 20 00 	lea    0x201751(%rip),%rax        # 202010 <__TMC_END__>
 8bf:	48 39 f8             	cmp    %rdi,%rax
 8c2:	48 89 e5             	mov    %rsp,%rbp
 8c5:	74 19                	je     8e0 <deregister_tm_clones+0x30>
 8c7:	48 8b 05 0a 17 20 00 	mov    0x20170a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 8ce:	48 85 c0             	test   %rax,%rax
 8d1:	74 0d                	je     8e0 <deregister_tm_clones+0x30>
 8d3:	5d                   	pop    %rbp
 8d4:	ff e0                	jmpq   *%rax
 8d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8dd:	00 00 00 
 8e0:	5d                   	pop    %rbp
 8e1:	c3                   	retq   
 8e2:	0f 1f 40 00          	nopl   0x0(%rax)
 8e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8ed:	00 00 00 

00000000000008f0 <register_tm_clones>:
 8f0:	48 8d 3d 19 17 20 00 	lea    0x201719(%rip),%rdi        # 202010 <__TMC_END__>
 8f7:	48 8d 35 12 17 20 00 	lea    0x201712(%rip),%rsi        # 202010 <__TMC_END__>
 8fe:	55                   	push   %rbp
 8ff:	48 29 fe             	sub    %rdi,%rsi
 902:	48 89 e5             	mov    %rsp,%rbp
 905:	48 c1 fe 03          	sar    $0x3,%rsi
 909:	48 89 f0             	mov    %rsi,%rax
 90c:	48 c1 e8 3f          	shr    $0x3f,%rax
 910:	48 01 c6             	add    %rax,%rsi
 913:	48 d1 fe             	sar    %rsi
 916:	74 18                	je     930 <register_tm_clones+0x40>
 918:	48 8b 05 d1 16 20 00 	mov    0x2016d1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 91f:	48 85 c0             	test   %rax,%rax
 922:	74 0c                	je     930 <register_tm_clones+0x40>
 924:	5d                   	pop    %rbp
 925:	ff e0                	jmpq   *%rax
 927:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 92e:	00 00 
 930:	5d                   	pop    %rbp
 931:	c3                   	retq   
 932:	0f 1f 40 00          	nopl   0x0(%rax)
 936:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 93d:	00 00 00 

0000000000000940 <__do_global_dtors_aux>:
 940:	80 3d e9 17 20 00 00 	cmpb   $0x0,0x2017e9(%rip)        # 202130 <completed.7698>
 947:	75 2f                	jne    978 <__do_global_dtors_aux+0x38>
 949:	48 83 3d 7f 16 20 00 	cmpq   $0x0,0x20167f(%rip)        # 201fd0 <__cxa_finalize@GLIBC_2.2.5>
 950:	00 
 951:	55                   	push   %rbp
 952:	48 89 e5             	mov    %rsp,%rbp
 955:	74 0c                	je     963 <__do_global_dtors_aux+0x23>
 957:	48 8b 3d aa 16 20 00 	mov    0x2016aa(%rip),%rdi        # 202008 <__dso_handle>
 95e:	e8 0d ff ff ff       	callq  870 <__cxa_finalize@plt>
 963:	e8 48 ff ff ff       	callq  8b0 <deregister_tm_clones>
 968:	c6 05 c1 17 20 00 01 	movb   $0x1,0x2017c1(%rip)        # 202130 <completed.7698>
 96f:	5d                   	pop    %rbp
 970:	c3                   	retq   
 971:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 978:	f3 c3                	repz retq 
 97a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000980 <frame_dummy>:
 980:	55                   	push   %rbp
 981:	48 89 e5             	mov    %rsp,%rbp
 984:	5d                   	pop    %rbp
 985:	e9 66 ff ff ff       	jmpq   8f0 <register_tm_clones>

000000000000098a <_Z7my_lockv>:
 98a:	55                   	push   %rbp
 98b:	48 89 e5             	mov    %rsp,%rbp
 98e:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
 995:	c7 45 fc 05 00 00 00 	movl   $0x5,-0x4(%rbp)
 99c:	8b 55 f8             	mov    -0x8(%rbp),%edx
 99f:	48 8d 05 8e 17 20 00 	lea    0x20178e(%rip),%rax        # 202134 <lock_flag>
 9a6:	87 10                	xchg   %edx,(%rax)
 9a8:	89 d0                	mov    %edx,%eax
 9aa:	85 c0                	test   %eax,%eax
 9ac:	0f 95 c0             	setne  %al
 9af:	84 c0                	test   %al,%al
 9b1:	74 02                	je     9b5 <_Z7my_lockv+0x2b>
 9b3:	eb d9                	jmp    98e <_Z7my_lockv+0x4>
 9b5:	90                   	nop
 9b6:	5d                   	pop    %rbp
 9b7:	c3                   	retq   

00000000000009b8 <_Z9my_unlockv>:
 9b8:	55                   	push   %rbp
 9b9:	48 89 e5             	mov    %rsp,%rbp
 9bc:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
 9c3:	c7 45 fc 05 00 00 00 	movl   $0x5,-0x4(%rbp)
 9ca:	8b 55 f8             	mov    -0x8(%rbp),%edx
 9cd:	48 8d 05 60 17 20 00 	lea    0x201760(%rip),%rax        # 202134 <lock_flag>
 9d4:	87 10                	xchg   %edx,(%rax)
 9d6:	90                   	nop
 9d7:	5d                   	pop    %rbp
 9d8:	c3                   	retq   

00000000000009d9 <_Z16increase_counterv>:
 9d9:	55                   	push   %rbp
 9da:	48 89 e5             	mov    %rsp,%rbp
 9dd:	8b 05 55 17 20 00    	mov    0x201755(%rip),%eax        # 202138 <val>
 9e3:	83 c0 01             	add    $0x1,%eax
 9e6:	89 05 4c 17 20 00    	mov    %eax,0x20174c(%rip)        # 202138 <val>
 9ec:	90                   	nop
 9ed:	5d                   	pop    %rbp
 9ee:	c3                   	retq   

00000000000009ef <_Z12lock_examplePv>:
 9ef:	55                   	push   %rbp
 9f0:	48 89 e5             	mov    %rsp,%rbp
 9f3:	48 83 ec 18          	sub    $0x18,%rsp
 9f7:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 9fb:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
 a02:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%rbp)
 a09:	7f 15                	jg     a20 <_Z12lock_examplePv+0x31>
 a0b:	e8 7a ff ff ff       	callq  98a <_Z7my_lockv>
 a10:	e8 c4 ff ff ff       	callq  9d9 <_Z16increase_counterv>
 a15:	e8 9e ff ff ff       	callq  9b8 <_Z9my_unlockv>
 a1a:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 a1e:	eb e2                	jmp    a02 <_Z12lock_examplePv+0x13>
 a20:	b8 00 00 00 00       	mov    $0x0,%eax
 a25:	c9                   	leaveq 
 a26:	c3                   	retq   

0000000000000a27 <main>:
 a27:	55                   	push   %rbp
 a28:	48 89 e5             	mov    %rsp,%rbp
 a2b:	53                   	push   %rbx
 a2c:	48 83 ec 38          	sub    $0x38,%rsp
 a30:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 a37:	00 00 
 a39:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 a3d:	31 c0                	xor    %eax,%eax
 a3f:	48 89 e0             	mov    %rsp,%rax
 a42:	48 89 c3             	mov    %rax,%rbx
 a45:	c7 45 d4 00 04 00 00 	movl   $0x400,-0x2c(%rbp)
 a4c:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 a4f:	48 98                	cltq   
 a51:	48 83 e8 01          	sub    $0x1,%rax
 a55:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
 a59:	48 89 c2             	mov    %rax,%rdx
 a5c:	48 83 c2 01          	add    $0x1,%rdx
 a60:	49 89 d0             	mov    %rdx,%r8
 a63:	41 b9 00 00 00 00    	mov    $0x0,%r9d
 a69:	48 89 c2             	mov    %rax,%rdx
 a6c:	48 83 c2 01          	add    $0x1,%rdx
 a70:	48 89 d6             	mov    %rdx,%rsi
 a73:	bf 00 00 00 00       	mov    $0x0,%edi
 a78:	48 83 c0 01          	add    $0x1,%rax
 a7c:	48 c1 e0 03          	shl    $0x3,%rax
 a80:	48 8d 50 07          	lea    0x7(%rax),%rdx
 a84:	b8 10 00 00 00       	mov    $0x10,%eax
 a89:	48 83 e8 01          	sub    $0x1,%rax
 a8d:	48 01 d0             	add    %rdx,%rax
 a90:	b9 10 00 00 00       	mov    $0x10,%ecx
 a95:	ba 00 00 00 00       	mov    $0x0,%edx
 a9a:	48 f7 f1             	div    %rcx
 a9d:	48 6b c0 10          	imul   $0x10,%rax,%rax
 aa1:	48 29 c4             	sub    %rax,%rsp
 aa4:	48 89 e0             	mov    %rsp,%rax
 aa7:	48 83 c0 07          	add    $0x7,%rax
 aab:	48 c1 e8 03          	shr    $0x3,%rax
 aaf:	48 c1 e0 03          	shl    $0x3,%rax
 ab3:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
 ab7:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%rbp)
 abe:	8b 45 d0             	mov    -0x30(%rbp),%eax
 ac1:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
 ac4:	7d 33                	jge    af9 <main+0xd2>
 ac6:	8b 45 d0             	mov    -0x30(%rbp),%eax
 ac9:	48 98                	cltq   
 acb:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 ad2:	00 
 ad3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 ad7:	48 01 d0             	add    %rdx,%rax
 ada:	b9 00 00 00 00       	mov    $0x0,%ecx
 adf:	48 8d 15 09 ff ff ff 	lea    -0xf7(%rip),%rdx        # 9ef <_Z12lock_examplePv>
 ae6:	be 00 00 00 00       	mov    $0x0,%esi
 aeb:	48 89 c7             	mov    %rax,%rdi
 aee:	e8 1d fd ff ff       	callq  810 <pthread_create@plt>
 af3:	83 45 d0 01          	addl   $0x1,-0x30(%rbp)
 af7:	eb c5                	jmp    abe <main+0x97>
 af9:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
 b00:	8b 45 cc             	mov    -0x34(%rbp),%eax
 b03:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
 b06:	7d 21                	jge    b29 <main+0x102>
 b08:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 b0c:	8b 55 cc             	mov    -0x34(%rbp),%edx
 b0f:	48 63 d2             	movslq %edx,%rdx
 b12:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
 b16:	be 00 00 00 00       	mov    $0x0,%esi
 b1b:	48 89 c7             	mov    %rax,%rdi
 b1e:	e8 dd fc ff ff       	callq  800 <pthread_join@plt>
 b23:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
 b27:	eb d7                	jmp    b00 <main+0xd9>
 b29:	48 8d 35 3e 01 00 00 	lea    0x13e(%rip),%rsi        # c6e <_ZStL6ignore+0x1>
 b30:	48 8d 3d e9 14 20 00 	lea    0x2014e9(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
 b37:	e8 f4 fc ff ff       	callq  830 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
 b3c:	48 89 c2             	mov    %rax,%rdx
 b3f:	8b 05 f3 15 20 00    	mov    0x2015f3(%rip),%eax        # 202138 <val>
 b45:	89 c6                	mov    %eax,%esi
 b47:	48 89 d7             	mov    %rdx,%rdi
 b4a:	e8 11 fd ff ff       	callq  860 <_ZNSolsEi@plt>
 b4f:	48 8d 35 23 01 00 00 	lea    0x123(%rip),%rsi        # c79 <_ZStL6ignore+0xc>
 b56:	48 89 c7             	mov    %rax,%rdi
 b59:	e8 d2 fc ff ff       	callq  830 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
 b5e:	48 89 dc             	mov    %rbx,%rsp
 b61:	b8 00 00 00 00       	mov    $0x0,%eax
 b66:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
 b6a:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 b71:	00 00 
 b73:	74 05                	je     b7a <main+0x153>
 b75:	e8 c6 fc ff ff       	callq  840 <__stack_chk_fail@plt>
 b7a:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
 b7e:	c9                   	leaveq 
 b7f:	c3                   	retq   

0000000000000b80 <_Z41__static_initialization_and_destruction_0ii>:
 b80:	55                   	push   %rbp
 b81:	48 89 e5             	mov    %rsp,%rbp
 b84:	48 83 ec 10          	sub    $0x10,%rsp
 b88:	89 7d fc             	mov    %edi,-0x4(%rbp)
 b8b:	89 75 f8             	mov    %esi,-0x8(%rbp)
 b8e:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
 b92:	75 32                	jne    bc6 <_Z41__static_initialization_and_destruction_0ii+0x46>
 b94:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
 b9b:	75 29                	jne    bc6 <_Z41__static_initialization_and_destruction_0ii+0x46>
 b9d:	48 8d 3d 98 15 20 00 	lea    0x201598(%rip),%rdi        # 20213c <_ZStL8__ioinit>
 ba4:	e8 a7 fc ff ff       	callq  850 <_ZNSt8ios_base4InitC1Ev@plt>
 ba9:	48 8d 15 58 14 20 00 	lea    0x201458(%rip),%rdx        # 202008 <__dso_handle>
 bb0:	48 8d 35 85 15 20 00 	lea    0x201585(%rip),%rsi        # 20213c <_ZStL8__ioinit>
 bb7:	48 8b 05 3a 14 20 00 	mov    0x20143a(%rip),%rax        # 201ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
 bbe:	48 89 c7             	mov    %rax,%rdi
 bc1:	e8 5a fc ff ff       	callq  820 <__cxa_atexit@plt>
 bc6:	90                   	nop
 bc7:	c9                   	leaveq 
 bc8:	c3                   	retq   

0000000000000bc9 <_GLOBAL__sub_I_lock_flag>:
 bc9:	55                   	push   %rbp
 bca:	48 89 e5             	mov    %rsp,%rbp
 bcd:	be ff ff 00 00       	mov    $0xffff,%esi
 bd2:	bf 01 00 00 00       	mov    $0x1,%edi
 bd7:	e8 a4 ff ff ff       	callq  b80 <_Z41__static_initialization_and_destruction_0ii>
 bdc:	5d                   	pop    %rbp
 bdd:	c3                   	retq   
 bde:	66 90                	xchg   %ax,%ax

0000000000000be0 <__libc_csu_init>:
 be0:	41 57                	push   %r15
 be2:	41 56                	push   %r14
 be4:	49 89 d7             	mov    %rdx,%r15
 be7:	41 55                	push   %r13
 be9:	41 54                	push   %r12
 beb:	4c 8d 25 66 11 20 00 	lea    0x201166(%rip),%r12        # 201d58 <__frame_dummy_init_array_entry>
 bf2:	55                   	push   %rbp
 bf3:	48 8d 2d 6e 11 20 00 	lea    0x20116e(%rip),%rbp        # 201d68 <__init_array_end>
 bfa:	53                   	push   %rbx
 bfb:	41 89 fd             	mov    %edi,%r13d
 bfe:	49 89 f6             	mov    %rsi,%r14
 c01:	4c 29 e5             	sub    %r12,%rbp
 c04:	48 83 ec 08          	sub    $0x8,%rsp
 c08:	48 c1 fd 03          	sar    $0x3,%rbp
 c0c:	e8 bf fb ff ff       	callq  7d0 <_init>
 c11:	48 85 ed             	test   %rbp,%rbp
 c14:	74 20                	je     c36 <__libc_csu_init+0x56>
 c16:	31 db                	xor    %ebx,%ebx
 c18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c1f:	00 
 c20:	4c 89 fa             	mov    %r15,%rdx
 c23:	4c 89 f6             	mov    %r14,%rsi
 c26:	44 89 ef             	mov    %r13d,%edi
 c29:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c2d:	48 83 c3 01          	add    $0x1,%rbx
 c31:	48 39 dd             	cmp    %rbx,%rbp
 c34:	75 ea                	jne    c20 <__libc_csu_init+0x40>
 c36:	48 83 c4 08          	add    $0x8,%rsp
 c3a:	5b                   	pop    %rbx
 c3b:	5d                   	pop    %rbp
 c3c:	41 5c                	pop    %r12
 c3e:	41 5d                	pop    %r13
 c40:	41 5e                	pop    %r14
 c42:	41 5f                	pop    %r15
 c44:	c3                   	retq   
 c45:	90                   	nop
 c46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c4d:	00 00 00 

0000000000000c50 <__libc_csu_fini>:
 c50:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000c54 <_fini>:
 c54:	48 83 ec 08          	sub    $0x8,%rsp
 c58:	48 83 c4 08          	add    $0x8,%rsp
 c5c:	c3                   	retq   
