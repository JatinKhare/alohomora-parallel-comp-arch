
TL_ubuntu.o:     file format elf64-x86-64


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
 88f:	4c 8d 05 ca 03 00 00 	lea    0x3ca(%rip),%r8        # c60 <__libc_csu_fini>
 896:	48 8d 0d 53 03 00 00 	lea    0x353(%rip),%rcx        # bf0 <__libc_csu_init>
 89d:	48 8d 3d 8a 01 00 00 	lea    0x18a(%rip),%rdi        # a2e <main>
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
 99f:	48 8d 05 8e 17 20 00 	lea    0x20178e(%rip),%rax        # 202134 <my_ticket_num>
 9a6:	f0 0f c1 10          	lock xadd %edx,(%rax)
 9aa:	89 d0                	mov    %edx,%eax
 9ac:	89 45 f4             	mov    %eax,-0xc(%rbp)
 9af:	0f b7 05 82 17 20 00 	movzwl 0x201782(%rip),%eax        # 202138 <curr_serving>
 9b6:	0f b7 c0             	movzwl %ax,%eax
 9b9:	39 45 f4             	cmp    %eax,-0xc(%rbp)
 9bc:	0f 95 c0             	setne  %al
 9bf:	84 c0                	test   %al,%al
 9c1:	74 02                	je     9c5 <_Z7my_lockv+0x3b>
 9c3:	eb ea                	jmp    9af <_Z7my_lockv+0x25>
 9c5:	90                   	nop
 9c6:	5d                   	pop    %rbp
 9c7:	c3                   	retq   

00000000000009c8 <_Z9my_unlockv>:
 9c8:	55                   	push   %rbp
 9c9:	48 89 e5             	mov    %rsp,%rbp
 9cc:	0f b7 05 65 17 20 00 	movzwl 0x201765(%rip),%eax        # 202138 <curr_serving>
 9d3:	83 c0 01             	add    $0x1,%eax
 9d6:	66 89 05 5b 17 20 00 	mov    %ax,0x20175b(%rip)        # 202138 <curr_serving>
 9dd:	90                   	nop
 9de:	5d                   	pop    %rbp
 9df:	c3                   	retq   

00000000000009e0 <_Z16increase_counterv>:
 9e0:	55                   	push   %rbp
 9e1:	48 89 e5             	mov    %rsp,%rbp
 9e4:	8b 05 52 17 20 00    	mov    0x201752(%rip),%eax        # 20213c <val>
 9ea:	83 c0 01             	add    $0x1,%eax
 9ed:	89 05 49 17 20 00    	mov    %eax,0x201749(%rip)        # 20213c <val>
 9f3:	90                   	nop
 9f4:	5d                   	pop    %rbp
 9f5:	c3                   	retq   

00000000000009f6 <_Z12lock_examplePv>:
 9f6:	55                   	push   %rbp
 9f7:	48 89 e5             	mov    %rsp,%rbp
 9fa:	48 83 ec 18          	sub    $0x18,%rsp
 9fe:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 a02:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
 a09:	81 7d fc 2b 01 00 00 	cmpl   $0x12b,-0x4(%rbp)
 a10:	7f 15                	jg     a27 <_Z12lock_examplePv+0x31>
 a12:	e8 73 ff ff ff       	callq  98a <_Z7my_lockv>
 a17:	e8 c4 ff ff ff       	callq  9e0 <_Z16increase_counterv>
 a1c:	e8 a7 ff ff ff       	callq  9c8 <_Z9my_unlockv>
 a21:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 a25:	eb e2                	jmp    a09 <_Z12lock_examplePv+0x13>
 a27:	b8 00 00 00 00       	mov    $0x0,%eax
 a2c:	c9                   	leaveq 
 a2d:	c3                   	retq   

