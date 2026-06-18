	.file	"test3.26ab1ff8e14968d6-cgu.0"
	.section	.text.bitand,"ax",@progbits
	.globl	bitand
	.p2align	4
	.type	bitand,@function
bitand:
	.cfi_startproc
	movq	%rdi, %rax
	movaps	(%rsi), %xmm0
	andps	(%rdx), %xmm0
	movaps	%xmm0, (%rsi)
	movaps	(%rsi), %xmm0
	movaps	%xmm0, (%rdi)
	retq
.Lfunc_end0:
	.size	bitand, .Lfunc_end0-bitand
	.cfi_endproc

	.section	.text.bitand_assign,"ax",@progbits
	.globl	bitand_assign
	.p2align	4
	.type	bitand_assign,@function
bitand_assign:
	.cfi_startproc
	movaps	(%rdi), %xmm0
	andps	(%rsi), %xmm0
	movaps	%xmm0, (%rdi)
	retq
.Lfunc_end1:
	.size	bitand_assign, .Lfunc_end1-bitand_assign
	.cfi_endproc

	.ident	"rustc version 1.98.0-nightly (c1b22f44c 2026-06-17)"
	.section	".note.GNU-stack","",@progbits
