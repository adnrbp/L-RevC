00000000004005f6 <main>:
4005f6:		55                   	push   rbp
4005f7:		48 89 e5             	mov    rbp,rsp
	# printf("introduce a value for x \n");
4005fa:		bf 38 07 40 00       	mov    edi,0x400738
4005ff:		e8 cc fe ff ff       	call   4004d0 <puts@plt>
	# printf("in f(x)=[k(x-m)**2]/[1+k(x-m)**c2]' \n");
400604:		bf 58 07 40 00       	mov    edi,0x400758
400609:		e8 c2 fe ff ff       	call   4004d0 <puts@plt>
	# scanf("%f", &x);
	# //source: <x> point; 0x601044 <x>:	holds value
40060e:		be 44 10 60 00       	mov    esi,0x601044
	# //destination: variable "x"
400613:		bf 7d 07 40 00       	mov    edi,0x40077d
400618:		b8 00 00 00 00       	mov    eax,0x0
40061d:		e8 ce fe ff ff       	call   4004f0 <__isoc99_scanf@plt>
	# //Move Scalar Single-Precision ;x/6fw $rip+0x200a1a = 0x601044 <x>
400622:		f3 0f 10 05 1a 0a 20 	movss  xmm0,DWORD PTR [rip+0x200a1a]        # 601044 <x>
400629:		00
	# // x/2fw 0x4007a8 = 2 = m
40062a:		f3 0f 10 0d 76 01 00 	movss  xmm1,DWORD PTR [rip+0x176]        # 4007a8 <_IO_stdin_used+0x78>
400631:		00
	# x-m
400632:		f3 0f 5c c1          	subss  xmm0,xmm1
	# // x/2fw 0x4007ac = 9 = k
400636:		f3 0f 10 0d 6e 01 00 	movss  xmm1,DWORD PTR [rip+0x16e]        # 4007ac <_IO_stdin_used+0x7c>
40063d:		00
	# k*(x-m)
40063e:		f3 0f 59 c8          	mulss  xmm1,xmm0
400642:		f3 0f 10 05 fa 09 20 	movss  xmm0,DWORD PTR [rip+0x2009fa]        # 601044 <x>
400649:		00
	# // x/2fw 0x4007a8 = 2 = m
40064a:		f3 0f 10 15 56 01 00 	movss  xmm2,DWORD PTR [rip+0x156]        # 4007a8 <_IO_stdin_used+0x78>
400651:		00
	# x-m
400652:		f3 0f 5c c2          	subss  xmm0,xmm2
	# k*(x-m)*(x-m)
400656:		f3 0f 59 c1          	mulss  xmm0,xmm1
	# aux = k*(x-m)*(x-m);  //xmm1, xmm2
40065a:		f3 0f 11 05 ea 09 20 	movss  DWORD PTR [rip+0x2009ea],xmm0        # 60104c <aux>
400661:		00
400662:		f3 0f 10 0d e2 09 20 	movss  xmm1,DWORD PTR [rip+0x2009e2]        # 60104c <aux>
400669:		00
40066a:		f3 0f 10 15 da 09 20 	movss  xmm2,DWORD PTR [rip+0x2009da]        # 60104c <aux>
400671:		00
	# // x/2fw 0x4007b0 = 1  //for 1+aux
400672:		f3 0f 10 05 36 01 00 	movss  xmm0,DWORD PTR [rip+0x136]        # 4007b0 <_IO_stdin_used+0x80>
400679:		00
	# 1 + aux
40067a:		f3 0f 58 c2          	addss  xmm0,xmm2
	# aux / (1+aux)
40067e:		f3 0f 5e c8          	divss  xmm1,xmm0
	# //Move Aligned Packed Single-Precision; 
400682:		0f 28 c1             	movaps xmm0,xmm1
	# f= aux/(1+aux);
400685:		f3 0f 11 05 bb 09 20 	movss  DWORD PTR [rip+0x2009bb],xmm0        # 601048 <f>
40068c:		00
40068d:		f3 0f 10 05 b3 09 20 	movss  xmm0,DWORD PTR [rip+0x2009b3]        # 601048 <f>
400694:		00
	# //Convert Scalar Single-Precision Floating-Point Value to Scalar Double-Precision Floating-Point Value
400695:		f3 0f 5a c0          	cvtss2sd xmm0,xmm0
	# printf("the result of your operation is: %f\n", f);
400699:		bf 80 07 40 00       	mov    edi,0x400780
40069e:		b8 01 00 00 00       	mov    eax,0x1
4006a3:		e8 38 fe ff ff       	call   4004e0 <printf@plt>
	
4006a8:		90                   	nop
4006a9:		5d                   	pop    rbp
4006aa:		c3                   	ret
4006ab:		0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
	