0000000000000a2e <main>:
 a2e:	55                   	push   %rbp
 a2f:	48 89 e5             	mov    %rsp,%rbp
 a32:	53                   	push   %rbx
 a33:	48 83 ec 38          	sub    $0x38,%rsp
 a37:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 a3e:	00 00 
 a40:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 a44:	31 c0                	xor    %eax,%eax
 a46:	48 89 e0             	mov    %rsp,%rax
 a49:	48 89 c3             	mov    %rax,%rbx
 a4c:	c7 45 d4 65 00 00 00 	movl   $0x65,-0x2c(%rbp)
 a53:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 a56:	48 98                	cltq   
 a58:	48 83 e8 01          	sub    $0x1,%rax
 a5c:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
 a60:	48 89 c2             	mov    %rax,%rdx
 a63:	48 83 c2 01          	add    $0x1,%rdx
 a67:	49 89 d0             	mov    %rdx,%r8
 a6a:	41 b9 00 00 00 00    	mov    $0x0,%r9d
 a70:	48 89 c2             	mov    %rax,%rdx
 a73:	48 83 c2 01          	add    $0x1,%rdx
 a77:	48 89 d6             	mov    %rdx,%rsi
 a7a:	bf 00 00 00 00       	mov    $0x0,%edi
 a7f:	48 83 c0 01          	add    $0x1,%rax
 a83:	48 c1 e0 03          	shl    $0x3,%rax
 a87:	48 8d 50 07          	lea    0x7(%rax),%rdx
 a8b:	b8 10 00 00 00       	mov    $0x10,%eax
 a90:	48 83 e8 01          	sub    $0x1,%rax
 a94:	48 01 d0             	add    %rdx,%rax
 a97:	b9 10 00 00 00       	mov    $0x10,%ecx
 a9c:	ba 00 00 00 00       	mov    $0x0,%edx
 aa1:	48 f7 f1             	div    %rcx
 aa4:	48 6b c0 10          	imul   $0x10,%rax,%rax
 aa8:	48 29 c4             	sub    %rax,%rsp
 aab:	48 89 e0             	mov    %rsp,%rax
 aae:	48 83 c0 07          	add    $0x7,%rax
 ab2:	48 c1 e8 03          	shr    $0x3,%rax
 ab6:	48 c1 e0 03          	shl    $0x3,%rax
 aba:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
 abe:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%rbp)
 ac5:	8b 45 d0             	mov    -0x30(%rbp),%eax
 ac8:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
 acb:	7d 33                	jge    b00 <main+0xd2>
 acd:	8b 45 d0             	mov    -0x30(%rbp),%eax
 ad0:	48 98                	cltq   
 ad2:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 ad9:	00 
 ada:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 ade:	48 01 d0             	add    %rdx,%rax
 ae1:	b9 00 00 00 00       	mov    $0x0,%ecx
 ae6:	48 8d 15 09 ff ff ff 	lea    -0xf7(%rip),%rdx        # 9f6 <_Z12lock_examplePv>
 aed:	be 00 00 00 00       	mov    $0x0,%esi
 af2:	48 89 c7             	mov    %rax,%rdi
 af5:	e8 16 fd ff ff       	callq  810 <pthread_create@plt>
 afa:	83 45 d0 01          	addl   $0x1,-0x30(%rbp)
 afe:	eb c5                	jmp    ac5 <main+0x97>
 b00:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
 b07:	8b 45 cc             	mov    -0x34(%rbp),%eax
 b0a:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
 b0d:	7d 21                	jge    b30 <main+0x102>
 b0f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 b13:	8b 55 cc             	mov    -0x34(%rbp),%edx
 b16:	48 63 d2             	movslq %edx,%rdx
 b19:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
 b1d:	be 00 00 00 00       	mov    $0x0,%esi
 b22:	48 89 c7             	mov    %rax,%rdi
 b25:	e8 d6 fc ff ff       	callq  800 <pthread_join@plt>
 b2a:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
 b2e:	eb d7                	jmp    b07 <main+0xd9>
 b30:	48 8d 35 47 01 00 00 	lea    0x147(%rip),%rsi        # c7e <_ZStL6ignore+0x1>
 b37:	48 8d 3d e2 14 20 00 	lea    0x2014e2(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
 b3e:	e8 ed fc ff ff       	callq  830 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
 b43:	48 89 c2             	mov    %rax,%rdx
 b46:	8b 05 f0 15 20 00    	mov    0x2015f0(%rip),%eax        # 20213c <val>
 b4c:	89 c6                	mov    %eax,%esi
 b4e:	48 89 d7             	mov    %rdx,%rdi
 b51:	e8 0a fd ff ff       	callq  860 <_ZNSolsEi@plt>
 b56:	48 8d 35 2c 01 00 00 	lea    0x12c(%rip),%rsi        # c89 <_ZStL6ignore+0xc>
 b5d:	48 89 c7             	mov    %rax,%rdi
 b60:	e8 cb fc ff ff       	callq  830 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
 b65:	48 89 dc             	mov    %rbx,%rsp
 b68:	b8 00 00 00 00       	mov    $0x0,%eax
 b6d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
 b71:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 b78:	00 00 
 b7a:	74 05                	je     b81 <main+0x153>
 b7c:	e8 bf fc ff ff       	callq  840 <__stack_chk_fail@plt>
 b81:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
 b85:	c9                   	leaveq 
 b86:	c3                   	retq   

0000000000000b87 <_Z41__static_initialization_and_destruction_0ii>:
 b87:	55                   	push   %rbp
 b88:	48 89 e5             	mov    %rsp,%rbp
 b8b:	48 83 ec 10          	sub    $0x10,%rsp
 b8f:	89 7d fc             	mov    %edi,-0x4(%rbp)
 b92:	89 75 f8             	mov    %esi,-0x8(%rbp)
 b95:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
 b99:	75 32                	jne    bcd <_Z41__static_initialization_and_destruction_0ii+0x46>
 b9b:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
 ba2:	75 29                	jne    bcd <_Z41__static_initialization_and_destruction_0ii+0x46>
 ba4:	48 8d 3d 95 15 20 00 	lea    0x201595(%rip),%rdi        # 202140 <_ZStL8__ioinit>
 bab:	e8 a0 fc ff ff       	callq  850 <_ZNSt8ios_base4InitC1Ev@plt>
 bb0:	48 8d 15 51 14 20 00 	lea    0x201451(%rip),%rdx        # 202008 <__dso_handle>
 bb7:	48 8d 35 82 15 20 00 	lea    0x201582(%rip),%rsi        # 202140 <_ZStL8__ioinit>
 bbe:	48 8b 05 33 14 20 00 	mov    0x201433(%rip),%rax        # 201ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
 bc5:	48 89 c7             	mov    %rax,%rdi
 bc8:	e8 53 fc ff ff       	callq  820 <__cxa_atexit@plt>
 bcd:	90                   	nop
 bce:	c9                   	leaveq 
 bcf:	c3                   	retq   

0000000000000bd0 <_GLOBAL__sub_I_my_ticket_num>:
 bd0:	55                   	push   %rbp
 bd1:	48 89 e5             	mov    %rsp,%rbp
 bd4:	be ff ff 00 00       	mov    $0xffff,%esi
 bd9:	bf 01 00 00 00       	mov    $0x1,%edi
 bde:	e8 a4 ff ff ff       	callq  b87 <_Z41__static_initialization_and_destruction_0ii>
 be3:	5d                   	pop    %rbp
 be4:	c3                   	retq   
 be5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 bec:	00 00 00 
 bef:	90                   	nop

0000000000000bf0 <__libc_csu_init>:
 bf0:	41 57                	push   %r15
 bf2:	41 56                	push   %r14
 bf4:	49 89 d7             	mov    %rdx,%r15
 bf7:	41 55                	push   %r13
 bf9:	41 54                	push   %r12
 bfb:	4c 8d 25 56 11 20 00 	lea    0x201156(%rip),%r12        # 201d58 <__frame_dummy_init_array_entry>
 c02:	55                   	push   %rbp
 c03:	48 8d 2d 5e 11 20 00 	lea    0x20115e(%rip),%rbp        # 201d68 <__init_array_end>
 c0a:	53                   	push   %rbx
 c0b:	41 89 fd             	mov    %edi,%r13d
 c0e:	49 89 f6             	mov    %rsi,%r14
 c11:	4c 29 e5             	sub    %r12,%rbp
 c14:	48 83 ec 08          	sub    $0x8,%rsp
 c18:	48 c1 fd 03          	sar    $0x3,%rbp
 c1c:	e8 af fb ff ff       	callq  7d0 <_init>
 c21:	48 85 ed             	test   %rbp,%rbp
 c24:	74 20                	je     c46 <__libc_csu_init+0x56>
 c26:	31 db                	xor    %ebx,%ebx
 c28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 c2f:	00 
 c30:	4c 89 fa             	mov    %r15,%rdx
 c33:	4c 89 f6             	mov    %r14,%rsi
 c36:	44 89 ef             	mov    %r13d,%edi
 c39:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 c3d:	48 83 c3 01          	add    $0x1,%rbx
 c41:	48 39 dd             	cmp    %rbx,%rbp
 c44:	75 ea                	jne    c30 <__libc_csu_init+0x40>
 c46:	48 83 c4 08          	add    $0x8,%rsp
 c4a:	5b                   	pop    %rbx
 c4b:	5d                   	pop    %rbp
 c4c:	41 5c                	pop    %r12
 c4e:	41 5d                	pop    %r13
 c50:	41 5e                	pop    %r14
 c52:	41 5f                	pop    %r15
 c54:	c3                   	retq   
 c55:	90                   	nop
 c56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c5d:	00 00 00 

0000000000000c60 <__libc_csu_fini>:
 c60:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000c64 <_fini>:
 c64:	48 83 ec 08          	sub    $0x8,%rsp
 c68:	48 83 c4 08          	add    $0x8,%rsp
 c6c:	c3                   	retq   
