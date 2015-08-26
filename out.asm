
exec:     file format elf64-x86-64


Disassembly of section .init:

00000000004004c8 <_init>:
  4004c8:	48 83 ec 08          	sub    rsp,0x8
  4004cc:	48 8b 05 25 0b 20 00 	mov    rax,QWORD PTR [rip+0x200b25]        # 600ff8 <_DYNAMIC+0x1d0>
  4004d3:	48 85 c0             	test   rax,rax
  4004d6:	74 05                	je     4004dd <_init+0x15>
  4004d8:	e8 53 00 00 00       	call   400530 <__gmon_start__@plt>
  4004dd:	48 83 c4 08          	add    rsp,0x8
  4004e1:	c3                   	ret    

Disassembly of section .plt:

00000000004004f0 <puts@plt-0x10>:
  4004f0:	ff 35 12 0b 20 00    	push   QWORD PTR [rip+0x200b12]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004f6:	ff 25 14 0b 20 00    	jmp    QWORD PTR [rip+0x200b14]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400500 <puts@plt>:
  400500:	ff 25 12 0b 20 00    	jmp    QWORD PTR [rip+0x200b12]        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400506:	68 00 00 00 00       	push   0x0
  40050b:	e9 e0 ff ff ff       	jmp    4004f0 <_init+0x28>

0000000000400510 <mmap@plt>:
  400510:	ff 25 0a 0b 20 00    	jmp    QWORD PTR [rip+0x200b0a]        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400516:	68 01 00 00 00       	push   0x1
  40051b:	e9 d0 ff ff ff       	jmp    4004f0 <_init+0x28>

0000000000400520 <__libc_start_main@plt>:
  400520:	ff 25 02 0b 20 00    	jmp    QWORD PTR [rip+0x200b02]        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400526:	68 02 00 00 00       	push   0x2
  40052b:	e9 c0 ff ff ff       	jmp    4004f0 <_init+0x28>

0000000000400530 <__gmon_start__@plt>:
  400530:	ff 25 fa 0a 20 00    	jmp    QWORD PTR [rip+0x200afa]        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400536:	68 03 00 00 00       	push   0x3
  40053b:	e9 b0 ff ff ff       	jmp    4004f0 <_init+0x28>

0000000000400540 <memcpy@plt>:
  400540:	ff 25 f2 0a 20 00    	jmp    QWORD PTR [rip+0x200af2]        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400546:	68 04 00 00 00       	push   0x4
  40054b:	e9 a0 ff ff ff       	jmp    4004f0 <_init+0x28>

0000000000400550 <__printf_chk@plt>:
  400550:	ff 25 ea 0a 20 00    	jmp    QWORD PTR [rip+0x200aea]        # 601040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400556:	68 05 00 00 00       	push   0x5
  40055b:	e9 90 ff ff ff       	jmp    4004f0 <_init+0x28>

Disassembly of section .text:

0000000000400560 <main>:
  400560:	53                   	push   rbx
  400561:	45 31 c9             	xor    r9d,r9d
  400564:	45 31 c0             	xor    r8d,r8d
  400567:	b9 22 00 00 00       	mov    ecx,0x22
  40056c:	ba 07 00 00 00       	mov    edx,0x7
  400571:	be a0 0f 00 00       	mov    esi,0xfa0
  400576:	48 83 ec 10          	sub    rsp,0x10
  40057a:	31 ff                	xor    edi,edi
  40057c:	e8 8f ff ff ff       	call   400510 <mmap@plt>
  400581:	48 89 c3             	mov    rbx,rax
  400584:	e8 8d 02 00 00       	call   400816 <pushval_size>
  400589:	48 89 df             	mov    rdi,rbx
  40058c:	48 89 c2             	mov    rdx,rax
  40058f:	be db 07 40 00       	mov    esi,0x4007db
  400594:	e8 a7 ff ff ff       	call   400540 <memcpy@plt>
  400599:	48 8d 74 24 0c       	lea    rsi,[rsp+0xc]
  40059e:	48 8d 7c 24 08       	lea    rdi,[rsp+0x8]
  4005a3:	48 89 da             	mov    rdx,rbx
  4005a6:	c7 44 24 08 02 00 00 	mov    DWORD PTR [rsp+0x8],0x2
  4005ad:	00 
  4005ae:	c7 44 24 0c 03 00 00 	mov    DWORD PTR [rsp+0xc],0x3
  4005b5:	00 
  4005b6:	e8 02 02 00 00       	call   4007bd <init>
  4005bb:	e8 03 02 00 00       	call   4007c3 <addrpn>
  4005c0:	8b 4c 24 0c          	mov    ecx,DWORD PTR [rsp+0xc]
  4005c4:	8b 54 24 08          	mov    edx,DWORD PTR [rsp+0x8]
  4005c8:	be a4 07 40 00       	mov    esi,0x4007a4
  4005cd:	bf 01 00 00 00       	mov    edi,0x1
  4005d2:	31 c0                	xor    eax,eax
  4005d4:	e8 77 ff ff ff       	call   400550 <__printf_chk@plt>
  4005d9:	bf b3 07 40 00       	mov    edi,0x4007b3
  4005de:	e8 1d ff ff ff       	call   400500 <puts@plt>
  4005e3:	8b 4c 24 0c          	mov    ecx,DWORD PTR [rsp+0xc]
  4005e7:	8b 54 24 08          	mov    edx,DWORD PTR [rsp+0x8]
  4005eb:	be a4 07 40 00       	mov    esi,0x4007a4
  4005f0:	bf 01 00 00 00       	mov    edi,0x1
  4005f5:	31 c0                	xor    eax,eax
  4005f7:	e8 54 ff ff ff       	call   400550 <__printf_chk@plt>
  4005fc:	48 83 c4 10          	add    rsp,0x10
  400600:	31 c0                	xor    eax,eax
  400602:	5b                   	pop    rbx
  400603:	c3                   	ret    

