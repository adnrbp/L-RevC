	.file	"sequentialSample.c"
	.comm	x,4,4
	.comm	aux,4,4
	.comm	f,4,4
	.section	.rodata
.LC0:
	.string	"introduce a value for x "
	.align 8
.LC1:
	.string	"in f(x)=[k(x-m)**2]/[1+k(x-m)**c2]' "
.LC2:
	.string	"%f"
	.align 8
.LC6:
	.string	"the result of your operation is: %f\n"
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
	movl	$.LC0, %edi
	call	puts
	movl	$.LC1, %edi
	call	puts
	movl	$x, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movss	x(%rip), %xmm0
	movss	.LC3(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	.LC4(%rip), %xmm1
	mulss	%xmm0, %xmm1
	movss	x(%rip), %xmm0
	movss	.LC3(%rip), %xmm2
	subss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, aux(%rip)
	movss	aux(%rip), %xmm1
	movss	aux(%rip), %xmm2
	movss	.LC5(%rip), %xmm0
	addss	%xmm2, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, f(%rip)
	movss	f(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.LC6, %edi
	movl	$1, %eax
	call	printf
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC3:
	.long	1073741824
	.align 4
.LC4:
	.long	1091567616
	.align 4
.LC5:
	.long	1065353216
	.ident	"GCC: (GNU) 6.1.1 20160802"
	.section	.note.GNU-stack,"",@progbits
