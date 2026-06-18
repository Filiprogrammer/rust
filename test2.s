	.file	"test2.85a5f5bf6abb92ac-cgu.0"
	.section	.text.bitand_let_mut,"ax",@progbits
	.globl	bitand_let_mut
	.p2align	4
	.type	bitand_let_mut,@function
bitand_let_mut:
	.cfi_startproc
	movq	%rdi, %rax
	movaps	(%rsi), %xmm0
	andps	(%rdx), %xmm0
	movaps	%xmm0, (%rsi)
	movaps	(%rsi), %xmm0
	movaps	%xmm0, (%rdi)
	retq
.Lfunc_end0:
	.size	bitand_let_mut, .Lfunc_end0-bitand_let_mut
	.cfi_endproc

	.globl	bitand_mut_self
	.type	bitand_mut_self,@function
bitand_mut_self = bitand_let_mut
	.ident	"rustc version 1.98.0-nightly (c1b22f44c 2026-06-17)"
	.section	".note.GNU-stack","",@progbits
