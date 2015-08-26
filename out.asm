
exec:     file format elf64-x86-64


Disassembly of section .init:

0000000000400470 <_init>:
  400470:	48 83 ec 08          	sub    rsp,0x8
  400474:	48 8b 05 7d 0b 20 00 	mov    rax,QWORD PTR [rip+0x200b7d]        # 600ff8 <_DYNAMIC+0x1d0>
  40047b:	48 85 c0             	test   rax,rax
  40047e:	74 05                	je     400485 <_init+0x15>
  400480:	e8 4b 00 00 00       	call   4004d0 <__gmon_start__@plt>
  400485:	48 83 c4 08          	add    rsp,0x8
  400489:	c3                   	ret    

Disassembly of section .plt:

0000000000400490 <puts@plt-0x10>:
  400490:	ff 35 72 0b 20 00    	push   QWORD PTR [rip+0x200b72]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400496:	ff 25 74 0b 20 00    	jmp    QWORD PTR [rip+0x200b74]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40049c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004004a0 <puts@plt>:
  4004a0:	ff 25 72 0b 20 00    	jmp    QWORD PTR [rip+0x200b72]        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  4004a6:	68 00 00 00 00       	push   0x0
  4004ab:	e9 e0 ff ff ff       	jmp    400490 <_init+0x20>

00000000004004b0 <mmap@plt>:
  4004b0:	ff 25 6a 0b 20 00    	jmp    QWORD PTR [rip+0x200b6a]        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  4004b6:	68 01 00 00 00       	push   0x1
  4004bb:	e9 d0 ff ff ff       	jmp    400490 <_init+0x20>

00000000004004c0 <__libc_start_main@plt>:
  4004c0:	ff 25 62 0b 20 00    	jmp    QWORD PTR [rip+0x200b62]        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  4004c6:	68 02 00 00 00       	push   0x2
  4004cb:	e9 c0 ff ff ff       	jmp    400490 <_init+0x20>

00000000004004d0 <__gmon_start__@plt>:
  4004d0:	ff 25 5a 0b 20 00    	jmp    QWORD PTR [rip+0x200b5a]        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  4004d6:	68 03 00 00 00       	push   0x3
  4004db:	e9 b0 ff ff ff       	jmp    400490 <_init+0x20>

00000000004004e0 <__printf_chk@plt>:
  4004e0:	ff 25 52 0b 20 00    	jmp    QWORD PTR [rip+0x200b52]        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  4004e6:	68 04 00 00 00       	push   0x4
  4004eb:	e9 a0 ff ff ff       	jmp    400490 <_init+0x20>

Disassembly of section .text:

00000000004004f0 <main>:
  4004f0:	48 83 ec 18          	sub    rsp,0x18
  4004f4:	45 31 c9             	xor    r9d,r9d
  4004f7:	45 31 c0             	xor    r8d,r8d
  4004fa:	b9 22 00 00 00       	mov    ecx,0x22
  4004ff:	ba 07 00 00 00       	mov    edx,0x7
  400504:	be a0 0f 00 00       	mov    esi,0xfa0
  400509:	31 ff                	xor    edi,edi
  40050b:	e8 a0 ff ff ff       	call   4004b0 <mmap@plt>
  400510:	48 8b 15 89 01 00 00 	mov    rdx,QWORD PTR [rip+0x189]        # 4006a0 <add(int&, int&)>
  400517:	48 8d 74 24 0c       	lea    rsi,[rsp+0xc]
  40051c:	48 8d 7c 24 08       	lea    rdi,[rsp+0x8]
  400521:	48 89 10             	mov    QWORD PTR [rax],rdx
  400524:	48 8b 15 7d 01 00 00 	mov    rdx,QWORD PTR [rip+0x17d]        # 4006a8 <add(int&, int&)+0x8>
  40052b:	c7 44 24 08 02 00 00 	mov    DWORD PTR [rsp+0x8],0x2
  400532:	00 
  400533:	c7 44 24 0c 03 00 00 	mov    DWORD PTR [rsp+0xc],0x3
  40053a:	00 
  40053b:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
  40053f:	48 8b 15 6a 01 00 00 	mov    rdx,QWORD PTR [rip+0x16a]        # 4006b0 <mallocx(unsigned long)>
  400546:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
  40054a:	48 8b 15 67 01 00 00 	mov    rdx,QWORD PTR [rip+0x167]        # 4006b8 <mallocx(unsigned long)+0x8>
  400551:	48 89 50 18          	mov    QWORD PTR [rax+0x18],rdx
  400555:	0f b7 15 64 01 00 00 	movzx  edx,WORD PTR [rip+0x164]        # 4006c0 <mallocx(unsigned long)+0x10>
  40055c:	66 89 50 20          	mov    WORD PTR [rax+0x20],dx
  400560:	48 89 c2             	mov    rdx,rax
  400563:	e8 05 02 00 00       	call   40076d <init>
  400568:	8b 4c 24 0c          	mov    ecx,DWORD PTR [rsp+0xc]
  40056c:	8b 54 24 08          	mov    edx,DWORD PTR [rsp+0x8]
  400570:	be 54 07 40 00       	mov    esi,0x400754
  400575:	bf 01 00 00 00       	mov    edi,0x1
  40057a:	31 c0                	xor    eax,eax
  40057c:	e8 5f ff ff ff       	call   4004e0 <__printf_chk@plt>
  400581:	bf 63 07 40 00       	mov    edi,0x400763
  400586:	e8 15 ff ff ff       	call   4004a0 <puts@plt>
  40058b:	8b 4c 24 0c          	mov    ecx,DWORD PTR [rsp+0xc]
  40058f:	8b 54 24 08          	mov    edx,DWORD PTR [rsp+0x8]
  400593:	be 54 07 40 00       	mov    esi,0x400754
  400598:	bf 01 00 00 00       	mov    edi,0x1
  40059d:	31 c0                	xor    eax,eax
  40059f:	e8 3c ff ff ff       	call   4004e0 <__printf_chk@plt>
  4005a4:	31 c0                	xor    eax,eax
  4005a6:	48 83 c4 18          	add    rsp,0x18
  4005aa:	c3                   	ret    

