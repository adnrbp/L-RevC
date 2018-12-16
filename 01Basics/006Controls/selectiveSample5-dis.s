00000000004005a6 <main>:
4005a6:		55                   	push   rbp
4005a7:		48 89 e5             	mov    rbp,rsp
4005aa:		48 83 ec 10          	sub    rsp,0x10
	# scanf("%d", &x);
4005ae:		48 8d 45 fc          	lea    rax,[rbp-0x4]
4005b2:		48 89 c6             	mov    rsi,rax
4005b5:		bf 98 06 40 00       	mov    edi,0x400698
4005ba:		b8 00 00 00 00       	mov    eax,0x0
4005bf:		e8 dc fe ff ff       	call   4004a0 <__isoc99_scanf@plt>
	# x // rbp-0x4
4005c4:		8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
	# switch (x) case 2:
4005c7:		83 f8 02             	cmp    eax,0x2
4005ca:		74 16                	je     4005e2 <main+0x3c>
	# case 3:
4005cc:		83 f8 03             	cmp    eax,0x3
4005cf:		74 1d                	je     4005ee <main+0x48>
	# case 1:
4005d1:		83 f8 01             	cmp    eax,0x1
4005d4:		75 24                	jne    4005fa <main+0x54>
	# printf("Case 1 matched\n");
4005d6:		bf 9b 06 40 00       	mov    edi,0x40069b
4005db:		e8 b0 fe ff ff       	call   400490 <puts@plt>
4005e0:		eb 23                	jmp    400605 <main+0x5f>
	# printf("Case 2 matched\n");
4005e2:		bf aa 06 40 00       	mov    edi,0x4006aa
4005e7:		e8 a4 fe ff ff       	call   400490 <puts@plt>
4005ec:		eb 17                	jmp    400605 <main+0x5f>
	# printf("Case 3 matched\n");
4005ee:		bf b9 06 40 00       	mov    edi,0x4006b9
4005f3:		e8 98 fe ff ff       	call   400490 <puts@plt>
4005f8:		eb 0b                	jmp    400605 <main+0x5f>
	# default: printf("non of the previous cases matched\n");
4005fa:		bf c8 06 40 00       	mov    edi,0x4006c8
4005ff:		e8 8c fe ff ff       	call   400490 <puts@plt>

400604:		90                   	nop
400605:		90                   	nop
400606:		c9                   	leave
400607:		c3                   	ret
400608:		0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
40060f:		00
	
