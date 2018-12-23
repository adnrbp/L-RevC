00000000004005c6 <change_pos>:
  4005c6:	55                   	push   rbp
  4005c7:	48 89 e5             	mov    rbp,rsp
    # // asign arguments
  4005ca:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  4005ce:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
    #int temp = *n1; 
  4005d2:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4005d6:	8b 00                	mov    eax,DWORD PTR [rax]
  4005d8:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
    #*n1 = *n2; 
  4005db:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4005df:	8b 10                	mov    edx,DWORD PTR [rax]
  4005e1:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4005e5:	89 10                	mov    DWORD PTR [rax],edx
    #*n2 = temp;
  4005e7:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4005eb:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  4005ee:	89 10                	mov    DWORD PTR [rax],edx

  4005f0:	90                   	nop
  4005f1:	5d                   	pop    rbp
  4005f2:	c3                   	ret    

00000000004005f3 <bubbleSort>:
  4005f3:	55                   	push   rbp
  4005f4:	48 89 e5             	mov    rbp,rsp
  4005f7:	48 83 ec 20          	sub    rsp,0x20
    # // asign arguments
    # // int inputVector[]
  4005fb:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    # //int n
  4005ff:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
    # iter = 0; //[rbp-0x4]
  400602:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0

  400609:	e9 8a 00 00 00       	jmp    400698 <bubbleSort+0xa5>
    # // <bubbleSort+0x1b>
  40060e:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
  400615:	eb 6f                	jmp    400686 <bubbleSort+0x93>
    # <bubbleSort+0x24>
  400617:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  40061a:	48 98                	cdqe   
  40061c:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  400623:	00 
  400624:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400628:	48 01 d0             	add    rax,rdx
  40062b:	8b 10                	mov    edx,DWORD PTR [rax]
  40062d:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  400630:	48 98                	cdqe   
  400632:	48 83 c0 01          	add    rax,0x1
  400636:	48 8d 0c 85 00 00 00 	lea    rcx,[rax*4+0x0]
  40063d:	00 
  40063e:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400642:	48 01 c8             	add    rax,rcx
  400645:	8b 00                	mov    eax,DWORD PTR [rax]
  400647:	39 c2                	cmp    edx,eax
  400649:	7d 37                	jge    400682 <bubbleSort+0x8f>
  40064b:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  40064e:	48 98                	cdqe   
  400650:	48 83 c0 01          	add    rax,0x1
  400654:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  40065b:	00 
  40065c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400660:	48 01 c2             	add    rdx,rax
  400663:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  400666:	48 98                	cdqe   
  400668:	48 8d 0c 85 00 00 00 	lea    rcx,[rax*4+0x0]
  40066f:	00 
  400670:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400674:	48 01 c8             	add    rax,rcx
  400677:	48 89 d6             	mov    rsi,rdx
  40067a:	48 89 c7             	mov    rdi,rax
  40067d:	e8 44 ff ff ff       	call   4005c6 <change_pos>
  400682:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
      # //<bubbleSort+0x93>
  400686:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  400689:	2b 45 fc             	sub    eax,DWORD PTR [rbp-0x4]
  40068c:	83 e8 01             	sub    eax,0x1
  40068f:	3b 45 f8             	cmp    eax,DWORD PTR [rbp-0x8]
  400692:	7f 83                	jg     400617 <bubbleSort+0x24>
  400694:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
    #//<bubbleSort+0xa5>
  400698:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  40069b:	83 e8 01             	sub    eax,0x1
  40069e:	3b 45 fc             	cmp    eax,DWORD PTR [rbp-0x4]
  4006a1:	0f 8f 67 ff ff ff    	jg     40060e <bubbleSort+0x1b>
  4006a7:	90                   	nop
  4006a8:	c9                   	leave  
  4006a9:	c3                   	ret    

00000000004006aa <printArray>:
  4006aa:	55                   	push   rbp
  4006ab:	48 89 e5             	mov    rbp,rsp
  4006ae:	48 83 ec 20          	sub    rsp,0x20
  4006b2:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  4006b6:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
  4006b9:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  4006c0:	eb 2b                	jmp    4006ed <printArray+0x43>
  4006c2:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  4006c5:	48 98                	cdqe   
  4006c7:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  4006ce:	00 
  4006cf:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4006d3:	48 01 d0             	add    rax,rdx
  4006d6:	8b 00                	mov    eax,DWORD PTR [rax]
  4006d8:	89 c6                	mov    esi,eax
  4006da:	bf 18 08 40 00       	mov    edi,0x400818
  4006df:	b8 00 00 00 00       	mov    eax,0x0
  4006e4:	e8 d7 fd ff ff       	call   4004c0 <printf@plt>
  4006e9:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  4006ed:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  4006f0:	3b 45 e4             	cmp    eax,DWORD PTR [rbp-0x1c]
  4006f3:	7c cd                	jl     4006c2 <printArray+0x18>
  4006f5:	bf 20 08 40 00       	mov    edi,0x400820
  4006fa:	e8 b1 fd ff ff       	call   4004b0 <puts@plt>
  4006ff:	90                   	nop
  400700:	c9                   	leave  
  400701:	c3                   	ret    

0000000000400702 <main>:
  400702:	55                   	push   rbp
  400703:	48 89 e5             	mov    rbp,rsp
  400706:	48 83 ec 30          	sub    rsp,0x30
  40070a:	c7 45 d0 62 00 00 00 	mov    DWORD PTR [rbp-0x30],0x62
  400711:	c7 45 d4 57 00 00 00 	mov    DWORD PTR [rbp-0x2c],0x57
  400718:	c7 45 d8 4b 00 00 00 	mov    DWORD PTR [rbp-0x28],0x4b
  40071f:	c7 45 dc 0c 00 00 00 	mov    DWORD PTR [rbp-0x24],0xc
  400726:	c7 45 e0 01 00 00 00 	mov    DWORD PTR [rbp-0x20],0x1
  40072d:	c7 45 e4 05 00 00 00 	mov    DWORD PTR [rbp-0x1c],0x5
  400734:	c7 45 e8 09 00 00 00 	mov    DWORD PTR [rbp-0x18],0x9
  40073b:	c7 45 ec 02 00 00 00 	mov    DWORD PTR [rbp-0x14],0x2
  400742:	c7 45 fc 08 00 00 00 	mov    DWORD PTR [rbp-0x4],0x8
  400749:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  40074c:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  400750:	89 d6                	mov    esi,edx
  400752:	48 89 c7             	mov    rdi,rax
  400755:	e8 99 fe ff ff       	call   4005f3 <bubbleSort>
  40075a:	bf 42 08 40 00       	mov    edi,0x400842
  40075f:	e8 4c fd ff ff       	call   4004b0 <puts@plt>
  400764:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  400767:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  40076b:	89 d6                	mov    esi,edx
  40076d:	48 89 c7             	mov    rdi,rax
  400770:	e8 35 ff ff ff       	call   4006aa <printArray>
  400775:	bf 0a 00 00 00       	mov    edi,0xa
  40077a:	e8 21 fd ff ff       	call   4004a0 <putchar@plt>
  40077f:	b8 00 00 00 00       	mov    eax,0x0
  400784:	c9                   	leave  
  400785:	c3                   	ret    
  400786:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]