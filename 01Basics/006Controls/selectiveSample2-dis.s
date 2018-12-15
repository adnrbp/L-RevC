0000000000400536 <main>:
400536:		55                   	push   rbp
400537:		48 89 e5             	mov    rbp,rsp
40053a:		48 83 ec 10          	sub    rsp,0x10
	# int a=10;
40053e:		c7 45 fc 0a 00 00 00 	mov    DWORD PTR [rbp-0x4],0xa
	# int b=0;
400545:		c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
	# if(a > b){
40054c:		8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
40054f:		3b 45 f8             	cmp    eax,DWORD PTR [rbp-0x8]
400552:		7e 14                	jle    400568 <main+0x32>
	# printf("yes, A is bigger than B\n"); // x/1s 0x4005f4
400554:		bf 04 06 40 00       	mov    edi,0x400604
400559:		e8 d2 fe ff ff       	call   400430 <puts@plt>
	# printf("Bye.\n");
40055e:		bf 1c 06 40 00       	mov    edi,0x40061c
400563:		e8 c8 fe ff ff       	call   400430 <puts@plt>
	# }
	# printf("the app will close.\n"); 
400568:		bf 21 06 40 00       	mov    edi,0x400621
40056d:		e8 be fe ff ff       	call   400430 <puts@plt>

400572:		90                   	nop
400573:		c9                   	leave
400574:		c3                   	ret
400575:		66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
40057c:		00 00 00
40057f:		90                   	nop
	
