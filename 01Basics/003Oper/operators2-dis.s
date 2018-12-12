0000000000400536 <main>:
400536:		55                   	push   rbp
400537:		48 89 e5             	mov    rbp,rsp
40053a:		48 83 ec 20          	sub    rsp,0x20
	;; x=2+10;
40053e:		c7 45 fc 0c 00 00 00 	mov    DWORD PTR [rbp-0x4],0xc
	;; y=3+3*8;
400545:		c7 45 f8 1b 00 00 00 	mov    DWORD PTR [rbp-0x8],0x1b
	;; z=3/3;
40054c:		c7 45 f4 01 00 00 00 	mov    DWORD PTR [rbp-0xc],0x1
	;; a= 3 + ( 10/2)- 5*(4+2);
400553:		c7 45 f0 ea ff ff ff 	mov    DWORD PTR [rbp-0x10],0xffffffea
	;; b=5;
40055a:		c7 45 ec 05 00 00 00 	mov    DWORD PTR [rbp-0x14],0x5
	;; c=10;
400561:		c7 45 e8 0a 00 00 00 	mov    DWORD PTR [rbp-0x18],0xa
	;; w=b>c;
400568:		8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
40056b:		3b 45 e8             	cmp    eax,DWORD PTR [rbp-0x18]
	;; //setg: set byte if greater
40056e:		0f 9f c0             	setg   al
	;; //movzx: move with zero-extend
400571:		0f b6 c0             	movzx  eax,al
400574:		89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
	;; //print results:
400577:		8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
40057a:		89 c6                	mov    esi,eax
40057c:		bf 64 06 40 00       	mov    edi,0x400664
400581:		b8 00 00 00 00       	mov    eax,0x0
400586:		e8 a5 fe ff ff       	call   400430 <printf@plt>
40058b:		8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
40058e:		89 c6                	mov    esi,eax
400590:		bf 7c 06 40 00       	mov    edi,0x40067c
400595:		b8 00 00 00 00       	mov    eax,0x0
40059a:		e8 91 fe ff ff       	call   400430 <printf@plt>
40059f:		8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
4005a2:		89 c6                	mov    esi,eax
4005a4:		bf 94 06 40 00       	mov    edi,0x400694
4005a9:		b8 00 00 00 00       	mov    eax,0x0
4005ae:		e8 7d fe ff ff       	call   400430 <printf@plt>
4005b3:		8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
4005b6:		89 c6                	mov    esi,eax
4005b8:		bf ac 06 40 00       	mov    edi,0x4006ac
4005bd:		b8 00 00 00 00       	mov    eax,0x0
4005c2:		e8 69 fe ff ff       	call   400430 <printf@plt>
4005c7:		8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
4005ca:		89 c6                	mov    esi,eax
4005cc:		bf c4 06 40 00       	mov    edi,0x4006c4
4005d1:		b8 00 00 00 00       	mov    eax,0x0
4005d6:		e8 55 fe ff ff       	call   400430 <printf@plt>
	
4005db:		90                   	nop
4005dc:		c9                   	leave
4005dd:		c3                   	ret
4005de:		66 90                	xchg   ax,ax
	
