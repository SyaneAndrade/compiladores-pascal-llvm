	.text
	.file	"Micro08.ll"
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
	pushq	%rax
.Ltmp3:
	.cfi_offset %rbx, -24
	movl	$0, -12(%rbp)
	movl	$1, -16(%rbp)
	leaq	-16(%rbp), %rbx
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %esi
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -16(%rbp)
	je	.LBB0_6
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	__isoc99_scanf
	cmpl	$11, -16(%rbp)
	jl	.LBB0_4
# BB#3:                                 #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$9, -16(%rbp)
	jg	.LBB0_1
	jmp	.LBB0_5
.LBB0_6:
	xorl	%eax, %eax
	addq	$8, %rsp
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
	.asciz	"O numero %d \303\251 maior que 10\n"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"O numero %d \303\251 menor que 10\n"
	.size	.L.str.3, 29


	.ident	"clang version 3.8.1-24 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
