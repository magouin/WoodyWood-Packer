
woody:     file format elf64-x86-64


Disassembly of section .init:

0000000000000530 <_init>:
 530:	48 83 ec 08          	sub    $0x8,%rsp
 534:	48 8b 05 a5 0a 20 00 	mov    0x200aa5(%rip),%rax        # 200fe0 <__gmon_start__>
 53b:	48 85 c0             	test   %rax,%rax
 53e:	74 02                	je     542 <_init+0x12>
 540:	ff d0                	callq  *%rax
 542:	48 83 c4 08          	add    $0x8,%rsp
 546:	c3                   	retq   

Disassembly of section .plt:

0000000000000550 <.plt>:
 550:	ff 35 b2 0a 20 00    	pushq  0x200ab2(%rip)        # 201008 <_GLOBAL_OFFSET_TABLE_+0x8>
 556:	ff 25 b4 0a 20 00    	jmpq   *0x200ab4(%rip)        # 201010 <_GLOBAL_OFFSET_TABLE_+0x10>
 55c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000560 <puts@plt>:
 560:	ff 25 b2 0a 20 00    	jmpq   *0x200ab2(%rip)        # 201018 <puts@GLIBC_2.2.5>
 566:	68 00 00 00 00       	pushq  $0x0
 56b:	e9 e0 ff ff ff       	jmpq   550 <.plt>

Disassembly of section .plt.got:

0000000000000570 <.plt.got>:
 570:	ff 25 82 0a 20 00    	jmpq   *0x200a82(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 576:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000580 <_start>:
 580:	35 97 86 8b e8       	xor    $0xe88b8697,%eax
 585:	af                   	scas   %es:(%rdi),%eax
 586:	78 b0                	js     538 <_init+0x8>
 588:	0a 3e                	or     (%rsi),%bh
 58a:	4c 60                	rex.WR (bad) 
 58c:	16                   	(bad)  
 58d:	7b 4c                	jnp    5db <deregister_tm_clones+0x2b>
 58f:	56                   	push   %rsi
 590:	b4 12                	mov    $0x12,%ah
 592:	d1 18                	rcrl   (%rax)
 594:	1e                   	(bad)  
 595:	77 07                	ja     59e <_start+0x1e>
 597:	d0                   	(bad)  
 598:	34 f6                	xor    $0xf6,%al
 59a:	c7                   	(bad)  
 59b:	f5                   	cmc    
 59c:	50                   	push   %rax
 59d:	c9                   	leaveq 
 59e:	65 b8 ae bd 65 d4    	gs mov $0xd465bdae,%eax
 5a4:	23 f2                	and    %edx,%esi
 5a6:	63 27                	movslq (%rdi),%esp
 5a8:	33 bc 73 0a 32 e6 dd 	xor    -0x2219cdf6(%rbx,%rsi,2),%edi
 5af:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)

00000000000005b0 <deregister_tm_clones>:
 5b0:	89 86 49 03 ea 7c    	mov    %eax,0x7cea0349(%rsi)
 5b6:	20 70 88             	and    %dh,-0x78(%rax)
 5b9:	e0 2a                	loopne 5e5 <deregister_tm_clones+0x35>
 5bb:	95                   	xchg   %eax,%ebp
 5bc:	dc 9e 40 61 2d 82    	fcompl -0x7dd29ec0(%rsi)
 5c2:	87 8b dc b9 b3 c1    	xchg   %ecx,-0x3e4c4624(%rbx)
 5c8:	e6 00                	out    %al,$0x0
 5ca:	da cc                	fcmove %st(4),%st
 5cc:	6d                   	insl   (%dx),%es:(%rdi)
 5cd:	2e e6 13             	cs out %al,$0x13
 5d0:	19 17                	sbb    %edx,(%rdi)
 5d2:	33 9c de 03 46 00 c6 	xor    -0x39ffb9fd(%rsi,%rbx,8),%ebx
 5d9:	25 a0 fa 4f c5       	and    $0xc54ffaa0,%eax
 5de:	e8 85 ff 7f 6a       	callq  6a800568 <_end+0x6a5ff530>
 5e3:	cb                   	lret   
 5e4:	9c                   	pushfq 
 5e5:	e7 2b                	out    %eax,$0x2b
 5e7:	03 1c a3             	add    (%rbx,%riz,4),%ebx
 5ea:	03 05 2d a2 dd a7    	add    -0x58225dd3(%rip),%eax        # ffffffffa7dda81d <_end+0xffffffffa7bd97e5>

