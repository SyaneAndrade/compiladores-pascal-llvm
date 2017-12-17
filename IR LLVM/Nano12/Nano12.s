	.text
	.file	"Nano12.ll"
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
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$1, -8(%rbp)
	movl	$2, -12(%rbp)
	movl	$5, -16(%rbp)
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %esi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	decl	-16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.LBB0_5
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	je	.LBB0_3
# BB#4:                                 #   in Loop: Header=BB0_1 Depth=1
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	decl	-16(%rbp)
	jmp	.LBB0_1
.LBB0_5:
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d\n"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0\n"
	.size	.L.str.1, 3


	.ident	"clang version 3.8.1-24 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
