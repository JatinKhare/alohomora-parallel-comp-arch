
cas_ubuntu.o:     file format elf64-x86-64


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
 88f:	4c 8d 05 5a 05 00 00 	lea    0x55a(%rip),%r8        # df0 <__libc_csu_fini>
 896:	48 8d 0d e3 04 00 00 	lea    0x4e3(%rip),%rcx        # d80 <__libc_csu_init>
 89d:	48 8d 3d ad 01 00 00 	lea    0x1ad(%rip),%rdi        # a51 <main>
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
 992:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 999:	00 00 
 99b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 99f:	31 c0                	xor    %eax,%eax
 9a1:	c6 45 f7 00          	movb   $0x0,-0x9(%rbp)
 9a5:	48 8d 45 f7          	lea    -0x9(%rbp),%rax
 9a9:	b9 05 00 00 00       	mov    $0x5,%ecx
 9ae:	ba 01 00 00 00       	mov    $0x1,%edx
 9b3:	48 89 c6             	mov    %rax,%rsi
 9b6:	48 8d 3d 7b 17 20 00 	lea    0x20177b(%rip),%rdi        # 202138 <lock_flag>
 9bd:	e8 0c 03 00 00       	callq  cce <_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_order>
 9c2:	83 f0 01             	xor    $0x1,%eax
 9c5:	84 c0                	test   %al,%al
 9c7:	74 06                	je     9cf <_Z7my_lockv+0x45>
 9c9:	c6 45 f7 00          	movb   $0x0,-0x9(%rbp)
 9cd:	eb d6                	jmp    9a5 <_Z7my_lockv+0x1b>
 9cf:	90                   	nop
 9d0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 9d4:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 9db:	00 00 
 9dd:	74 05                	je     9e4 <_Z7my_lockv+0x5a>
 9df:	e8 5c fe ff ff       	callq  840 <__stack_chk_fail@plt>
 9e4:	c9                   	leaveq 
 9e5:	c3                   	retq   

00000000000009e6 <_Z9my_unlockv>:
 9e6:	55                   	push   %rbp
 9e7:	48 89 e5             	mov    %rsp,%rbp
 9ea:	ba 05 00 00 00       	mov    $0x5,%edx
 9ef:	be 00 00 00 00       	mov    $0x0,%esi
 9f4:	48 8d 3d 3d 17 20 00 	lea    0x20173d(%rip),%rdi        # 202138 <lock_flag>
 9fb:	e8 7e 02 00 00       	callq  c7e <_ZNSt6atomicIbE5storeEbSt12memory_order>
 a00:	90                   	nop
 a01:	5d                   	pop    %rbp
 a02:	c3                   	retq   

0000000000000a03 <_Z16increase_counterv>:
 a03:	55                   	push   %rbp
 a04:	48 89 e5             	mov    %rsp,%rbp
 a07:	8b 05 2f 17 20 00    	mov    0x20172f(%rip),%eax        # 20213c <val>
 a0d:	83 c0 01             	add    $0x1,%eax
 a10:	89 05 26 17 20 00    	mov    %eax,0x201726(%rip)        # 20213c <val>
 a16:	90                   	nop
 a17:	5d                   	pop    %rbp
 a18:	c3                   	retq   

0000000000000a19 <_Z12lock_examplePv>:
 a19:	55                   	push   %rbp
 a1a:	48 89 e5             	mov    %rsp,%rbp
 a1d:	48 83 ec 20          	sub    $0x20,%rsp
 a21:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 a25:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
 a2c:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%rbp)
 a33:	7f 15                	jg     a4a <_Z12lock_examplePv+0x31>
 a35:	e8 50 ff ff ff       	callq  98a <_Z7my_lockv>
 a3a:	e8 c4 ff ff ff       	callq  a03 <_Z16increase_counterv>
 a3f:	e8 a2 ff ff ff       	callq  9e6 <_Z9my_unlockv>
 a44:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 a48:	eb e2                	jmp    a2c <_Z12lock_examplePv+0x13>
 a4a:	b8 00 00 00 00       	mov    $0x0,%eax
 a4f:	c9                   	leaveq 
 a50:	c3                   	retq   