00000000000005f0 <register_tm_clones>:
 5f0:	89 86 49 43 ea 7c    	mov    %eax,0x7cea4349(%rsi)
 5f6:	20 70 88             	and    %dh,-0x78(%rax)
 5f9:	d0 61 95             	shlb   -0x6b(%rcx)
 5fc:	dc 9e 40 61 2d 84    	fcompl -0x7bd29ec0(%rsi)
 602:	87 8b dc b9 f1 c7    	xchg   %ecx,-0x380e4624(%rbx)
 608:	eb 3e                	jmp    648 <__do_global_dtors_aux+0x8>
 60a:	46 74 ae             	rex.RX je 5bb <deregister_tm_clones+0xb>
 60d:	ea                   	(bad)  
 60e:	f0 25 71 16 bd 51    	lock and $0x51bd1671,%eax
 614:	cf                   	iret   
 615:	89 3b                	mov    %edi,(%rbx)
 617:	45 71 4e             	rex.RB jno 668 <__do_global_dtors_aux+0x28>
 61a:	c3                   	retq   
 61b:	24 59                	and    $0x59,%al
 61d:	a1 e8 cd 27 7c 11 d8 	movabs 0x1881d8117c27cde8,%eax
 624:	81 18 
 626:	ad                   	lods   %ds:(%rsi),%eax
 627:	4b 1c a3             	rex.WXB sbb $0xa3,%al
 62a:	03 05 2d a2 dd a7    	add    -0x58225dd3(%rip),%eax        # ffffffffa7dda85d <_end+0xffffffffa7bd9825>
 630:	9c                   	pushfq 
 631:	c8 7b 65 a0          	enterq $0x657b,$0xa0
 635:	5c                   	pop    %rsp
 636:	46 16                	rex.RX (bad) 
 638:	0a fa                	or     %dl,%bh
 63a:	d7                   	xlat   %ds:(%rbx)
 63b:	9f                   	lahf   
 63c:	fc                   	cld    
 63d:	9e                   	sahf   
 63e:	15                   	.byte 0x15
 63f:	29                   	.byte 0x29

0000000000000640 <__do_global_dtors_aux>:
 640:	84 47 26             	test   %al,0x26(%rdi)
 643:	0b 19                	or     (%rcx),%ebx
 645:	f1                   	icebp  
 646:	30 4c cf 3e          	xor    %cl,0x3e(%rdi,%rcx,8)
 64a:	4c b9 41 22 38 1a 39 	rex.WR movabs $0x903342391a382241,%rcx
 651:	42 33 90 
 654:	fb                   	sti    
 655:	03 43 15             	add    0x15(%rbx),%eax
 658:	b2 f8                	mov    $0xf8,%dl
 65a:	0c fc                	or     $0xfc,%al
 65c:	70 81                	jo     5df <deregister_tm_clones+0x2f>
 65e:	00 88 5d 43 9a 3c    	add    %cl,0x3c9a435d(%rax)
 664:	94                   	xchg   %eax,%esp
 665:	18 b2 d2 4e 7a 82    	sbb    %dh,-0x7d85b12e(%rdx)
 66b:	c5 24 82             	(bad)  
 66e:	dd a6 32 c8 7b 65    	frstor 0x657bc832(%rsi)
 674:	a0 5c 46 16 0a fa d7 	movabs 0xfc9fd7fa0a16465c,%al
 67b:	9f fc 
 67d:	9e                   	sahf   
 67e:	15                   	.byte 0x15
 67f:	29                   	.byte 0x29

0000000000000680 <frame_dummy>:
 680:	4c f7 f2             	rex.WR div %rdx
 683:	63 3e                	movslq (%rsi),%edi
 685:	d1                   	(bad)  
 686:	30 71 6b             	xor    %dh,0x6b(%rcx)
 689:	49 cf                	rex.WB iretq 
 68b:	f1                   	icebp  
 68c:	ed                   	in     (%dx),%eax
 68d:	c2 46 e5             	retq   $0xe546
 690:	c6                   	(bad)  
 691:	e8 1d 16 01 33       	callq  33011cb3 <_end+0x32e10c7b>
 696:	4f 5d                	rex.WRXB pop %r13
 698:	71 4e                	jno    6e8 <__libc_csu_init+0x18>
 69a:	c3                   	retq   
 69b:	bc 59 a1 e8 cd       	mov    $0xcde8a159,%esp
 6a0:	27                   	(bad)  
 6a1:	7c 11                	jl     6b4 <main+0x4>
 6a3:	3d 89 af c4 c8       	cmp    $0xc8c4af89,%eax
 6a8:	ec                   	in     (%dx),%al
 6a9:	6c                   	insb   (%dx),%es:(%rdi)
 6aa:	da ec                	(bad)  
 6ac:	6d                   	insl   (%dx),%es:(%rdi)
 6ad:	5d                   	pop    %rbp
 6ae:	22                   	.byte 0x22
 6af:	58                   	pop    %rax

