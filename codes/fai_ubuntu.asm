
fai_ubuntu.o:     file format elf64-x86-64


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
 88f:	4c 8d 05 1a 04 00 00 	lea    0x41a(%rip),%r8        # cb0 <__libc_csu_fini>
 896:	48 8d 0d a3 03 00 00 	lea    0x3a3(%rip),%rcx        # c40 <__libc_csu_init>
 89d:	48 8d 3d cf 01 00 00 	lea    0x1cf(%rip),%rdi        # a73 <main>
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
 98e:	48 83 ec 10          	sub    $0x10,%rsp
 992:	c7 45 f0 05 00 00 00 	movl   $0x5,-0x10(%rbp)
 999:	8b 45 f0             	mov    -0x10(%rbp),%eax
 99c:	be ff ff 00 00       	mov    $0xffff,%esi
 9a1:	89 c7                	mov    %eax,%edi
 9a3:	e8 82 02 00 00       	callq  c2a <_ZStanSt12memory_orderSt23__memory_order_modifier>
 9a8:	89 45 f4             	mov    %eax,-0xc(%rbp)
 9ab:	48 8d 05 86 17 20 00 	lea    0x201786(%rip),%rax        # 202138 <lock_flag>
 9b2:	8b 00                	mov    (%rax),%eax
 9b4:	85 c0                	test   %eax,%eax
 9b6:	0f 95 c0             	setne  %al
 9b9:	84 c0                	test   %al,%al
 9bb:	74 02                	je     9bf <_Z7my_lockv+0x35>
 9bd:	eb d3                	jmp    992 <_Z7my_lockv+0x8>
 9bf:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
 9c6:	c7 45 fc 05 00 00 00 	movl   $0x5,-0x4(%rbp)
 9cd:	8b 55 f8             	mov    -0x8(%rbp),%edx
 9d0:	48 8d 05 61 17 20 00 	lea    0x201761(%rip),%rax        # 202138 <lock_flag>
 9d7:	f0 0f c1 10          	lock xadd %edx,(%rax)
 9db:	89 d0                	mov    %edx,%eax
 9dd:	85 c0                	test   %eax,%eax
 9df:	0f 95 c0             	setne  %al
 9e2:	84 c0                	test   %al,%al
 9e4:	74 02                	je     9e8 <_Z7my_lockv+0x5e>
 9e6:	eb aa                	jmp    992 <_Z7my_lockv+0x8>
 9e8:	90                   	nop
 9e9:	c9                   	leaveq 
 9ea:	c3                   	retq   

00000000000009eb <_Z9my_unlockv>:
 9eb:	55                   	push   %rbp
 9ec:	48 89 e5             	mov    %rsp,%rbp
 9ef:	48 83 ec 10          	sub    $0x10,%rsp
 9f3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
 9fa:	c7 45 f8 05 00 00 00 	movl   $0x5,-0x8(%rbp)
 a01:	8b 45 f8             	mov    -0x8(%rbp),%eax
 a04:	be ff ff 00 00       	mov    $0xffff,%esi
 a09:	89 c7                	mov    %eax,%edi
 a0b:	e8 1a 02 00 00       	callq  c2a <_ZStanSt12memory_orderSt23__memory_order_modifier>
 a10:	89 45 fc             	mov    %eax,-0x4(%rbp)
 a13:	8b 55 f4             	mov    -0xc(%rbp),%edx
 a16:	48 8d 05 1b 17 20 00 	lea    0x20171b(%rip),%rax        # 202138 <lock_flag>
 a1d:	89 10                	mov    %edx,(%rax)
 a1f:	0f ae f0             	mfence 
 a22:	90                   	nop
 a23:	c9                   	leaveq 
 a24:	c3                   	retq   

