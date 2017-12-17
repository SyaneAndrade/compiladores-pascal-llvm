	.text
	.file	"Micro09.ll"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1140457472              # float 500
.LCPI0_1:
	.long	1106247680              # float 30
.LCPI0_2:
	.long	1150681088              # float 1200
.LCPI0_3:
	.long	1117782016              # float 80
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_4:
	.quad	-4597049319638433792    # double -20
.LCPI0_5:
	.quad	4621819117588971520     # double 10
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
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	leaq	-8(%rbp), %rsi
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	__isoc99_scanf
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	leaq	-12(%rbp), %rsi
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	__isoc99_scanf
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_0(%rip), %xmm0
	ja	.LBB0_2
# BB#1:
	movss	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	ucomiss	-8(%rbp), %xmm0
	jbe	.LBB0_3
.LBB0_2:
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI0_5(%rip), %xmm0
.LBB0_8:
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
.LBB0_9:
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB0_3:
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_0(%rip), %xmm0
	jb	.LBB0_5
# BB#4:
	movss	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	ucomiss	-12(%rbp), %xmm0
	jae	.LBB0_7
.LBB0_5:
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_1(%rip), %xmm0
	jb	.LBB0_9
# BB#6:
	movss	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	ucomiss	-8(%rbp), %xmm0
	jb	.LBB0_9
.LBB0_7:
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI0_4(%rip), %xmm0
	jmp	.LBB0_8
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Digite o preco: "
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%f"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Digite o a venda: "
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"O novo preco \303\251 %f\n"
	.size	.L.str.3, 20


	.ident	"clang version 3.8.1-24 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
