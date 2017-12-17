	.text
	.file	"Micro01.ll"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4621256167635550208     # double 9
.LCPI0_1:
	.quad	4639833516098453504     # double 160
.LCPI0_2:
	.quad	4617315517961601024     # double 5
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	leaq	-16(%rbp), %rsi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	__isoc99_scanf
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	.LCPI0_0(%rip), %xmm0
	addsd	.LCPI0_1(%rip), %xmm0
	divsd	.LCPI0_2(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Tabela de convers\303\243o Celsius -> Fahrenheit\n"
	.size	.L.str, 44

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Digite a temperatura em Celsius: "
	.size	.L.str.1, 34

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%lf"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	" A nova temperatura \303\251 : %lf F\n"
	.size	.L.str.3, 32


	.ident	"clang version 3.8.1-24 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
