
test:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000238 <.interp>:
 238:	2f                   	(bad)  
 239:	6c                   	insb   (%dx),%es:(%rdi)
 23a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 246:	78 2d                	js     275 <_init-0x2bb>
 248:	78 38                	js     282 <_init-0x2ae>
 24a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 250:	6f                   	outsl  %ds:(%rsi),(%dx)
 251:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

0000000000000254 <.note.ABI-tag>:
 254:	04 00                	add    $0x0,%al
 256:	00 00                	add    %al,(%rax)
 258:	10 00                	adc    %al,(%rax)
 25a:	00 00                	add    %al,(%rax)
 25c:	01 00                	add    %eax,(%rax)
 25e:	00 00                	add    %al,(%rax)
 260:	47                   	rex.RXB
 261:	4e 55                	rex.WRX push %rbp
 263:	00 00                	add    %al,(%rax)
 265:	00 00                	add    %al,(%rax)
 267:	00 02                	add    %al,(%rdx)
 269:	00 00                	add    %al,(%rax)
 26b:	00 06                	add    %al,(%rsi)
 26d:	00 00                	add    %al,(%rax)
 26f:	00 20                	add    %ah,(%rax)
 271:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000000274 <.note.gnu.build-id>:
 274:	04 00                	add    $0x0,%al
 276:	00 00                	add    %al,(%rax)
 278:	14 00                	adc    $0x0,%al
 27a:	00 00                	add    %al,(%rax)
 27c:	03 00                	add    (%rax),%eax
 27e:	00 00                	add    %al,(%rax)
 280:	47                   	rex.RXB
 281:	4e 55                	rex.WRX push %rbp
 283:	00 f4                	add    %dh,%ah
 285:	57                   	push   %rdi
 286:	f7 c4 a1 d7 7f 9c    	test   $0x9c7fd7a1,%esp
 28c:	79 fe                	jns    28c <_init-0x2a4>
 28e:	10 6d 62             	adc    %ch,0x62(%rbp)
 291:	8d 00                	lea    (%rax),%eax
 293:	ee                   	out    %al,(%dx)
 294:	a8 85                	test   $0x85,%al
 296:	87                   	.byte 0x87
 297:	35                   	.byte 0x35

Disassembly of section .gnu.hash:

0000000000000298 <.gnu.hash>:
 298:	01 00                	add    %eax,(%rax)
 29a:	00 00                	add    %al,(%rax)
 29c:	01 00                	add    %eax,(%rax)
 29e:	00 00                	add    %al,(%rax)
 2a0:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .dynsym:

00000000000002b8 <.dynsym>:
	...
 2d0:	31 00                	xor    %eax,(%rax)
 2d2:	00 00                	add    %al,(%rax)
 2d4:	20 00                	and    %al,(%rax)
	...
 2e6:	00 00                	add    %al,(%rax)
 2e8:	0b 00                	or     (%rax),%eax
 2ea:	00 00                	add    %al,(%rax)
 2ec:	12 00                	adc    (%rax),%al
	...
 2fe:	00 00                	add    %al,(%rax)
 300:	1f                   	(bad)  
 301:	00 00                	add    %al,(%rax)
 303:	00 12                	add    %dl,(%rdx)
	...
 315:	00 00                	add    %al,(%rax)
 317:	00 4d 00             	add    %cl,0x0(%rbp)
 31a:	00 00                	add    %al,(%rax)
 31c:	20 00                	and    %al,(%rax)
	...
 32e:	00 00                	add    %al,(%rax)
 330:	5c                   	pop    %rsp
 331:	00 00                	add    %al,(%rax)
 333:	00 20                	add    %ah,(%rax)
	...
 345:	00 00                	add    %al,(%rax)
 347:	00 70 00             	add    %dh,0x0(%rax)
 34a:	00 00                	add    %al,(%rax)
 34c:	20 00                	and    %al,(%rax)
	...
 35e:	00 00                	add    %al,(%rax)
 360:	10 00                	adc    %al,(%rax)
 362:	00 00                	add    %al,(%rax)
 364:	22 00                	and    (%rax),%al
	...

Disassembly of section .dynstr:

0000000000000378 <.dynstr>:
 378:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
 37c:	63 2e                	movslq (%rsi),%ebp
 37e:	73 6f                	jae    3ef <_init-0x141>
 380:	2e 36 00 70 75       	cs add %dh,%ss:0x75(%rax)
 385:	74 73                	je     3fa <_init-0x136>
 387:	00 5f 5f             	add    %bl,0x5f(%rdi)
 38a:	63 78 61             	movslq 0x61(%rax),%edi
 38d:	5f                   	pop    %rdi
 38e:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 394:	7a 65                	jp     3fb <_init-0x135>
 396:	00 5f 5f             	add    %bl,0x5f(%rdi)
 399:	6c                   	insb   (%dx),%es:(%rdi)
 39a:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 3a1:	72 74                	jb     417 <_init-0x119>
 3a3:	5f                   	pop    %rdi
 3a4:	6d                   	insl   (%dx),%es:(%rdi)
 3a5:	61                   	(bad)  
 3a6:	69 6e 00 5f 49 54 4d 	imul   $0x4d54495f,0x0(%rsi),%ebp
 3ad:	5f                   	pop    %rdi
 3ae:	64 65 72 65          	fs gs jb 417 <_init-0x119>
 3b2:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 3b9:	4d 
 3ba:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 3bc:	6f                   	outsl  %ds:(%rsi),(%dx)
 3bd:	6e                   	outsb  %ds:(%rsi),(%dx)
 3be:	65 54                	gs push %rsp
 3c0:	61                   	(bad)  
 3c1:	62                   	(bad)  
 3c2:	6c                   	insb   (%dx),%es:(%rdi)
 3c3:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 3c7:	67 6d                	insl   (%dx),%es:(%edi)
 3c9:	6f                   	outsl  %ds:(%rsi),(%dx)
 3ca:	6e                   	outsb  %ds:(%rsi),(%dx)
 3cb:	5f                   	pop    %rdi
 3cc:	73 74                	jae    442 <_init-0xee>
 3ce:	61                   	(bad)  
 3cf:	72 74                	jb     445 <_init-0xeb>
 3d1:	5f                   	pop    %rdi
 3d2:	5f                   	pop    %rdi
 3d3:	00 5f 4a             	add    %bl,0x4a(%rdi)
 3d6:	76 5f                	jbe    437 <_init-0xf9>
 3d8:	52                   	push   %rdx
 3d9:	65 67 69 73 74 65 72 	imul   $0x6c437265,%gs:0x74(%ebx),%esi
 3e0:	43 6c 
 3e2:	61                   	(bad)  
 3e3:	73 73                	jae    458 <_init-0xd8>
 3e5:	65 73 00             	gs jae 3e8 <_init-0x148>
 3e8:	5f                   	pop    %rdi
 3e9:	49 54                	rex.WB push %r12
 3eb:	4d 5f                	rex.WRB pop %r15
 3ed:	72 65                	jb     454 <_init-0xdc>
 3ef:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 3f6:	4d 
 3f7:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 3f9:	6f                   	outsl  %ds:(%rsi),(%dx)
 3fa:	6e                   	outsb  %ds:(%rsi),(%dx)
 3fb:	65 54                	gs push %rsp
 3fd:	61                   	(bad)  
 3fe:	62                   	(bad)  
 3ff:	6c                   	insb   (%dx),%es:(%rdi)
 400:	65 00 47 4c          	add    %al,%gs:0x4c(%rdi)
 404:	49                   	rex.WB
 405:	42                   	rex.X
 406:	43 5f                	rex.XB pop %r15
 408:	32 2e                	xor    (%rsi),%ch
 40a:	32 2e                	xor    (%rsi),%ch
 40c:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

000000000000040e <.gnu.version>:
 40e:	00 00                	add    %al,(%rax)
 410:	00 00                	add    %al,(%rax)
 412:	02 00                	add    (%rax),%al
 414:	02 00                	add    (%rax),%al
 416:	00 00                	add    %al,(%rax)
 418:	00 00                	add    %al,(%rax)
 41a:	00 00                	add    %al,(%rax)
 41c:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