00000000004005ab <_start>:
  4005ab:	31 ed                	xor    ebp,ebp
  4005ad:	49 89 d1             	mov    r9,rdx
  4005b0:	5e                   	pop    rsi
  4005b1:	48 89 e2             	mov    rdx,rsp
  4005b4:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  4005b8:	50                   	push   rax
  4005b9:	54                   	push   rsp
  4005ba:	49 c7 c0 40 07 40 00 	mov    r8,0x400740
  4005c1:	48 c7 c1 d0 06 40 00 	mov    rcx,0x4006d0
  4005c8:	48 c7 c7 f0 04 40 00 	mov    rdi,0x4004f0
  4005cf:	e8 ec fe ff ff       	call   4004c0 <__libc_start_main@plt>
  4005d4:	f4                   	hlt    
  4005d5:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4005dc:	00 00 00 
  4005df:	90                   	nop

00000000004005e0 <deregister_tm_clones>:
  4005e0:	b8 57 10 60 00       	mov    eax,0x601057
  4005e5:	55                   	push   rbp
  4005e6:	48 2d 50 10 60 00    	sub    rax,0x601050
  4005ec:	48 83 f8 0e          	cmp    rax,0xe
  4005f0:	48 89 e5             	mov    rbp,rsp
  4005f3:	77 02                	ja     4005f7 <deregister_tm_clones+0x17>
  4005f5:	5d                   	pop    rbp
  4005f6:	c3                   	ret    
  4005f7:	b8 00 00 00 00       	mov    eax,0x0
  4005fc:	48 85 c0             	test   rax,rax
  4005ff:	74 f4                	je     4005f5 <deregister_tm_clones+0x15>
  400601:	5d                   	pop    rbp
  400602:	bf 50 10 60 00       	mov    edi,0x601050
  400607:	ff e0                	jmp    rax
  400609:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400610 <register_tm_clones>:
  400610:	b8 50 10 60 00       	mov    eax,0x601050
  400615:	55                   	push   rbp
  400616:	48 2d 50 10 60 00    	sub    rax,0x601050
  40061c:	48 c1 f8 03          	sar    rax,0x3
  400620:	48 89 e5             	mov    rbp,rsp
  400623:	48 89 c2             	mov    rdx,rax
  400626:	48 c1 ea 3f          	shr    rdx,0x3f
  40062a:	48 01 d0             	add    rax,rdx
  40062d:	48 d1 f8             	sar    rax,1
  400630:	75 02                	jne    400634 <register_tm_clones+0x24>
  400632:	5d                   	pop    rbp
  400633:	c3                   	ret    
  400634:	ba 00 00 00 00       	mov    edx,0x0
  400639:	48 85 d2             	test   rdx,rdx
  40063c:	74 f4                	je     400632 <register_tm_clones+0x22>
  40063e:	5d                   	pop    rbp
  40063f:	48 89 c6             	mov    rsi,rax
  400642:	bf 50 10 60 00       	mov    edi,0x601050
  400647:	ff e2                	jmp    rdx
  400649:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400650 <__do_global_dtors_aux>:
  400650:	80 3d f9 09 20 00 00 	cmp    BYTE PTR [rip+0x2009f9],0x0        # 601050 <__TMC_END__>
  400657:	75 11                	jne    40066a <__do_global_dtors_aux+0x1a>
  400659:	55                   	push   rbp
  40065a:	48 89 e5             	mov    rbp,rsp
  40065d:	e8 7e ff ff ff       	call   4005e0 <deregister_tm_clones>
  400662:	5d                   	pop    rbp
  400663:	c6 05 e6 09 20 00 01 	mov    BYTE PTR [rip+0x2009e6],0x1        # 601050 <__TMC_END__>
  40066a:	f3 c3                	repz ret 
  40066c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400670 <frame_dummy>:
  400670:	48 83 3d a8 07 20 00 	cmp    QWORD PTR [rip+0x2007a8],0x0        # 600e20 <__JCR_END__>
  400677:	00 
  400678:	74 1e                	je     400698 <frame_dummy+0x28>
  40067a:	b8 00 00 00 00       	mov    eax,0x0
  40067f:	48 85 c0             	test   rax,rax
  400682:	74 14                	je     400698 <frame_dummy+0x28>
  400684:	55                   	push   rbp
  400685:	bf 20 0e 60 00       	mov    edi,0x600e20
  40068a:	48 89 e5             	mov    rbp,rsp
  40068d:	ff d0                	call   rax
  40068f:	5d                   	pop    rbp
  400690:	e9 7b ff ff ff       	jmp    400610 <register_tm_clones>
  400695:	0f 1f 00             	nop    DWORD PTR [rax]
  400698:	e9 73 ff ff ff       	jmp    400610 <register_tm_clones>
  40069d:	0f 1f 00             	nop    DWORD PTR [rax]

