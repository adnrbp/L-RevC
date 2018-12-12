	.file	"io.c"
	.section	.rodata
.LC0:
	.string	"ingresa una letra."
.LC1:
	.string	"%c"
	.align 8
.LC2:
	.string	"la letra ingresada es: %c y el numero vale: %d \n"
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
	movl	$5, -4(%rbp)
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-5(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movzbl	-5(%rbp), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movl	%eax, %esi
	movl	$.LC2, %edi
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
