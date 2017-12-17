	.text
	.file	"Micro07.ll"
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
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movl	$0, -20(%rbp)
	movl	$1, -28(%rbp)
	leaq	-24(%rbp), %r14
	leaq	-29(%rbp), %rbx
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	-29(%rbp), %esi
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$1, -28(%rbp)
	jne	.LBB0_10
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	__isoc99_scanf
	cmpl	$0, -24(%rbp)
	jle	.LBB0_4
# BB#3:                                 #   in Loop: Header=BB0_1 Depth=1
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -24(%rbp)
	jns	.LBB0_6
# BB#5:                                 #   in Loop: Header=BB0_1 Depth=1
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -24(%rbp)
	jne	.LBB0_8
# BB#7:                                 #   in Loop: Header=BB0_1 Depth=1
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	__isoc99_scanf
	movzbl	-29(%rbp), %eax
	cmpl	$83, %eax
	jne	.LBB0_1
	jmp	.LBB0_9
.LBB0_10:
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
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
	.asciz	"Positivo\n"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Negativo\n"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Zero\n"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Deseja finalizar S ou N:"
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%c"
	.size	.L.str.7, 3


	.ident	"clang version 3.8.1-24 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
