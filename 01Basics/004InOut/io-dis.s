00000000004005a6 <main>:
4005a6:		55                   	push   rbp
4005a7:		48 89 e5             	mov    rbp,rsp
4005aa:		48 83 ec 10          	sub    rsp,0x10
	;; int numero= 5;
4005ae:		c7 45 fc 05 00 00 00 	mov    DWORD PTR [rbp-0x4],0x5
	;; printf("ingresa una letra.");
4005b5:		bf 88 06 40 00       	mov    edi,0x400688
4005ba:		b8 00 00 00 00       	mov    eax,0x0
4005bf:		e8 cc fe ff ff       	call   400490 <printf@plt>
	;; scanf("%c", &c);
4005c4:		48 8d 45 fb          	lea    rax,[rbp-0x5]
4005c8:		48 89 c6             	mov    rsi,rax
4005cb:		bf 9b 06 40 00       	mov    edi,0x40069b
4005d0:		b8 00 00 00 00       	mov    eax,0x0
4005d5:		e8 c6 fe ff ff       	call   4004a0 <__isoc99_scanf@plt>
	;; 
4005da:		0f b6 45 fb          	movzx  eax,BYTE PTR [rbp-0x5]
4005de:		0f be c0             	movsx  eax,al
	;; //arg3: var Numero
4005e1:		8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
	;; //arg2: input text, var "c"
4005e4:		89 c6                	mov    esi,eax
	;; //arg1: Text with format
4005e6:		bf a0 06 40 00       	mov    edi,0x4006a0
4005eb:		b8 00 00 00 00       	mov    eax,0x0
4005f0:		e8 9b fe ff ff       	call   400490 <printf@plt>
	
4005f5:		90                   	nop
4005f6:		c9                   	leave
4005f7:		c3                   	ret
4005f8:		0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
4005ff:		00
	