0000000000000a25 <_Z16increase_counterv>:
 a25:	55                   	push   %rbp
 a26:	48 89 e5             	mov    %rsp,%rbp
 a29:	8b 05 0d 17 20 00    	mov    0x20170d(%rip),%eax        # 20213c <val>
 a2f:	83 c0 01             	add    $0x1,%eax
 a32:	89 05 04 17 20 00    	mov    %eax,0x201704(%rip)        # 20213c <val>
 a38:	90                   	nop
 a39:	5d                   	pop    %rbp
 a3a:	c3                   	retq   

0000000000000a3b <_Z12lock_examplePv>:
 a3b:	55                   	push   %rbp
 a3c:	48 89 e5             	mov    %rsp,%rbp
 a3f:	48 83 ec 20          	sub    $0x20,%rsp
 a43:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 a47:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
 a4e:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%rbp)
 a55:	7f 15                	jg     a6c <_Z12lock_examplePv+0x31>
 a57:	e8 2e ff ff ff       	callq  98a <_Z7my_lockv>
 a5c:	e8 c4 ff ff ff       	callq  a25 <_Z16increase_counterv>
 a61:	e8 85 ff ff ff       	callq  9eb <_Z9my_unlockv>
 a66:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 a6a:	eb e2                	jmp    a4e <_Z12lock_examplePv+0x13>
 a6c:	b8 00 00 00 00       	mov    $0x0,%eax
 a71:	c9                   	leaveq 
 a72:	c3                   	retq   