00000000000006b0 <main>:
 6b0:	94                   	xchg   %eax,%esp
 6b1:	43 fd                	rex.XB std 
 6b3:	9f                   	lahf   
 6b4:	a8 d1                	test   $0xd1,%al
 6b6:	1d a1 05 e5 53       	sbb    $0x53e505a1,%eax
 6bb:	77 5c                	ja     719 <__libc_csu_init+0x49>
 6bd:	60                   	(bad)  
 6be:	ea                   	(bad)  
 6bf:	d6                   	(bad)  
 6c0:	bc 7a cf 02 39       	mov    $0x3902cf7a,%esp
 6c5:	ac                   	lods   %ds:(%rsi),%al
 6c6:	f3 5f                	repz pop %rdi
 6c8:	e7 69                	out    %eax,$0x69
 6ca:	4b 84 e6             	rex.WXB test %spl,%r14b
 6cd:	2b 18                	sub    (%rax),%ebx
 6cf:	1a                   	.byte 0x1a

00000000000006d0 <__libc_csu_init>:
 6d0:	78 40                	js     712 <__libc_csu_init+0x42>
 6d2:	3a 4f 5f             	cmp    0x5f(%rdi),%cl
 6d5:	fe                   	(bad)  
 6d6:	b0 1c                	mov    $0x1c,%al
 6d8:	6c                   	insb   (%dx),%es:(%rdi)
 6d9:	84 92 b9 dd a4 1e    	test   %dl,0x1ea4ddb9(%rdx)
 6df:	83 82 bc 30 9c 51 ca 	addl   $0xffffffca,0x519c30bc(%rdx)
 6e6:	bb 2b 33 bc d4       	mov    $0xd4bc332b,%ebx
 6eb:	4c a4                	rex.WR movsb %ds:(%rsi),%es:(%rdi)
 6ed:	54                   	push   %rsp
 6ee:	94                   	xchg   %eax,%esp
 6ef:	2e 14 47             	cs adc $0x47,%al
 6f2:	5d                   	pop    %rbp
 6f3:	9f                   	lahf   
 6f4:	a8 df                	test   $0xdf,%al
 6f6:	cc                   	int3   
 6f7:	30 4d 24             	xor    %cl,0x24(%rbp)
 6fa:	ae                   	scas   %es:(%rdi),%al
 6fb:	9c                   	pushfq 
 6fc:	14 b1                	adc    $0xb1,%al
 6fe:	eb d6                	jmp    6d6 <__libc_csu_init+0x6>
 700:	fb                   	sti    
 701:	32 4a ef             	xor    -0x11(%rdx),%cl
 704:	4d d1 01             	rex.WRB rolq (%r9)
 707:	e2 e7                	loop   6f0 <__libc_csu_init+0x20>
 709:	69 4b 84 e6 2b 18 1a 	imul   $0x1a182be6,-0x7c(%rbx),%ecx
 710:	75 9e                	jne    6b0 <main>
 712:	91                   	xchg   %eax,%ecx
 713:	55                   	push   %rbp
 714:	97                   	xchg   %eax,%edi
 715:	81 0b d4 c6 84 39    	orl    $0x3984c6d4,(%rbx)
 71b:	e1 8c                	loope  6a9 <frame_dummy+0x29>
 71d:	c9                   	leaveq 
 71e:	6b 46 a3 f4          	imul   $0xfffffff4,-0x5d(%rsi),%eax
 722:	5c                   	pop    %rsp
 723:	09 a9 0d 05 ae d7    	or     %ebp,-0x2851faf3(%rcx)
 729:	b4 dc                	mov    $0xdc,%ah
 72b:	58                   	pop    %rax
 72c:	6c                   	insb   (%dx),%es:(%rdi)
 72d:	fe                   	(bad)  
 72e:	9c                   	pushfq 
 72f:	fa                   	cli    
 730:	80 55 35 25          	adcb   $0x25,0x35(%rbp)
 734:	23 cc                	and    %esp,%ecx
 736:	46 16                	rex.RX (bad) 
 738:	0a fa                	or     %dl,%bh
 73a:	d7                   	xlat   %ds:(%rbx)
 73b:	9f                   	lahf   
 73c:	fc                   	cld    
 73d:	9e                   	sahf   
 73e:	15                   	.byte 0x15
 73f:	29                   	.byte 0x29

0000000000000740 <__libc_csu_fini>:
 740:	f7                   	.byte 0xf7
 741:	b9                   	.byte 0xb9

Disassembly of section .fini:

0000000000000744 <_fini>:
 744:	48 83 ec 08          	sub    $0x8,%rsp
 748:	48 83 c4 08          	add    $0x8,%rsp
 74c:	c3                   	retq   
