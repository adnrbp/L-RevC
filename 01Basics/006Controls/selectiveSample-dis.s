0000000000400536 <main>:
400536:		55                   	push   rbp
400537:		48 89 e5             	mov    rbp,rsp
40053a:		48 83 ec 10          	sub    rsp,0x10
	# int a
40053e:		8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
	# if(a > b){
400541:		3b 45 f8             	cmp    eax,DWORD PTR [rbp-0x8]
400544:		7e 14                	jle    40055a <main+0x24>
	# printf("yes, A is bigger than B\n"); // x/1s 0x4005f4
400546:		bf f4 05 40 00       	mov    edi,0x4005f4
40054b:		e8 e0 fe ff ff       	call   400430 <puts@plt>
	# printf("Bye.\n");
400550:		bf 0c 06 40 00       	mov    edi,0x40060c
400555:		e8 d6 fe ff ff       	call   400430 <puts@plt>
	# }
	# printf("the app will close.\n"); 
40055a:		bf 11 06 40 00       	mov    edi,0x400611
40055f:		e8 cc fe ff ff       	call   400430 <puts@plt>

400564:		90                   	nop
400565:		c9                   	leave
400566:		c3                   	ret
400567:		66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
40056e:		00 00
	