0000000000000420 <.gnu.version_r>:
 420:	01 00                	add    %eax,(%rax)
 422:	01 00                	add    %eax,(%rax)
 424:	01 00                	add    %eax,(%rax)
 426:	00 00                	add    %al,(%rax)
 428:	10 00                	adc    %al,(%rax)
 42a:	00 00                	add    %al,(%rax)
 42c:	00 00                	add    %al,(%rax)
 42e:	00 00                	add    %al,(%rax)
 430:	75 1a                	jne    44c <_init-0xe4>
 432:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
 438:	8a 00                	mov    (%rax),%al
 43a:	00 00                	add    %al,(%rax)
 43c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000000440 <.rela.dyn>:
 440:	d8 0d 20 00 00 00    	fmuls  0x20(%rip)        # 466 <_init-0xca>
 446:	00 00                	add    %al,(%rax)
 448:	08 00                	or     %al,(%rax)
 44a:	00 00                	add    %al,(%rax)
 44c:	00 00                	add    %al,(%rax)
 44e:	00 00                	add    %al,(%rax)
 450:	80 06 00             	addb   $0x0,(%rsi)
 453:	00 00                	add    %al,(%rax)
 455:	00 00                	add    %al,(%rax)
 457:	00 e0                	add    %ah,%al
 459:	0d 20 00 00 00       	or     $0x20,%eax
 45e:	00 00                	add    %al,(%rax)
 460:	08 00                	or     %al,(%rax)
 462:	00 00                	add    %al,(%rax)
 464:	00 00                	add    %al,(%rax)
 466:	00 00                	add    %al,(%rax)
 468:	40 06                	rex (bad) 
 46a:	00 00                	add    %al,(%rax)
 46c:	00 00                	add    %al,(%rax)
 46e:	00 00                	add    %al,(%rax)
 470:	28 10                	sub    %dl,(%rax)
 472:	20 00                	and    %al,(%rax)
 474:	00 00                	add    %al,(%rax)
 476:	00 00                	add    %al,(%rax)
 478:	08 00                	or     %al,(%rax)
 47a:	00 00                	add    %al,(%rax)
 47c:	00 00                	add    %al,(%rax)
 47e:	00 00                	add    %al,(%rax)
 480:	28 10                	sub    %dl,(%rax)
 482:	20 00                	and    %al,(%rax)
 484:	00 00                	add    %al,(%rax)
 486:	00 00                	add    %al,(%rax)
 488:	d0 0f                	rorb   (%rdi)
 48a:	20 00                	and    %al,(%rax)
 48c:	00 00                	add    %al,(%rax)
 48e:	00 00                	add    %al,(%rax)
 490:	06                   	(bad)  
 491:	00 00                	add    %al,(%rax)
 493:	00 01                	add    %al,(%rcx)
	...
 49d:	00 00                	add    %al,(%rax)
 49f:	00 d8                	add    %bl,%al
 4a1:	0f 20 00             	mov    %cr0,%rax
 4a4:	00 00                	add    %al,(%rax)
 4a6:	00 00                	add    %al,(%rax)
 4a8:	06                   	(bad)  
 4a9:	00 00                	add    %al,(%rax)
 4ab:	00 03                	add    %al,(%rbx)
	...
 4b5:	00 00                	add    %al,(%rax)
 4b7:	00 e0                	add    %ah,%al
 4b9:	0f 20 00             	mov    %cr0,%rax
 4bc:	00 00                	add    %al,(%rax)
 4be:	00 00                	add    %al,(%rax)
 4c0:	06                   	(bad)  
 4c1:	00 00                	add    %al,(%rax)
 4c3:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 4ce:	00 00                	add    %al,(%rax)
 4d0:	e8 0f 20 00 00       	callq  24e4 <__FRAME_END__+0x1c3c>
 4d5:	00 00                	add    %al,(%rax)
 4d7:	00 06                	add    %al,(%rsi)
 4d9:	00 00                	add    %al,(%rax)
 4db:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 4e1 <_init-0x4f>
 4e1:	00 00                	add    %al,(%rax)
 4e3:	00 00                	add    %al,(%rax)
 4e5:	00 00                	add    %al,(%rax)
 4e7:	00 f0                	add    %dh,%al
 4e9:	0f 20 00             	mov    %cr0,%rax
 4ec:	00 00                	add    %al,(%rax)
 4ee:	00 00                	add    %al,(%rax)
 4f0:	06                   	(bad)  
 4f1:	00 00                	add    %al,(%rax)
 4f3:	00 06                	add    %al,(%rsi)
	...
 4fd:	00 00                	add    %al,(%rax)
 4ff:	00 f8                	add    %bh,%al
 501:	0f 20 00             	mov    %cr0,%rax
 504:	00 00                	add    %al,(%rax)
 506:	00 00                	add    %al,(%rax)
 508:	06                   	(bad)  
 509:	00 00                	add    %al,(%rax)
 50b:	00 07                	add    %al,(%rdi)
	...

Disassembly of section .rela.plt:

0000000000000518 <.rela.plt>:
 518:	18 10                	sbb    %dl,(%rax)
 51a:	20 00                	and    %al,(%rax)
 51c:	00 00                	add    %al,(%rax)
 51e:	00 00                	add    %al,(%rax)
 520:	07                   	(bad)  
 521:	00 00                	add    %al,(%rax)
 523:	00 02                	add    %al,(%rdx)
	...

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
 580:	31 ed                	xor    %ebp,%ebp
 582:	49 89 d1             	mov    %rdx,%r9
 585:	5e                   	pop    %rsi
 586:	48 89 e2             	mov    %rsp,%rdx
 589:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 58d:	50                   	push   %rax
 58e:	54                   	push   %rsp
 58f:	4c 8d 05 aa 01 00 00 	lea    0x1aa(%rip),%r8        # 740 <__libc_csu_fini>
 596:	48 8d 0d 33 01 00 00 	lea    0x133(%rip),%rcx        # 6d0 <__libc_csu_init>
 59d:	48 8d 3d 0c 01 00 00 	lea    0x10c(%rip),%rdi        # 6b0 <main>
 5a4:	ff 15 2e 0a 20 00    	callq  *0x200a2e(%rip)        # 200fd8 <__libc_start_main@GLIBC_2.2.5>
 5aa:	f4                   	hlt    
 5ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000005b0 <deregister_tm_clones>:
 5b0:	48 8d 3d 79 0a 20 00 	lea    0x200a79(%rip),%rdi        # 201030 <__TMC_END__>
 5b7:	48 8d 05 79 0a 20 00 	lea    0x200a79(%rip),%rax        # 201037 <__TMC_END__+0x7>
 5be:	55                   	push   %rbp
 5bf:	48 29 f8             	sub    %rdi,%rax
 5c2:	48 89 e5             	mov    %rsp,%rbp
 5c5:	48 83 f8 0e          	cmp    $0xe,%rax
 5c9:	76 15                	jbe    5e0 <deregister_tm_clones+0x30>
 5cb:	48 8b 05 fe 09 20 00 	mov    0x2009fe(%rip),%rax        # 200fd0 <_ITM_deregisterTMCloneTable>
 5d2:	48 85 c0             	test   %rax,%rax
 5d5:	74 09                	je     5e0 <deregister_tm_clones+0x30>
 5d7:	5d                   	pop    %rbp
 5d8:	ff e0                	jmpq   *%rax
 5da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 5e0:	5d                   	pop    %rbp
 5e1:	c3                   	retq   
 5e2:	0f 1f 40 00          	nopl   0x0(%rax)
 5e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 5ed:	00 00 00 

