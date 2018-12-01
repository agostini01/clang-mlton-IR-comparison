	.text
	.file	"dot-product.c"
	.globl	print_array             # -- Begin function print_array
	.p2align	4, 0x90
	.type	print_array,@function
print_array:                            # @print_array
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -16(%rbp)
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str.1, %rdi
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	%eax, -24(%rbp)         # 4-byte Spill
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	print_array, .Lfunc_end0-print_array
	.cfi_endproc
                                        # -- End function
	.globl	dot_product             # -- Begin function dot_product
	.p2align	4, 0x90
	.type	dot_product,@function
dot_product:                            # @dot_product
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	mulsd	(%rax,%rcx,8), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB1_1
.LBB1_4:
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end1:
	.size	dot_product, .Lfunc_end1-dot_product
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_1:
	.quad	4611686018427387904     # double 2
.LCPI2_2:
	.quad	4613937818241073152     # double 3
.LCPI2_3:
	.quad	4616189618054758400     # double 4
.LCPI2_4:
	.quad	4617315517961601024     # double 5
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movl	$5, %eax
	leaq	-64(%rbp), %rcx
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI2_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI2_3(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI2_4(%rip), %xmm4   # xmm4 = mem[0],zero
	xorl	%edx, %edx
	movl	$40, %r8d
	movl	%r8d, %r9d
	leaq	-112(%rbp), %r10
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rsi
	movq	%rsi, %rdi
	movl	%edx, %esi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movq	%r9, %rdx
	movq	%r10, -136(%rbp)        # 8-byte Spill
	movq	%r9, -144(%rbp)         # 8-byte Spill
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movsd	%xmm1, -176(%rbp)       # 8-byte Spill
	movsd	%xmm2, -184(%rbp)       # 8-byte Spill
	movsd	%xmm3, -192(%rbp)       # 8-byte Spill
	movsd	%xmm4, -200(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -56(%rbp)
	movsd	-184(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm2, -48(%rbp)
	movsd	-192(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm3, -40(%rbp)
	movsd	-200(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm4, -32(%rbp)
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rdi
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	-144(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -104(%rbp)
	movsd	-184(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm2, -96(%rbp)
	movsd	-176(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm3, -88(%rbp)
	movsd	-168(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm4, -80(%rbp)
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	callq	print_array
	movl	$5, %esi
	leaq	-112(%rbp), %rdi
	callq	print_array
	movl	$5, %edx
	leaq	-112(%rbp), %rsi
	leaq	-64(%rbp), %rdi
	callq	dot_product
	movabsq	$.L.str.3, %rdi
	movsd	%xmm0, -120(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	xorl	%edx, %edx
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"{ "
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%f "
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"}\n"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"result = %f\n"
	.size	.L.str.3, 13


	.ident	"clang version 6.0.1 (https://github.com/llvm-mirror/clang.git b1a96fa34696e4556a9b83b3022b5feba2367a36) (https://github.com/llvm-mirror/llvm.git 2c9cf4f65f36fe91710c4b1bfd2f8d9533ac01b5)"
	.section	".note.GNU-stack","",@progbits
