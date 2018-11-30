0000000000400536 <main>:
	;; Prologue
400536:		55                   	push   rbp
400537:		48 89 e5             	mov    rbp,rsp
	;; printf("this is a Message Printed"); $edi = "this is a Message Printed";
40053a:		bf d4 05 40 00       	mov    edi,0x4005d4
40053f:		b8 00 00 00 00       	mov    eax,0x0
400544:		e8 e7 fe ff ff       	call   400430 <printf@plt>
400549:		90                   	nop
	;; Epilogue
40054a:		5d                   	pop    rbp
40054b:		c3                   	ret
40054c:		0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

	
