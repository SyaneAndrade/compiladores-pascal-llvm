	.text
	.file	"Micro10.ll"
	.globl	fatorial
	.align	16, 0x90
	.type	fatorial,@function
fatorial:                               # @fatorial
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Ltmp3:
	.cfi_offset %rbx, -24
	movl	%edi, -16(%rbp)
	testl	%edi, %edi
	jg	.LBB0_2
# BB#1:
	movl	$1, -12(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-16(%rbp), %ebx
	leal	-1(%rbx), %edi
	callq	fatorial
	imull	%ebx, %eax
	movl	%eax, -12(%rbp)
.LBB0_3:
	movl	-12(%rbp), %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fatorial, .Lfunc_end0-fatorial
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	leaq	-8(%rbp), %rsi
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	__isoc99_scanf
	movl	-8(%rbp), %edi
	callq	fatorial
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	movl	-8(%rbp), %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	movl	%ecx, %edx
	callq	printf
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Digite um numero:"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%d"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"O fatorial de %d e %d\n"
	.size	.L.str.2, 23


	.ident	"clang version 3.8.1-24 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