0000000000400604 <_start>:
  400604:	31 ed                	xor    ebp,ebp
  400606:	49 89 d1             	mov    r9,rdx
  400609:	5e                   	pop    rsi
  40060a:	48 89 e2             	mov    rdx,rsp
  40060d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  400611:	50                   	push   rax
  400612:	54                   	push   rsp
  400613:	49 c7 c0 90 07 40 00 	mov    r8,0x400790
  40061a:	48 c7 c1 20 07 40 00 	mov    rcx,0x400720
  400621:	48 c7 c7 60 05 40 00 	mov    rdi,0x400560
  400628:	e8 f3 fe ff ff       	call   400520 <__libc_start_main@plt>
  40062d:	f4                   	hlt    
  40062e:	66 90                	xchg   ax,ax

0000000000400630 <deregister_tm_clones>:
  400630:	b8 5f 10 60 00       	mov    eax,0x60105f
  400635:	55                   	push   rbp
  400636:	48 2d 58 10 60 00    	sub    rax,0x601058
  40063c:	48 83 f8 0e          	cmp    rax,0xe
  400640:	48 89 e5             	mov    rbp,rsp
  400643:	77 02                	ja     400647 <deregister_tm_clones+0x17>
  400645:	5d                   	pop    rbp
  400646:	c3                   	ret    
  400647:	b8 00 00 00 00       	mov    eax,0x0
  40064c:	48 85 c0             	test   rax,rax
  40064f:	74 f4                	je     400645 <deregister_tm_clones+0x15>
  400651:	5d                   	pop    rbp
  400652:	bf 58 10 60 00       	mov    edi,0x601058
  400657:	ff e0                	jmp    rax
  400659:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400660 <register_tm_clones>:
  400660:	b8 58 10 60 00       	mov    eax,0x601058
  400665:	55                   	push   rbp
  400666:	48 2d 58 10 60 00    	sub    rax,0x601058
  40066c:	48 c1 f8 03          	sar    rax,0x3
  400670:	48 89 e5             	mov    rbp,rsp
  400673:	48 89 c2             	mov    rdx,rax
  400676:	48 c1 ea 3f          	shr    rdx,0x3f
  40067a:	48 01 d0             	add    rax,rdx
  40067d:	48 d1 f8             	sar    rax,1
  400680:	75 02                	jne    400684 <register_tm_clones+0x24>
  400682:	5d                   	pop    rbp
  400683:	c3                   	ret    
  400684:	ba 00 00 00 00       	mov    edx,0x0
  400689:	48 85 d2             	test   rdx,rdx
  40068c:	74 f4                	je     400682 <register_tm_clones+0x22>
  40068e:	5d                   	pop    rbp
  40068f:	48 89 c6             	mov    rsi,rax
  400692:	bf 58 10 60 00       	mov    edi,0x601058
  400697:	ff e2                	jmp    rdx
  400699:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000004006a0 <__do_global_dtors_aux>:
  4006a0:	80 3d b1 09 20 00 00 	cmp    BYTE PTR [rip+0x2009b1],0x0        # 601058 <__TMC_END__>
  4006a7:	75 11                	jne    4006ba <__do_global_dtors_aux+0x1a>
  4006a9:	55                   	push   rbp
  4006aa:	48 89 e5             	mov    rbp,rsp
  4006ad:	e8 7e ff ff ff       	call   400630 <deregister_tm_clones>
  4006b2:	5d                   	pop    rbp
  4006b3:	c6 05 9e 09 20 00 01 	mov    BYTE PTR [rip+0x20099e],0x1        # 601058 <__TMC_END__>
  4006ba:	f3 c3                	repz ret 
  4006bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004006c0 <frame_dummy>:
  4006c0:	48 83 3d 58 07 20 00 	cmp    QWORD PTR [rip+0x200758],0x0        # 600e20 <__JCR_END__>
  4006c7:	00 
  4006c8:	74 1e                	je     4006e8 <frame_dummy+0x28>
  4006ca:	b8 00 00 00 00       	mov    eax,0x0
  4006cf:	48 85 c0             	test   rax,rax
  4006d2:	74 14                	je     4006e8 <frame_dummy+0x28>
  4006d4:	55                   	push   rbp
  4006d5:	bf 20 0e 60 00       	mov    edi,0x600e20
  4006da:	48 89 e5             	mov    rbp,rsp
  4006dd:	ff d0                	call   rax
  4006df:	5d                   	pop    rbp
  4006e0:	e9 7b ff ff ff       	jmp    400660 <register_tm_clones>
  4006e5:	0f 1f 00             	nop    DWORD PTR [rax]
  4006e8:	e9 73 ff ff ff       	jmp    400660 <register_tm_clones>
  4006ed:	0f 1f 00             	nop    DWORD PTR [rax]