0000000000000a73 <main>:
 a73:	55                   	push   %rbp
 a74:	48 89 e5             	mov    %rsp,%rbp
 a77:	53                   	push   %rbx
 a78:	48 83 ec 38          	sub    $0x38,%rsp
 a7c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 a83:	00 00 
 a85:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 a89:	31 c0                	xor    %eax,%eax
 a8b:	48 89 e0             	mov    %rsp,%rax
 a8e:	48 89 c3             	mov    %rax,%rbx
 a91:	c7 45 d4 00 04 00 00 	movl   $0x400,-0x2c(%rbp)
 a98:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 a9b:	48 98                	cltq   
 a9d:	48 83 e8 01          	sub    $0x1,%rax
 aa1:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
 aa5:	48 89 c2             	mov    %rax,%rdx
 aa8:	48 83 c2 01          	add    $0x1,%rdx
 aac:	49 89 d0             	mov    %rdx,%r8
 aaf:	41 b9 00 00 00 00    	mov    $0x0,%r9d
 ab5:	48 89 c2             	mov    %rax,%rdx
 ab8:	48 83 c2 01          	add    $0x1,%rdx
 abc:	48 89 d6             	mov    %rdx,%rsi
 abf:	bf 00 00 00 00       	mov    $0x0,%edi
 ac4:	48 83 c0 01          	add    $0x1,%rax
 ac8:	48 c1 e0 03          	shl    $0x3,%rax
 acc:	48 8d 50 07          	lea    0x7(%rax),%rdx
 ad0:	b8 10 00 00 00       	mov    $0x10,%eax
 ad5:	48 83 e8 01          	sub    $0x1,%rax
 ad9:	48 01 d0             	add    %rdx,%rax
 adc:	b9 10 00 00 00       	mov    $0x10,%ecx
 ae1:	ba 00 00 00 00       	mov    $0x0,%edx
 ae6:	48 f7 f1             	div    %rcx
 ae9:	48 6b c0 10          	imul   $0x10,%rax,%rax
 aed:	48 29 c4             	sub    %rax,%rsp
 af0:	48 89 e0             	mov    %rsp,%rax
 af3:	48 83 c0 07          	add    $0x7,%rax
 af7:	48 c1 e8 03          	shr    $0x3,%rax
 afb:	48 c1 e0 03          	shl    $0x3,%rax
 aff:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
 b03:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%rbp)
 b0a:	8b 45 d0             	mov    -0x30(%rbp),%eax
 b0d:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
 b10:	7d 33                	jge    b45 <main+0xd2>
 b12:	8b 45 d0             	mov    -0x30(%rbp),%eax
 b15:	48 98                	cltq   
 b17:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 b1e:	00 
 b1f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 b23:	48 01 d0             	add    %rdx,%rax
 b26:	b9 00 00 00 00       	mov    $0x0,%ecx
 b2b:	48 8d 15 09 ff ff ff 	lea    -0xf7(%rip),%rdx        # a3b <_Z12lock_examplePv>
 b32:	be 00 00 00 00       	mov    $0x0,%esi
 b37:	48 89 c7             	mov    %rax,%rdi
 b3a:	e8 d1 fc ff ff       	callq  810 <pthread_create@plt>
 b3f:	83 45 d0 01          	addl   $0x1,-0x30(%rbp)
 b43:	eb c5                	jmp    b0a <main+0x97>
 b45:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
 b4c:	8b 45 cc             	mov    -0x34(%rbp),%eax
 b4f:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
 b52:	7d 21                	jge    b75 <main+0x102>
 b54:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 b58:	8b 55 cc             	mov    -0x34(%rbp),%edx
 b5b:	48 63 d2             	movslq %edx,%rdx
 b5e:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
 b62:	be 00 00 00 00       	mov    $0x0,%esi
 b67:	48 89 c7             	mov    %rax,%rdi
 b6a:	e8 91 fc ff ff       	callq  800 <pthread_join@plt>
 b6f:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
 b73:	eb d7                	jmp    b4c <main+0xd9>
 b75:	48 8d 35 52 01 00 00 	lea    0x152(%rip),%rsi        # cce <_ZStL6ignore+0x1>
 b7c:	48 8d 3d 9d 14 20 00 	lea    0x20149d(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
 b83:	e8 a8 fc ff ff       	callq  830 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
 b88:	48 89 c2             	mov    %rax,%rdx
 b8b:	8b 05 ab 15 20 00    	mov    0x2015ab(%rip),%eax        # 20213c <val>
 b91:	89 c6                	mov    %eax,%esi
 b93:	48 89 d7             	mov    %rdx,%rdi
 b96:	e8 c5 fc ff ff       	callq  860 <_ZNSolsEi@plt>
 b9b:	48 8d 35 37 01 00 00 	lea    0x137(%rip),%rsi        # cd9 <_ZStL6ignore+0xc>
 ba2:	48 89 c7             	mov    %rax,%rdi
 ba5:	e8 86 fc ff ff       	callq  830 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
 baa:	48 89 dc             	mov    %rbx,%rsp
 bad:	b8 00 00 00 00       	mov    $0x0,%eax
 bb2:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
 bb6:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 bbd:	00 00 
 bbf:	74 05                	je     bc6 <main+0x153>
 bc1:	e8 7a fc ff ff       	callq  840 <__stack_chk_fail@plt>
 bc6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
 bca:	c9                   	leaveq 
 bcb:	c3                   	retq   

0000000000000bcc <_Z41__static_initialization_and_destruction_0ii>:
 bcc:	55                   	push   %rbp
 bcd:	48 89 e5             	mov    %rsp,%rbp
 bd0:	48 83 ec 10          	sub    $0x10,%rsp
 bd4:	89 7d fc             	mov    %edi,-0x4(%rbp)
 bd7:	89 75 f8             	mov    %esi,-0x8(%rbp)
 bda:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
 bde:	75 32                	jne    c12 <_Z41__static_initialization_and_destruction_0ii+0x46>
 be0:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
 be7:	75 29                	jne    c12 <_Z41__static_initialization_and_destruction_0ii+0x46>
 be9:	48 8d 3d 50 15 20 00 	lea    0x201550(%rip),%rdi        # 202140 <_ZStL8__ioinit>
 bf0:	e8 5b fc ff ff       	callq  850 <_ZNSt8ios_base4InitC1Ev@plt>
 bf5:	48 8d 15 0c 14 20 00 	lea    0x20140c(%rip),%rdx        # 202008 <__dso_handle>
 bfc:	48 8d 35 3d 15 20 00 	lea    0x20153d(%rip),%rsi        # 202140 <_ZStL8__ioinit>
 c03:	48 8b 05 ee 13 20 00 	mov    0x2013ee(%rip),%rax        # 201ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
 c0a:	48 89 c7             	mov    %rax,%rdi
 c0d:	e8 0e fc ff ff       	callq  820 <__cxa_atexit@plt>
 c12:	90                   	nop
 c13:	c9                   	leaveq 
 c14:	c3                   	retq   

0000000000000c15 <_GLOBAL__sub_I_s>:
 c15:	55                   	push   %rbp
 c16:	48 89 e5             	mov    %rsp,%rbp
 c19:	be ff ff 00 00       	mov    $0xffff,%esi
 c1e:	bf 01 00 00 00       	mov    $0x1,%edi
 c23:	e8 a4 ff ff ff       	callq  bcc <_Z41__static_initialization_and_destruction_0ii>
 c28:	5d                   	pop    %rbp
 c29:	c3                   	retq   

0000000000000c2a <_ZStanSt12memory_orderSt23__memory_order_modifier>:
 c2a:	55                   	push   %rbp
 c2b:	48 89 e5             	mov    %rsp,%rbp
 c2e:	89 7d fc             	mov    %edi,-0x4(%rbp)
 c31:	89 75 f8             	mov    %esi,-0x8(%rbp)
 c34:	8b 55 fc             	mov    -0x4(%rbp),%edx
 c37:	8b 45 f8             	mov    -0x8(%rbp),%eax
 c3a:	21 d0                	and    %edx,%eax
 c3c:	5d                   	pop    %rbp
 c3d:	c3                   	retq   
 c3e:	66 90                	xchg   %ax,%ax

0000000000000c40 <__libc_csu_init>:
 c40:	41 57                	push   %r15
 c42:	41 56                	push   %r14
 c44:	49 89 d7             	mov    %rdx,%r15
 c47:	41 55                	push   %r13
 c49:	41 54                	push   %r12
 c4b:	4c 8d 25 06 11 20 00 	lea    0x201106(%rip),%r12        # 201d58 <__frame_dummy_init_array_entry>
 c52:	55                   	push   %rbp
 c53:	48 8d 2d 0e 11 20 00 	lea    0x20110e(%rip),%rbp        # 201d68 <__init_array_end>
 c5a:	53                   	push   %rbx
 c5b:	41 89 fd             	mov    %edi,%r13d
 c5e:	49 89 f6             	mov    %rsi,%r14
 c61:	4c 29 e5             	sub    %r12,%rbp
 c64:	48 83 ec 08          	sub    $0x8,%rsp
 c68:	48 c1 fd 03          	sar    $0x3,%rbp
 c6c:	e8 5f fb ff ff       	callq  7d0 <_init>
 c71:	48 85 ed             	test   %rbp,%rbp
 c74:	74 20                	je     c96 <__libc_csu_init+0x56>
 c76:	31 db                	xor    %ebx,%ebx
 c78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c7f:	00 
 c80:	4c 89 fa             	mov    %r15,%rdx
 c83:	4c 89 f6             	mov    %r14,%rsi
 c86:	44 89 ef             	mov    %r13d,%edi
 c89:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c8d:	48 83 c3 01          	add    $0x1,%rbx
 c91:	48 39 dd             	cmp    %rbx,%rbp
 c94:	75 ea                	jne    c80 <__libc_csu_init+0x40>
 c96:	48 83 c4 08          	add    $0x8,%rsp
 c9a:	5b                   	pop    %rbx
 c9b:	5d                   	pop    %rbp
 c9c:	41 5c                	pop    %r12
 c9e:	41 5d                	pop    %r13
 ca0:	41 5e                	pop    %r14
 ca2:	41 5f                	pop    %r15
 ca4:	c3                   	retq   
 ca5:	90                   	nop
 ca6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 cad:	00 00 00 

0000000000000cb0 <__libc_csu_fini>:
 cb0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000cb4 <_fini>:
 cb4:	48 83 ec 08          	sub    $0x8,%rsp
 cb8:	48 83 c4 08          	add    $0x8,%rsp
 cbc:	c3                   	retq   
