	.file	"bubbleSort.c"
	.text
	.globl	change_pos
	.type	change_pos, @function
change_pos:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	change_pos, .-change_pos
	.globl	bubbleSort
	.type	bubbleSort, @function
bubbleSort:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L3
.L7:
	movl	$0, -8(%rbp)
	jmp	.L4
.L6:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-8(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L5
	movl	-8(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	change_pos
.L5:
	addl	$1, -8(%rbp)
.L4:
	movl	-28(%rbp), %eax
	subl	-4(%rbp), %eax
	subl	$1, %eax
	cmpl	-8(%rbp), %eax
	jg	.L6
	addl	$1, -4(%rbp)
.L3:
	movl	-28(%rbp), %eax
	subl	$1, %eax
	cmpl	-4(%rbp), %eax
	jg	.L7
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	bubbleSort, .-bubbleSort
	.section	.rodata
.LC0:
	.string	"%d  "
	.align 8
.LC1:
	.string	"End of the ordering process, bye."
	.text
	.globl	printArray
	.type	printArray, @function
printArray:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L9
.L10:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -4(%rbp)
.L9:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L10
	movl	$.LC1, %edi
	call	puts
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	printArray, .-printArray
	.section	.rodata
.LC2:
	.string	"Array ordered = "
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$98, -48(%rbp)
	movl	$87, -44(%rbp)
	movl	$75, -40(%rbp)
	movl	$12, -36(%rbp)
	movl	$1, -32(%rbp)
	movl	$5, -28(%rbp)
	movl	$9, -24(%rbp)
	movl	$2, -20(%rbp)
	movl	$8, -4(%rbp)
	movl	-4(%rbp), %edx
	leaq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bubbleSort
	movl	$.LC2, %edi
	call	puts
	movl	-4(%rbp), %edx
	leaq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	printArray
	movl	$10, %edi
	call	putchar
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (GNU) 6.1.1 20160802"
	.section	.note.GNU-stack,"",@progbits
