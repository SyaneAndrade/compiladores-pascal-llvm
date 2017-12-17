	.text
	.file	"Micro05.ll"
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
	subq	$96, %rsp
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movl	$0, -20(%rbp)
	movl	$5, -100(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -92(%rbp)
	movl	$1, -88(%rbp)
	leaq	-80(%rbp), %r14
	leaq	-81(%rbp), %rbx
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	incl	-92(%rbp)
	incl	-88(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-88(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jg	.LBB0_7
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	__isoc99_scanf
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	__isoc99_scanf
	movsbl	-81(%rbp), %eax
	cmpl	$77, %eax
	je	.LBB0_5
# BB#3:                                 #   in Loop: Header=BB0_1 Depth=1
	cmpl	$72, %eax
	jne	.LBB0_6
# BB#4:                                 #   in Loop: Header=BB0_1 Depth=1
	incl	-96(%rbp)
	incl	-88(%rbp)
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	incl	-88(%rbp)
	jmp	.LBB0_1
.LBB0_7:
	movl	-96(%rbp), %esi
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
	movl	-92(%rbp), %esi
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	addq	$96, %rsp
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
	.asciz	"Digite o nome: "
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%s"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Digite H  para Homem ou M para Mulher: "
	.size	.L.str.2, 40

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Sexo s\303\263 pode ser H ou M"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Foram inseridos %d Homens\n"
	.size	.L.str.4, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Foram inseridos %d Mulheres\n"
	.size	.L.str.5, 29


	.ident	"clang version 3.8.1-24 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