00000000000005f0 <register_tm_clones>:
 5f0:	48 8d 3d 39 0a 20 00 	lea    0x200a39(%rip),%rdi        # 201030 <__TMC_END__>
 5f7:	48 8d 35 32 0a 20 00 	lea    0x200a32(%rip),%rsi        # 201030 <__TMC_END__>
 5fe:	55                   	push   %rbp
 5ff:	48 29 fe             	sub    %rdi,%rsi
 602:	48 89 e5             	mov    %rsp,%rbp
 605:	48 c1 fe 03          	sar    $0x3,%rsi
 609:	48 89 f0             	mov    %rsi,%rax
 60c:	48 c1 e8 3f          	shr    $0x3f,%rax
 610:	48 01 c6             	add    %rax,%rsi
 613:	48 d1 fe             	sar    %rsi
 616:	74 18                	je     630 <register_tm_clones+0x40>
 618:	48 8b 05 d1 09 20 00 	mov    0x2009d1(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 61f:	48 85 c0             	test   %rax,%rax
 622:	74 0c                	je     630 <register_tm_clones+0x40>
 624:	5d                   	pop    %rbp
 625:	ff e0                	jmpq   *%rax
 627:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 62e:	00 00 
 630:	5d                   	pop    %rbp
 631:	c3                   	retq   
 632:	0f 1f 40 00          	nopl   0x0(%rax)
 636:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 63d:	00 00 00 

0000000000000640 <__do_global_dtors_aux>:
 640:	80 3d e9 09 20 00 00 	cmpb   $0x0,0x2009e9(%rip)        # 201030 <__TMC_END__>
 647:	75 27                	jne    670 <__do_global_dtors_aux+0x30>
 649:	48 83 3d a7 09 20 00 	cmpq   $0x0,0x2009a7(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 650:	00 
 651:	55                   	push   %rbp
 652:	48 89 e5             	mov    %rsp,%rbp
 655:	74 0c                	je     663 <__do_global_dtors_aux+0x23>
 657:	48 8b 3d ca 09 20 00 	mov    0x2009ca(%rip),%rdi        # 201028 <__dso_handle>
 65e:	e8 0d ff ff ff       	callq  570 <.plt.got>
 663:	e8 48 ff ff ff       	callq  5b0 <deregister_tm_clones>
 668:	5d                   	pop    %rbp
 669:	c6 05 c0 09 20 00 01 	movb   $0x1,0x2009c0(%rip)        # 201030 <__TMC_END__>
 670:	f3 c3                	repz retq 
 672:	0f 1f 40 00          	nopl   0x0(%rax)
 676:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 67d:	00 00 00 

0000000000000680 <frame_dummy>:
 680:	48 8d 3d 61 07 20 00 	lea    0x200761(%rip),%rdi        # 200de8 <__JCR_END__>
 687:	48 83 3f 00          	cmpq   $0x0,(%rdi)
 68b:	75 0b                	jne    698 <frame_dummy+0x18>
 68d:	e9 5e ff ff ff       	jmpq   5f0 <register_tm_clones>
 692:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 698:	48 8b 05 49 09 20 00 	mov    0x200949(%rip),%rax        # 200fe8 <_Jv_RegisterClasses>
 69f:	48 85 c0             	test   %rax,%rax
 6a2:	74 e9                	je     68d <frame_dummy+0xd>
 6a4:	55                   	push   %rbp
 6a5:	48 89 e5             	mov    %rsp,%rbp
 6a8:	ff d0                	callq  *%rax
 6aa:	5d                   	pop    %rbp
 6ab:	e9 40 ff ff ff       	jmpq   5f0 <register_tm_clones>

00000000000006b0 <main>:
 6b0:	55                   	push   %rbp
 6b1:	48 89 e5             	mov    %rsp,%rbp
 6b4:	48 8d 3d 99 00 00 00 	lea    0x99(%rip),%rdi        # 754 <_IO_stdin_used+0x4>
 6bb:	e8 a0 fe ff ff       	callq  560 <puts@plt>
 6c0:	b8 00 00 00 00       	mov    $0x0,%eax
 6c5:	5d                   	pop    %rbp
 6c6:	c3                   	retq   
 6c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 6ce:	00 00 

00000000000006d0 <__libc_csu_init>:
 6d0:	41 57                	push   %r15
 6d2:	41 56                	push   %r14
 6d4:	41 89 ff             	mov    %edi,%r15d
 6d7:	41 55                	push   %r13
 6d9:	41 54                	push   %r12
 6db:	4c 8d 25 f6 06 20 00 	lea    0x2006f6(%rip),%r12        # 200dd8 <__frame_dummy_init_array_entry>
 6e2:	55                   	push   %rbp
 6e3:	48 8d 2d f6 06 20 00 	lea    0x2006f6(%rip),%rbp        # 200de0 <__init_array_end>
 6ea:	53                   	push   %rbx
 6eb:	49 89 f6             	mov    %rsi,%r14
 6ee:	49 89 d5             	mov    %rdx,%r13
 6f1:	4c 29 e5             	sub    %r12,%rbp
 6f4:	48 83 ec 08          	sub    $0x8,%rsp
 6f8:	48 c1 fd 03          	sar    $0x3,%rbp
 6fc:	e8 2f fe ff ff       	callq  530 <_init>
 701:	48 85 ed             	test   %rbp,%rbp
 704:	74 20                	je     726 <__libc_csu_init+0x56>
 706:	31 db                	xor    %ebx,%ebx
 708:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 70f:	00 
 710:	4c 89 ea             	mov    %r13,%rdx
 713:	4c 89 f6             	mov    %r14,%rsi
 716:	44 89 ff             	mov    %r15d,%edi
 719:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 71d:	48 83 c3 01          	add    $0x1,%rbx
 721:	48 39 dd             	cmp    %rbx,%rbp
 724:	75 ea                	jne    710 <__libc_csu_init+0x40>
 726:	48 83 c4 08          	add    $0x8,%rsp
 72a:	5b                   	pop    %rbx
 72b:	5d                   	pop    %rbp
 72c:	41 5c                	pop    %r12
 72e:	41 5d                	pop    %r13
 730:	41 5e                	pop    %r14
 732:	41 5f                	pop    %r15
 734:	c3                   	retq   
 735:	90                   	nop
 736:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 73d:	00 00 00 

0000000000000740 <__libc_csu_fini>:
 740:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000744 <_fini>:
 744:	48 83 ec 08          	sub    $0x8,%rsp
 748:	48 83 c4 08          	add    $0x8,%rsp
 74c:	c3                   	retq   

Disassembly of section .rodata:

0000000000000750 <_IO_stdin_used>:
 750:	01 00                	add    %eax,(%rax)
 752:	02 00                	add    (%rax),%al
 754:	48                   	rex.W
 755:	65 6c                	gs insb (%dx),%es:(%rdi)
 757:	6c                   	insb   (%dx),%es:(%rdi)
 758:	6f                   	outsl  %ds:(%rsi),(%dx)
 759:	2c 20                	sub    $0x20,%al
 75b:	57                   	push   %rdi
 75c:	6f                   	outsl  %ds:(%rsi),(%dx)
 75d:	72 6c                	jb     7cb <__GNU_EH_FRAME_HDR+0x67>
 75f:	64 21 00             	and    %eax,%fs:(%rax)

Disassembly of section .eh_frame_hdr:

0000000000000764 <__GNU_EH_FRAME_HDR>:
 764:	01 1b                	add    %ebx,(%rbx)
 766:	03 3b                	add    (%rbx),%edi
 768:	38 00                	cmp    %al,(%rax)
 76a:	00 00                	add    %al,(%rax)
 76c:	06                   	(bad)  
 76d:	00 00                	add    %al,(%rax)
 76f:	00 ec                	add    %ch,%ah
 771:	fd                   	std    
 772:	ff                   	(bad)  
 773:	ff 84 00 00 00 0c fe 	incl   -0x1f40000(%rax,%rax,1)
 77a:	ff                   	(bad)  
 77b:	ff ac 00 00 00 1c fe 	ljmp   *-0x1e40000(%rax,%rax,1)
 782:	ff                   	(bad)  
 783:	ff 54 00 00          	callq  *0x0(%rax,%rax,1)
 787:	00 4c ff ff          	add    %cl,-0x1(%rdi,%rdi,8)
 78b:	ff c4                	inc    %esp
 78d:	00 00                	add    %al,(%rax)
 78f:	00 6c ff ff          	add    %ch,-0x1(%rdi,%rdi,8)
 793:	ff e4                	jmpq   *%rsp
 795:	00 00                	add    %al,(%rax)
 797:	00 dc                	add    %bl,%ah
 799:	ff                   	(bad)  
 79a:	ff                   	(bad)  
 79b:	ff 2c 01             	ljmp   *(%rcx,%rax,1)
	...

Disassembly of section .eh_frame:

00000000000007a0 <__FRAME_END__-0x108>:
 7a0:	14 00                	adc    $0x0,%al
 7a2:	00 00                	add    %al,(%rax)
 7a4:	00 00                	add    %al,(%rax)
 7a6:	00 00                	add    %al,(%rax)
 7a8:	01 7a 52             	add    %edi,0x52(%rdx)
 7ab:	00 01                	add    %al,(%rcx)
 7ad:	78 10                	js     7bf <__GNU_EH_FRAME_HDR+0x5b>
 7af:	01 1b                	add    %ebx,(%rbx)
 7b1:	0c 07                	or     $0x7,%al
 7b3:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
 7b9:	00 00                	add    %al,(%rax)
 7bb:	00 1c 00             	add    %bl,(%rax,%rax,1)
 7be:	00 00                	add    %al,(%rax)
 7c0:	c0 fd ff             	sar    $0xff,%ch
 7c3:	ff 2b                	ljmp   *(%rbx)
	...
 7cd:	00 00                	add    %al,(%rax)
 7cf:	00 14 00             	add    %dl,(%rax,%rax,1)
 7d2:	00 00                	add    %al,(%rax)
 7d4:	00 00                	add    %al,(%rax)
 7d6:	00 00                	add    %al,(%rax)
 7d8:	01 7a 52             	add    %edi,0x52(%rdx)
 7db:	00 01                	add    %al,(%rcx)
 7dd:	78 10                	js     7ef <__GNU_EH_FRAME_HDR+0x8b>
 7df:	01 1b                	add    %ebx,(%rbx)
 7e1:	0c 07                	or     $0x7,%al
 7e3:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
 7e9:	00 00                	add    %al,(%rax)
 7eb:	00 1c 00             	add    %bl,(%rax,%rax,1)
 7ee:	00 00                	add    %al,(%rax)
 7f0:	60                   	(bad)  
 7f1:	fd                   	std    
 7f2:	ff                   	(bad)  
 7f3:	ff 20                	jmpq   *(%rax)
 7f5:	00 00                	add    %al,(%rax)
 7f7:	00 00                	add    %al,(%rax)
 7f9:	0e                   	(bad)  
 7fa:	10 46 0e             	adc    %al,0xe(%rsi)
 7fd:	18 4a 0f             	sbb    %cl,0xf(%rdx)
 800:	0b 77 08             	or     0x8(%rdi),%esi
 803:	80 00 3f             	addb   $0x3f,(%rax)
 806:	1a 3b                	sbb    (%rbx),%bh
 808:	2a 33                	sub    (%rbx),%dh
 80a:	24 22                	and    $0x22,%al
 80c:	00 00                	add    %al,(%rax)
 80e:	00 00                	add    %al,(%rax)
 810:	14 00                	adc    $0x0,%al
 812:	00 00                	add    %al,(%rax)
 814:	44 00 00             	add    %r8b,(%rax)
 817:	00 58 fd             	add    %bl,-0x3(%rax)
 81a:	ff                   	(bad)  
 81b:	ff 08                	decl   (%rax)
	...
 825:	00 00                	add    %al,(%rax)
 827:	00 1c 00             	add    %bl,(%rax,%rax,1)
 82a:	00 00                	add    %al,(%rax)
 82c:	5c                   	pop    %rsp
 82d:	00 00                	add    %al,(%rax)
 82f:	00 80 fe ff ff 17    	add    %al,0x17fffffe(%rax)
 835:	00 00                	add    %al,(%rax)
 837:	00 00                	add    %al,(%rax)
 839:	41 0e                	rex.B (bad) 
 83b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
 841:	52                   	push   %rdx
 842:	0c 07                	or     $0x7,%al
 844:	08 00                	or     %al,(%rax)
 846:	00 00                	add    %al,(%rax)
 848:	44 00 00             	add    %r8b,(%rax)
 84b:	00 7c 00 00          	add    %bh,0x0(%rax,%rax,1)
 84f:	00 80 fe ff ff 65    	add    %al,0x65fffffe(%rax)
 855:	00 00                	add    %al,(%rax)
 857:	00 00                	add    %al,(%rax)
 859:	42 0e                	rex.X (bad) 
 85b:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
 861:	8e 03                	mov    (%rbx),%es
 863:	45 0e                	rex.RB (bad) 
 865:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
 86b:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff863016b9 <_end+0xffffffff86100681>
 871:	06                   	(bad)  
 872:	48 0e                	rex.W (bad) 
 874:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
 87a:	72 0e                	jb     88a <__GNU_EH_FRAME_HDR+0x126>
 87c:	38 41 0e             	cmp    %al,0xe(%rcx)
 87f:	30 41 0e             	xor    %al,0xe(%rcx)
 882:	28 42 0e             	sub    %al,0xe(%rdx)
 885:	20 42 0e             	and    %al,0xe(%rdx)
 888:	18 42 0e             	sbb    %al,0xe(%rdx)
 88b:	10 42 0e             	adc    %al,0xe(%rdx)
 88e:	08 00                	or     %al,(%rax)
 890:	14 00                	adc    $0x0,%al
 892:	00 00                	add    %al,(%rax)
 894:	c4                   	(bad)  
 895:	00 00                	add    %al,(%rax)
 897:	00 a8 fe ff ff 02    	add    %ch,0x2fffffe(%rax)
	...

00000000000008a8 <__FRAME_END__>:
 8a8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000200dd8 <__frame_dummy_init_array_entry>:
  200dd8:	80 06 00             	addb   $0x0,(%rsi)
  200ddb:	00 00                	add    %al,(%rax)
  200ddd:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000200de0 <__do_global_dtors_aux_fini_array_entry>:
  200de0:	40 06                	rex (bad) 
  200de2:	00 00                	add    %al,(%rax)
  200de4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .jcr:

0000000000200de8 <__JCR_END__>:
	...

Disassembly of section .dynamic:

0000000000200df0 <_DYNAMIC>:
  200df0:	01 00                	add    %eax,(%rax)
  200df2:	00 00                	add    %al,(%rax)
  200df4:	00 00                	add    %al,(%rax)
  200df6:	00 00                	add    %al,(%rax)
  200df8:	01 00                	add    %eax,(%rax)
  200dfa:	00 00                	add    %al,(%rax)
  200dfc:	00 00                	add    %al,(%rax)
  200dfe:	00 00                	add    %al,(%rax)
  200e00:	0c 00                	or     $0x0,%al
  200e02:	00 00                	add    %al,(%rax)
  200e04:	00 00                	add    %al,(%rax)
  200e06:	00 00                	add    %al,(%rax)
  200e08:	30 05 00 00 00 00    	xor    %al,0x0(%rip)        # 200e0e <_DYNAMIC+0x1e>
  200e0e:	00 00                	add    %al,(%rax)
  200e10:	0d 00 00 00 00       	or     $0x0,%eax
  200e15:	00 00                	add    %al,(%rax)
  200e17:	00 44 07 00          	add    %al,0x0(%rdi,%rax,1)
  200e1b:	00 00                	add    %al,(%rax)
  200e1d:	00 00                	add    %al,(%rax)
  200e1f:	00 19                	add    %bl,(%rcx)
  200e21:	00 00                	add    %al,(%rax)
  200e23:	00 00                	add    %al,(%rax)
  200e25:	00 00                	add    %al,(%rax)
  200e27:	00 d8                	add    %bl,%al
  200e29:	0d 20 00 00 00       	or     $0x20,%eax
  200e2e:	00 00                	add    %al,(%rax)
  200e30:	1b 00                	sbb    (%rax),%eax
  200e32:	00 00                	add    %al,(%rax)
  200e34:	00 00                	add    %al,(%rax)
  200e36:	00 00                	add    %al,(%rax)
  200e38:	08 00                	or     %al,(%rax)
  200e3a:	00 00                	add    %al,(%rax)
  200e3c:	00 00                	add    %al,(%rax)
  200e3e:	00 00                	add    %al,(%rax)
  200e40:	1a 00                	sbb    (%rax),%al
  200e42:	00 00                	add    %al,(%rax)
  200e44:	00 00                	add    %al,(%rax)
  200e46:	00 00                	add    %al,(%rax)
  200e48:	e0 0d                	loopne 200e57 <_DYNAMIC+0x67>
  200e4a:	20 00                	and    %al,(%rax)
  200e4c:	00 00                	add    %al,(%rax)
  200e4e:	00 00                	add    %al,(%rax)
  200e50:	1c 00                	sbb    $0x0,%al
  200e52:	00 00                	add    %al,(%rax)
  200e54:	00 00                	add    %al,(%rax)
  200e56:	00 00                	add    %al,(%rax)
  200e58:	08 00                	or     %al,(%rax)
  200e5a:	00 00                	add    %al,(%rax)
  200e5c:	00 00                	add    %al,(%rax)
  200e5e:	00 00                	add    %al,(%rax)
  200e60:	f5                   	cmc    
  200e61:	fe                   	(bad)  
  200e62:	ff 6f 00             	ljmp   *0x0(%rdi)
  200e65:	00 00                	add    %al,(%rax)
  200e67:	00 98 02 00 00 00    	add    %bl,0x2(%rax)
  200e6d:	00 00                	add    %al,(%rax)
  200e6f:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 200e75 <_DYNAMIC+0x85>
  200e75:	00 00                	add    %al,(%rax)
  200e77:	00 78 03             	add    %bh,0x3(%rax)
  200e7a:	00 00                	add    %al,(%rax)
  200e7c:	00 00                	add    %al,(%rax)
  200e7e:	00 00                	add    %al,(%rax)
  200e80:	06                   	(bad)  
  200e81:	00 00                	add    %al,(%rax)
  200e83:	00 00                	add    %al,(%rax)
  200e85:	00 00                	add    %al,(%rax)
  200e87:	00 b8 02 00 00 00    	add    %bh,0x2(%rax)
  200e8d:	00 00                	add    %al,(%rax)
  200e8f:	00 0a                	add    %cl,(%rdx)
  200e91:	00 00                	add    %al,(%rax)
  200e93:	00 00                	add    %al,(%rax)
  200e95:	00 00                	add    %al,(%rax)
  200e97:	00 96 00 00 00 00    	add    %dl,0x0(%rsi)
  200e9d:	00 00                	add    %al,(%rax)
  200e9f:	00 0b                	add    %cl,(%rbx)
  200ea1:	00 00                	add    %al,(%rax)
  200ea3:	00 00                	add    %al,(%rax)
  200ea5:	00 00                	add    %al,(%rax)
  200ea7:	00 18                	add    %bl,(%rax)
  200ea9:	00 00                	add    %al,(%rax)
  200eab:	00 00                	add    %al,(%rax)
  200ead:	00 00                	add    %al,(%rax)
  200eaf:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 200eb5 <_DYNAMIC+0xc5>
	...
  200ebd:	00 00                	add    %al,(%rax)
  200ebf:	00 03                	add    %al,(%rbx)
	...
  200ec9:	10 20                	adc    %ah,(%rax)
  200ecb:	00 00                	add    %al,(%rax)
  200ecd:	00 00                	add    %al,(%rax)
  200ecf:	00 02                	add    %al,(%rdx)
  200ed1:	00 00                	add    %al,(%rax)
  200ed3:	00 00                	add    %al,(%rax)
  200ed5:	00 00                	add    %al,(%rax)
  200ed7:	00 18                	add    %bl,(%rax)
  200ed9:	00 00                	add    %al,(%rax)
  200edb:	00 00                	add    %al,(%rax)
  200edd:	00 00                	add    %al,(%rax)
  200edf:	00 14 00             	add    %dl,(%rax,%rax,1)
  200ee2:	00 00                	add    %al,(%rax)
  200ee4:	00 00                	add    %al,(%rax)
  200ee6:	00 00                	add    %al,(%rax)
  200ee8:	07                   	(bad)  
  200ee9:	00 00                	add    %al,(%rax)
  200eeb:	00 00                	add    %al,(%rax)
  200eed:	00 00                	add    %al,(%rax)
  200eef:	00 17                	add    %dl,(%rdi)
  200ef1:	00 00                	add    %al,(%rax)
  200ef3:	00 00                	add    %al,(%rax)
  200ef5:	00 00                	add    %al,(%rax)
  200ef7:	00 18                	add    %bl,(%rax)
  200ef9:	05 00 00 00 00       	add    $0x0,%eax
  200efe:	00 00                	add    %al,(%rax)
  200f00:	07                   	(bad)  
  200f01:	00 00                	add    %al,(%rax)
  200f03:	00 00                	add    %al,(%rax)
  200f05:	00 00                	add    %al,(%rax)
  200f07:	00 40 04             	add    %al,0x4(%rax)
  200f0a:	00 00                	add    %al,(%rax)
  200f0c:	00 00                	add    %al,(%rax)
  200f0e:	00 00                	add    %al,(%rax)
  200f10:	08 00                	or     %al,(%rax)
  200f12:	00 00                	add    %al,(%rax)
  200f14:	00 00                	add    %al,(%rax)
  200f16:	00 00                	add    %al,(%rax)
  200f18:	d8 00                	fadds  (%rax)
  200f1a:	00 00                	add    %al,(%rax)
  200f1c:	00 00                	add    %al,(%rax)
  200f1e:	00 00                	add    %al,(%rax)
  200f20:	09 00                	or     %eax,(%rax)
  200f22:	00 00                	add    %al,(%rax)
  200f24:	00 00                	add    %al,(%rax)
  200f26:	00 00                	add    %al,(%rax)
  200f28:	18 00                	sbb    %al,(%rax)
  200f2a:	00 00                	add    %al,(%rax)
  200f2c:	00 00                	add    %al,(%rax)
  200f2e:	00 00                	add    %al,(%rax)
  200f30:	fb                   	sti    
  200f31:	ff                   	(bad)  
  200f32:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f35:	00 00                	add    %al,(%rax)
  200f37:	00 00                	add    %al,(%rax)
  200f39:	00 00                	add    %al,(%rax)
  200f3b:	08 00                	or     %al,(%rax)
  200f3d:	00 00                	add    %al,(%rax)
  200f3f:	00 fe                	add    %bh,%dh
  200f41:	ff                   	(bad)  
  200f42:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f45:	00 00                	add    %al,(%rax)
  200f47:	00 20                	add    %ah,(%rax)
  200f49:	04 00                	add    $0x0,%al
  200f4b:	00 00                	add    %al,(%rax)
  200f4d:	00 00                	add    %al,(%rax)
  200f4f:	00 ff                	add    %bh,%bh
  200f51:	ff                   	(bad)  
  200f52:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f55:	00 00                	add    %al,(%rax)
  200f57:	00 01                	add    %al,(%rcx)
  200f59:	00 00                	add    %al,(%rax)
  200f5b:	00 00                	add    %al,(%rax)
  200f5d:	00 00                	add    %al,(%rax)
  200f5f:	00 f0                	add    %dh,%al
  200f61:	ff                   	(bad)  
  200f62:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f65:	00 00                	add    %al,(%rax)
  200f67:	00 0e                	add    %cl,(%rsi)
  200f69:	04 00                	add    $0x0,%al
  200f6b:	00 00                	add    %al,(%rax)
  200f6d:	00 00                	add    %al,(%rax)
  200f6f:	00 f9                	add    %bh,%cl
  200f71:	ff                   	(bad)  
  200f72:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f75:	00 00                	add    %al,(%rax)
  200f77:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .got:

0000000000200fd0 <.got>:
	...

Disassembly of section .got.plt:

0000000000201000 <_GLOBAL_OFFSET_TABLE_>:
  201000:	f0 0d 20 00 00 00    	lock or $0x20,%eax
	...
  201016:	00 00                	add    %al,(%rax)
  201018:	66 05 00 00          	add    $0x0,%ax
  20101c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000201020 <__data_start>:
	...

0000000000201028 <__dso_handle>:
  201028:	28 10                	sub    %dl,(%rax)
  20102a:	20 00                	and    %al,(%rax)
  20102c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .bss:

0000000000201030 <__bss_start>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 44 65 62          	sub    %al,0x62(%rbp,%riz,2)
   9:	69 61 6e 20 36 2e 33 	imul   $0x332e3620,0x6e(%rcx),%esp
  10:	2e 30 2d 31 38 2b 64 	xor    %ch,%cs:0x642b3831(%rip)        # 642b3848 <_end+0x640b2810>
  17:	65 62                	gs (bad) 
  19:	39 75 31             	cmp    %esi,0x31(%rbp)
  1c:	29 20                	sub    %esp,(%rax)
  1e:	36 2e 33 2e          	ss xor %cs:(%rsi),%ebp
  22:	30 20                	xor    %ah,(%rax)
  24:	32 30                	xor    (%rax),%dh
  26:	31 37                	xor    %esi,(%rdi)
  28:	30                   	.byte 0x30
  29:	35                   	.byte 0x35
  2a:	31 36                	xor    %esi,(%rsi)
	...
