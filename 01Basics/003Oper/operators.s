	.file	"operators.c"
	.section	.rodata
.LC0:
	.string	"el resultado 1 es: %d \n"
.LC1:
	.string	"el resultado 2 es: %d \n"
.LC2:
	.string	"el resultado 3 es: %d \n"
.LC3:
	.string	"el resultado 4 es: %d \n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$12, -4(%rbp)
	movl	$27, -8(%rbp)
	movl	$1, -12(%rbp)
	movl	$-22, -16(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 6.1.1 20160802"
	.section	.note.GNU-stack,"",@progbits
