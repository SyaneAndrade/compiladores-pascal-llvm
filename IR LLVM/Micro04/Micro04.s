	.text
	.file	"Micro04.ll"
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
	pushq	%rbx
	subq	$24, %rsp
.Ltmp3:
	.cfi_offset %rbx, -24
	movl	$0, -12(%rbp)
	movl	$0, -24(%rbp)
	movl	$1, -16(%rbp)
	leaq	-20(%rbp), %rbx
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	incl	-16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$5, -16(%rbp)
	jg	.LBB0_6
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	__isoc99_scanf
	cmpl	$10, -20(%rbp)
	jl	.LBB0_5
# BB#3:                                 #   in Loop: Header=BB0_1 Depth=1
	cmpl	$150, -20(%rbp)
	jg	.LBB0_5
# BB#4:                                 #   in Loop: Header=BB0_1 Depth=1
	incl	-24(%rbp)
	jmp	.LBB0_5
.LBB0_6:
	movl	-24(%rbp), %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
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
	.asciz	"Ao total foram digitados %d numeros no intervalo 10 e 150\n"
	.size	.L.str.2, 59


	.ident	"clang version 3.8.1-24 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
