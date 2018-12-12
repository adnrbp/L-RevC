0000000000400536 <main>:
	;; Prologue
400536:		55                   	push   rbp
400537:		48 89 e5             	mov    rbp,rsp
	;; int numberVar = 10;
40053a:		48 83 ec 10          	sub    rsp,0x10
40053e:		c7 45 fc 0a 00 00 00 	mov    DWORD PTR [rbp-0x4],0xa
400545:		8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
	;; result = numberVar + numberConst; //0x1e = NumberConst
400548:		83 c0 1e             	add    eax,0x1e
40054b:		89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
40054e:		8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
	;; $esi = result
	;; printf("the Solution is: %d", result); //0x4005f4 = string
400551:		89 c6                	mov    esi,eax
400553:		bf f4 05 40 00       	mov    edi,0x4005f4
400558:		b8 00 00 00 00       	mov    eax,0x0
40055d:		e8 ce fe ff ff       	call   400430 <printf@plt>
	;; Epilogue
400562:		90                   	nop
400563:		c9                   	leave
400564:		c3                   	ret
400565:		66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
40056c:		00 00 00
40056f:		90                   	nop
	