00000000004006f0 <mallocx(unsigned long)>:
  4006f0:	48 89 fe             	mov    rsi,rdi
  4006f3:	45 31 c9             	xor    r9d,r9d
  4006f6:	45 31 c0             	xor    r8d,r8d
  4006f9:	b9 22 00 00 00       	mov    ecx,0x22
  4006fe:	ba 07 00 00 00       	mov    edx,0x7
  400703:	31 ff                	xor    edi,edi
  400705:	e9 06 fe ff ff       	jmp    400510 <mmap@plt>
  40070a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400710 <add(int&, int&)>:
  400710:	8b 06                	mov    eax,DWORD PTR [rsi]
  400712:	01 07                	add    DWORD PTR [rdi],eax
  400714:	c3                   	ret    
  400715:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40071c:	00 00 00 
  40071f:	90                   	nop

0000000000400720 <__libc_csu_init>:
  400720:	41 57                	push   r15
  400722:	41 89 ff             	mov    r15d,edi
  400725:	41 56                	push   r14
  400727:	49 89 f6             	mov    r14,rsi
  40072a:	41 55                	push   r13
  40072c:	49 89 d5             	mov    r13,rdx
  40072f:	41 54                	push   r12
  400731:	4c 8d 25 d8 06 20 00 	lea    r12,[rip+0x2006d8]        # 600e10 <__frame_dummy_init_array_entry>
  400738:	55                   	push   rbp
  400739:	48 8d 2d d8 06 20 00 	lea    rbp,[rip+0x2006d8]        # 600e18 <__init_array_end>
  400740:	53                   	push   rbx
  400741:	4c 29 e5             	sub    rbp,r12
  400744:	31 db                	xor    ebx,ebx
  400746:	48 c1 fd 03          	sar    rbp,0x3
  40074a:	48 83 ec 08          	sub    rsp,0x8
  40074e:	e8 75 fd ff ff       	call   4004c8 <_init>
  400753:	48 85 ed             	test   rbp,rbp
  400756:	74 1e                	je     400776 <__libc_csu_init+0x56>
  400758:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40075f:	00 
  400760:	4c 89 ea             	mov    rdx,r13
  400763:	4c 89 f6             	mov    rsi,r14
  400766:	44 89 ff             	mov    edi,r15d
  400769:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40076d:	48 83 c3 01          	add    rbx,0x1
  400771:	48 39 eb             	cmp    rbx,rbp
  400774:	75 ea                	jne    400760 <__libc_csu_init+0x40>
  400776:	48 83 c4 08          	add    rsp,0x8
  40077a:	5b                   	pop    rbx
  40077b:	5d                   	pop    rbp
  40077c:	41 5c                	pop    r12
  40077e:	41 5d                	pop    r13
  400780:	41 5e                	pop    r14
  400782:	41 5f                	pop    r15
  400784:	c3                   	ret    
  400785:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  40078c:	00 00 00 00 

0000000000400790 <__libc_csu_fini>:
  400790:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400794 <_fini>:
  400794:	48 83 ec 08          	sub    rsp,0x8
  400798:	48 83 c4 08          	add    rsp,0x8
  40079c:	c3                   	ret    
