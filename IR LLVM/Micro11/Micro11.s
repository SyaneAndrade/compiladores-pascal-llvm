	.text
	.file	"Micro11.ll"
	.globl	verifica
	.align	16, 0x90
	.type	verifica,@function
verifica:                               # @verifica
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
	movl	%edi, -4(%rbp)
	testl	%edi, %edi
	jle	.LBB0_2
# BB#1:
	movl	$1, -8(%rbp)
.LBB0_2:
	cmpl	$0, -4(%rbp)
	jns	.LBB0_4
# BB#3:
	movl	$-1, -8(%rbp)
.LBB0_4:
	cmpl	$0, -4(%rbp)
	jne	.LBB0_6
# BB#5:
	movl	$0, -8(%rbp)
.LBB0_6:
	movl	-8(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	verifica, .Lfunc_end0-verifica
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
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
	callq	verifica
	movl	%eax, -12(%rbp)
	cmpl	$1, %eax
	je	.LBB1_5
# BB#1:
	testl	%eax, %eax
	je	.LBB1_4
# BB#2:
	cmpl	$-1, %eax
	jne	.LBB1_7
# BB#3:
	movl	$.L.str.2, %edi
	jmp	.LBB1_6
.LBB1_5:
	movl	$.L.str.4, %edi
	jmp	.LBB1_6
.LBB1_4:
	movl	$.L.str.3, %edi
.LBB1_6:
	xorl	%eax, %eax
	callq	printf
.LBB1_7:
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
	.asciz	"Digite um numero: "
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%d"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Numero negativo\n"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Numero zero\n"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Numero positivo\n"
	.size	.L.str.4, 17


	.ident	"clang version 3.8.1-24 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
