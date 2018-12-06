0000000000400536 <main>:
400536:		55                   	push   rbp
400537:		48 89 e5             	mov    rbp,rsp
40053a:		48 83 ec 10          	sub    rsp,0x10
	;; x=2+10;
40053e:		c7 45 fc 0c 00 00 00 	mov    DWORD PTR [rbp-0x4],0xc
	;; y=3+3*8;
400545:		c7 45 f8 1b 00 00 00 	mov    DWORD PTR [rbp-0x8],0x1b
	;; z=3/3;
40054c:		c7 45 f4 01 00 00 00 	mov    DWORD PTR [rbp-0xc],0x1
	;; a= 3 + ( 10/2)- 5*(4+2);
400553:		c7 45 f0 ea ff ff ff 	mov    DWORD PTR [rbp-0x10],0xffffffea
	;; printf("el resultado 1 es: %d \n", x);
40055a:		8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
40055d:		89 c6                	mov    esi,eax
40055f:		bf 34 06 40 00       	mov    edi,0x400634
400564:		b8 00 00 00 00       	mov    eax,0x0
400569:		e8 c2 fe ff ff       	call   400430 <printf@plt>
	;; printf("el resultado 2 es: %d \n", y);
40056e:		8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
400571:		89 c6                	mov    esi,eax
400573:		bf 4c 06 40 00       	mov    edi,0x40064c
400578:		b8 00 00 00 00       	mov    eax,0x0
40057d:		e8 ae fe ff ff       	call   400430 <printf@plt>
	;; printf("el resultado 3 es: %d \n", z);
400582:		8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
400585:		89 c6                	mov    esi,eax
400587:		bf 64 06 40 00       	mov    edi,0x400664
40058c:		b8 00 00 00 00       	mov    eax,0x0
400591:		e8 9a fe ff ff       	call   400430 <printf@plt>
	;; printf("el resultado 4 es: %d \n", a);
400596:		8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
400599:		89 c6                	mov    esi,eax
40059b:		bf 7c 06 40 00       	mov    edi,0x40067c
4005a0:		b8 00 00 00 00       	mov    eax,0x0
4005a5:		e8 86 fe ff ff       	call   400430 <printf@plt>
	
4005aa:		90                   	nop
4005ab:		c9                   	leave
4005ac:		c3                   	ret
4005ad:		0f 1f 00             	nop    DWORD PTR [rax]
	