0000000000000a51 <main>:
 a51:	55                   	push   %rbp
 a52:	48 89 e5             	mov    %rsp,%rbp
 a55:	53                   	push   %rbx
 a56:	48 83 ec 38          	sub    $0x38,%rsp
 a5a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 a61:	00 00 
 a63:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 a67:	31 c0                	xor    %eax,%eax
 a69:	48 89 e0             	mov    %rsp,%rax
 a6c:	48 89 c3             	mov    %rax,%rbx
 a6f:	c7 45 d4 00 04 00 00 	movl   $0x400,-0x2c(%rbp)
 a76:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 a79:	48 98                	cltq   
 a7b:	48 83 e8 01          	sub    $0x1,%rax
 a7f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
 a83:	48 89 c2             	mov    %rax,%rdx
 a86:	48 83 c2 01          	add    $0x1,%rdx
 a8a:	49 89 d0             	mov    %rdx,%r8
 a8d:	41 b9 00 00 00 00    	mov    $0x0,%r9d
 a93:	48 89 c2             	mov    %rax,%rdx
 a96:	48 83 c2 01          	add    $0x1,%rdx
 a9a:	48 89 d6             	mov    %rdx,%rsi
 a9d:	bf 00 00 00 00       	mov    $0x0,%edi
 aa2:	48 83 c0 01          	add    $0x1,%rax
 aa6:	48 c1 e0 03          	shl    $0x3,%rax
 aaa:	48 8d 50 07          	lea    0x7(%rax),%rdx
 aae:	b8 10 00 00 00       	mov    $0x10,%eax
 ab3:	48 83 e8 01          	sub    $0x1,%rax
 ab7:	48 01 d0             	add    %rdx,%rax
 aba:	b9 10 00 00 00       	mov    $0x10,%ecx
 abf:	ba 00 00 00 00       	mov    $0x0,%edx
 ac4:	48 f7 f1             	div    %rcx
 ac7:	48 6b c0 10          	imul   $0x10,%rax,%rax
 acb:	48 29 c4             	sub    %rax,%rsp
 ace:	48 89 e0             	mov    %rsp,%rax
 ad1:	48 83 c0 07          	add    $0x7,%rax
 ad5:	48 c1 e8 03          	shr    $0x3,%rax
 ad9:	48 c1 e0 03          	shl    $0x3,%rax
 add:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
 ae1:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%rbp)
 ae8:	8b 45 d0             	mov    -0x30(%rbp),%eax
 aeb:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
 aee:	7d 33                	jge    b23 <main+0xd2>
 af0:	8b 45 d0             	mov    -0x30(%rbp),%eax
 af3:	48 98                	cltq   
 af5:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 afc:	00 
 afd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 b01:	48 01 d0             	add    %rdx,%rax
 b04:	b9 00 00 00 00       	mov    $0x0,%ecx
 b09:	48 8d 15 09 ff ff ff 	lea    -0xf7(%rip),%rdx        # a19 <_Z12lock_examplePv>
 b10:	be 00 00 00 00       	mov    $0x0,%esi
 b15:	48 89 c7             	mov    %rax,%rdi
 b18:	e8 f3 fc ff ff       	callq  810 <pthread_create@plt>
 b1d:	83 45 d0 01          	addl   $0x1,-0x30(%rbp)
 b21:	eb c5                	jmp    ae8 <main+0x97>
 b23:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
 b2a:	8b 45 cc             	mov    -0x34(%rbp),%eax
 b2d:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
 b30:	7d 21                	jge    b53 <main+0x102>
 b32:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 b36:	8b 55 cc             	mov    -0x34(%rbp),%edx
 b39:	48 63 d2             	movslq %edx,%rdx
 b3c:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
 b40:	be 00 00 00 00       	mov    $0x0,%esi
 b45:	48 89 c7             	mov    %rax,%rdi
 b48:	e8 b3 fc ff ff       	callq  800 <pthread_join@plt>
 b4d:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
 b51:	eb d7                	jmp    b2a <main+0xd9>
 b53:	48 8d 35 b4 02 00 00 	lea    0x2b4(%rip),%rsi        # e0e <_ZStL6ignore+0x1>
 b5a:	48 8d 3d bf 14 20 00 	lea    0x2014bf(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
 b61:	e8 ca fc ff ff       	callq  830 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
 b66:	48 89 c2             	mov    %rax,%rdx
 b69:	8b 05 cd 15 20 00    	mov    0x2015cd(%rip),%eax        # 20213c <val>
 b6f:	89 c6                	mov    %eax,%esi
 b71:	48 89 d7             	mov    %rdx,%rdi
 b74:	e8 e7 fc ff ff       	callq  860 <_ZNSolsEi@plt>
 b79:	48 8d 35 99 02 00 00 	lea    0x299(%rip),%rsi        # e19 <_ZStL6ignore+0xc>
 b80:	48 89 c7             	mov    %rax,%rdi
 b83:	e8 a8 fc ff ff       	callq  830 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
 b88:	48 89 dc             	mov    %rbx,%rsp
 b8b:	b8 00 00 00 00       	mov    $0x0,%eax
 b90:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
 b94:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 b9b:	00 00 
 b9d:	74 05                	je     ba4 <main+0x153>
 b9f:	e8 9c fc ff ff       	callq  840 <__stack_chk_fail@plt>
 ba4:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
 ba8:	c9                   	leaveq 
 ba9:	c3                   	retq   

0000000000000baa <_Z41__static_initialization_and_destruction_0ii>:
 baa:	55                   	push   %rbp
 bab:	48 89 e5             	mov    %rsp,%rbp
 bae:	48 83 ec 10          	sub    $0x10,%rsp
 bb2:	89 7d fc             	mov    %edi,-0x4(%rbp)
 bb5:	89 75 f8             	mov    %esi,-0x8(%rbp)
 bb8:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
 bbc:	75 32                	jne    bf0 <_Z41__static_initialization_and_destruction_0ii+0x46>
 bbe:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
 bc5:	75 29                	jne    bf0 <_Z41__static_initialization_and_destruction_0ii+0x46>
 bc7:	48 8d 3d 72 15 20 00 	lea    0x201572(%rip),%rdi        # 202140 <_ZStL8__ioinit>
 bce:	e8 7d fc ff ff       	callq  850 <_ZNSt8ios_base4InitC1Ev@plt>
 bd3:	48 8d 15 2e 14 20 00 	lea    0x20142e(%rip),%rdx        # 202008 <__dso_handle>
 bda:	48 8d 35 5f 15 20 00 	lea    0x20155f(%rip),%rsi        # 202140 <_ZStL8__ioinit>
 be1:	48 8b 05 10 14 20 00 	mov    0x201410(%rip),%rax        # 201ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
 be8:	48 89 c7             	mov    %rax,%rdi
 beb:	e8 30 fc ff ff       	callq  820 <__cxa_atexit@plt>
 bf0:	90                   	nop
 bf1:	c9                   	leaveq 
 bf2:	c3                   	retq   

0000000000000bf3 <_GLOBAL__sub_I_s>:
 bf3:	55                   	push   %rbp
 bf4:	48 89 e5             	mov    %rsp,%rbp
 bf7:	be ff ff 00 00       	mov    $0xffff,%esi
 bfc:	bf 01 00 00 00       	mov    $0x1,%edi
 c01:	e8 a4 ff ff ff       	callq  baa <_Z41__static_initialization_and_destruction_0ii>
 c06:	5d                   	pop    %rbp
 c07:	c3                   	retq   

0000000000000c08 <_ZStanSt12memory_orderSt23__memory_order_modifier>:
 c08:	55                   	push   %rbp
 c09:	48 89 e5             	mov    %rsp,%rbp
 c0c:	89 7d fc             	mov    %edi,-0x4(%rbp)
 c0f:	89 75 f8             	mov    %esi,-0x8(%rbp)
 c12:	8b 55 fc             	mov    -0x4(%rbp),%edx
 c15:	8b 45 f8             	mov    -0x8(%rbp),%eax
 c18:	21 d0                	and    %edx,%eax
 c1a:	5d                   	pop    %rbp
 c1b:	c3                   	retq   

0000000000000c1c <_ZSt24__cmpexch_failure_order2St12memory_order>:
 c1c:	55                   	push   %rbp
 c1d:	48 89 e5             	mov    %rsp,%rbp
 c20:	89 7d fc             	mov    %edi,-0x4(%rbp)
 c23:	83 7d fc 04          	cmpl   $0x4,-0x4(%rbp)
 c27:	74 12                	je     c3b <_ZSt24__cmpexch_failure_order2St12memory_order+0x1f>
 c29:	83 7d fc 03          	cmpl   $0x3,-0x4(%rbp)
 c2d:	74 05                	je     c34 <_ZSt24__cmpexch_failure_order2St12memory_order+0x18>
 c2f:	8b 45 fc             	mov    -0x4(%rbp),%eax
 c32:	eb 0c                	jmp    c40 <_ZSt24__cmpexch_failure_order2St12memory_order+0x24>
 c34:	b8 00 00 00 00       	mov    $0x0,%eax
 c39:	eb 05                	jmp    c40 <_ZSt24__cmpexch_failure_order2St12memory_order+0x24>
 c3b:	b8 02 00 00 00       	mov    $0x2,%eax
 c40:	5d                   	pop    %rbp
 c41:	c3                   	retq   

0000000000000c42 <_ZSt23__cmpexch_failure_orderSt12memory_order>:
 c42:	55                   	push   %rbp
 c43:	48 89 e5             	mov    %rsp,%rbp
 c46:	53                   	push   %rbx
 c47:	48 83 ec 18          	sub    $0x18,%rsp
 c4b:	89 7d ec             	mov    %edi,-0x14(%rbp)
 c4e:	8b 45 ec             	mov    -0x14(%rbp),%eax
 c51:	be ff ff 00 00       	mov    $0xffff,%esi
 c56:	89 c7                	mov    %eax,%edi
 c58:	e8 ab ff ff ff       	callq  c08 <_ZStanSt12memory_orderSt23__memory_order_modifier>
 c5d:	89 c7                	mov    %eax,%edi
 c5f:	e8 b8 ff ff ff       	callq  c1c <_ZSt24__cmpexch_failure_order2St12memory_order>
 c64:	89 c3                	mov    %eax,%ebx
 c66:	8b 45 ec             	mov    -0x14(%rbp),%eax
 c69:	be 00 00 ff ff       	mov    $0xffff0000,%esi
 c6e:	89 c7                	mov    %eax,%edi
 c70:	e8 93 ff ff ff       	callq  c08 <_ZStanSt12memory_orderSt23__memory_order_modifier>
 c75:	09 d8                	or     %ebx,%eax
 c77:	48 83 c4 18          	add    $0x18,%rsp
 c7b:	5b                   	pop    %rbx
 c7c:	5d                   	pop    %rbp
 c7d:	c3                   	retq   

0000000000000c7e <_ZNSt6atomicIbE5storeEbSt12memory_order>:
 c7e:	55                   	push   %rbp
 c7f:	48 89 e5             	mov    %rsp,%rbp
 c82:	48 83 ec 30          	sub    $0x30,%rsp
 c86:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
 c8a:	89 f0                	mov    %esi,%eax
 c8c:	89 55 d0             	mov    %edx,-0x30(%rbp)
 c8f:	88 45 d4             	mov    %al,-0x2c(%rbp)
 c92:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
 c96:	0f b6 45 d4          	movzbl -0x2c(%rbp),%eax
 c9a:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
 c9e:	88 45 ef             	mov    %al,-0x11(%rbp)
 ca1:	80 65 ef 01          	andb   $0x1,-0x11(%rbp)
 ca5:	8b 45 d0             	mov    -0x30(%rbp),%eax
 ca8:	89 45 f0             	mov    %eax,-0x10(%rbp)
 cab:	8b 45 f0             	mov    -0x10(%rbp),%eax
 cae:	be ff ff 00 00       	mov    $0xffff,%esi
 cb3:	89 c7                	mov    %eax,%edi
 cb5:	e8 4e ff ff ff       	callq  c08 <_ZStanSt12memory_orderSt23__memory_order_modifier>
 cba:	89 45 f4             	mov    %eax,-0xc(%rbp)
 cbd:	0f b6 55 ef          	movzbl -0x11(%rbp),%edx
 cc1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 cc5:	88 10                	mov    %dl,(%rax)
 cc7:	0f ae f0             	mfence 
 cca:	90                   	nop
 ccb:	c9                   	leaveq 
 ccc:	c3                   	retq   
 ccd:	90                   	nop

0000000000000cce <_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_order>:
 cce:	55                   	push   %rbp
 ccf:	48 89 e5             	mov    %rsp,%rbp
 cd2:	48 83 ec 60          	sub    $0x60,%rsp
 cd6:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
 cda:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
 cde:	89 d0                	mov    %edx,%eax
 ce0:	89 4d a8             	mov    %ecx,-0x58(%rbp)
 ce3:	88 45 ac             	mov    %al,-0x54(%rbp)
 ce6:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
 cea:	0f b6 45 ac          	movzbl -0x54(%rbp),%eax
 cee:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
 cf2:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
 cf6:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
 cfa:	88 45 ca             	mov    %al,-0x36(%rbp)
 cfd:	80 65 ca 01          	andb   $0x1,-0x36(%rbp)
 d01:	8b 45 a8             	mov    -0x58(%rbp),%eax
 d04:	89 45 cc             	mov    %eax,-0x34(%rbp)
 d07:	8b 45 cc             	mov    -0x34(%rbp),%eax
 d0a:	89 c7                	mov    %eax,%edi
 d0c:	e8 31 ff ff ff       	callq  c42 <_ZSt23__cmpexch_failure_orderSt12memory_order>
 d11:	89 c1                	mov    %eax,%ecx
 d13:	0f b6 45 ca          	movzbl -0x36(%rbp),%eax
 d17:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
 d1b:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
 d1f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
 d23:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
 d27:	88 45 cb             	mov    %al,-0x35(%rbp)
 d2a:	80 65 cb 01          	andb   $0x1,-0x35(%rbp)
 d2e:	8b 45 cc             	mov    -0x34(%rbp),%eax
 d31:	89 45 d0             	mov    %eax,-0x30(%rbp)
 d34:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
 d37:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 d3a:	be ff ff 00 00       	mov    $0xffff,%esi
 d3f:	89 c7                	mov    %eax,%edi
 d41:	e8 c2 fe ff ff       	callq  c08 <_ZStanSt12memory_orderSt23__memory_order_modifier>
 d46:	89 45 d8             	mov    %eax,-0x28(%rbp)
 d49:	8b 45 d0             	mov    -0x30(%rbp),%eax
 d4c:	be ff ff 00 00       	mov    $0xffff,%esi
 d51:	89 c7                	mov    %eax,%edi
 d53:	e8 b0 fe ff ff       	callq  c08 <_ZStanSt12memory_orderSt23__memory_order_modifier>
 d58:	89 45 dc             	mov    %eax,-0x24(%rbp)
 d5b:	0f b6 4d cb          	movzbl -0x35(%rbp),%ecx
 d5f:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
 d63:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 d67:	0f b6 00             	movzbl (%rax),%eax
 d6a:	f0 0f b0 0a          	lock cmpxchg %cl,(%rdx)
 d6e:	89 c1                	mov    %eax,%ecx
 d70:	0f 94 c0             	sete   %al
 d73:	84 c0                	test   %al,%al
 d75:	75 06                	jne    d7d <_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_order+0xaf>
 d77:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 d7b:	88 0a                	mov    %cl,(%rdx)
 d7d:	c9                   	leaveq 
 d7e:	c3                   	retq   
 d7f:	90                   	nop

0000000000000d80 <__libc_csu_init>:
 d80:	41 57                	push   %r15
 d82:	41 56                	push   %r14
 d84:	49 89 d7             	mov    %rdx,%r15
 d87:	41 55                	push   %r13
 d89:	41 54                	push   %r12
 d8b:	4c 8d 25 c6 0f 20 00 	lea    0x200fc6(%rip),%r12        # 201d58 <__frame_dummy_init_array_entry>
 d92:	55                   	push   %rbp
 d93:	48 8d 2d ce 0f 20 00 	lea    0x200fce(%rip),%rbp        # 201d68 <__init_array_end>
 d9a:	53                   	push   %rbx
 d9b:	41 89 fd             	mov    %edi,%r13d
 d9e:	49 89 f6             	mov    %rsi,%r14
 da1:	4c 29 e5             	sub    %r12,%rbp
 da4:	48 83 ec 08          	sub    $0x8,%rsp
 da8:	48 c1 fd 03          	sar    $0x3,%rbp
 dac:	e8 1f fa ff ff       	callq  7d0 <_init>
 db1:	48 85 ed             	test   %rbp,%rbp
 db4:	74 20                	je     dd6 <__libc_csu_init+0x56>
 db6:	31 db                	xor    %ebx,%ebx
 db8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 dbf:	00 
 dc0:	4c 89 fa             	mov    %r15,%rdx
 dc3:	4c 89 f6             	mov    %r14,%rsi
 dc6:	44 89 ef             	mov    %r13d,%edi
 dc9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 dcd:	48 83 c3 01          	add    $0x1,%rbx
 dd1:	48 39 dd             	cmp    %rbx,%rbp
 dd4:	75 ea                	jne    dc0 <__libc_csu_init+0x40>
 dd6:	48 83 c4 08          	add    $0x8,%rsp
 dda:	5b                   	pop    %rbx
 ddb:	5d                   	pop    %rbp
 ddc:	41 5c                	pop    %r12
 dde:	41 5d                	pop    %r13
 de0:	41 5e                	pop    %r14
 de2:	41 5f                	pop    %r15
 de4:	c3                   	retq   
 de5:	90                   	nop
 de6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 ded:	00 00 00 

0000000000000df0 <__libc_csu_fini>:
 df0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000df4 <_fini>:
 df4:	48 83 ec 08          	sub    $0x8,%rsp
 df8:	48 83 c4 08          	add    $0x8,%rsp
 dfc:	c3                   	retq   