00000000004006a0 <add(int&, int&)>:
  4006a0:	8b 06                	mov    eax,DWORD PTR [rsi]
  4006a2:	01 07                	add    DWORD PTR [rdi],eax
  4006a4:	c3                   	ret    
  4006a5:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  4006ac:	00 00 00 00 

00000000004006b0 <mallocx(unsigned long)>:
  4006b0:	48 89 fe             	mov    rsi,rdi
  4006b3:	45 31 c9             	xor    r9d,r9d
  4006b6:	45 31 c0             	xor    r8d,r8d
  4006b9:	b9 22 00 00 00       	mov    ecx,0x22
  4006be:	ba 07 00 00 00       	mov    edx,0x7
  4006c3:	31 ff                	xor    edi,edi
  4006c5:	e9 e6 fd ff ff       	jmp    4004b0 <mmap@plt>
  4006ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004006d0 <__libc_csu_init>:
  4006d0:	41 57                	push   r15
  4006d2:	41 89 ff             	mov    r15d,edi
  4006d5:	41 56                	push   r14
  4006d7:	49 89 f6             	mov    r14,rsi
  4006da:	41 55                	push   r13
  4006dc:	49 89 d5             	mov    r13,rdx
  4006df:	41 54                	push   r12
  4006e1:	4c 8d 25 28 07 20 00 	lea    r12,[rip+0x200728]        # 600e10 <__frame_dummy_init_array_entry>
  4006e8:	55                   	push   rbp
  4006e9:	48 8d 2d 28 07 20 00 	lea    rbp,[rip+0x200728]        # 600e18 <__init_array_end>
  4006f0:	53                   	push   rbx
  4006f1:	4c 29 e5             	sub    rbp,r12
  4006f4:	31 db                	xor    ebx,ebx
  4006f6:	48 c1 fd 03          	sar    rbp,0x3
  4006fa:	48 83 ec 08          	sub    rsp,0x8
  4006fe:	e8 6d fd ff ff       	call   400470 <_init>
  400703:	48 85 ed             	test   rbp,rbp
  400706:	74 1e                	je     400726 <__libc_csu_init+0x56>
  400708:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40070f:	00 
  400710:	4c 89 ea             	mov    rdx,r13
  400713:	4c 89 f6             	mov    rsi,r14
  400716:	44 89 ff             	mov    edi,r15d
  400719:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40071d:	48 83 c3 01          	add    rbx,0x1
  400721:	48 39 eb             	cmp    rbx,rbp
  400724:	75 ea                	jne    400710 <__libc_csu_init+0x40>
  400726:	48 83 c4 08          	add    rsp,0x8
  40072a:	5b                   	pop    rbx
  40072b:	5d                   	pop    rbp
  40072c:	41 5c                	pop    r12
  40072e:	41 5d                	pop    r13
  400730:	41 5e                	pop    r14
  400732:	41 5f                	pop    r15
  400734:	c3                   	ret    
  400735:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  40073c:	00 00 00 00 

0000000000400740 <__libc_csu_fini>:
  400740:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400744 <_fini>:
  400744:	48 83 ec 08          	sub    rsp,0x8
  400748:	48 83 c4 08          	add    rsp,0x8
  40074c:	c3                   	ret    
