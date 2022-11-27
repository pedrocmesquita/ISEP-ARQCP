.section .text
	.global call_incr

incr:
	movswl (%rdi), %r8d
	movl %r8d, -16(%rbp) # x em 2 lugar na stack como variavel local

	movl %r8d, -24(%rbp) # y em 3 lugar na stack como variavel local

	movsbl %sil, %r8d
	addl %r8d, -24(%rbp)

	movw -24(%rbp), %r8w
	movw %r8w, (%rdi)
	
	movl -16(%rbp), %eax
	ret

call_incr:
	# prologue 
	pushq %rbp
	movq %rsp, %rbp 

	subq $24, %rsp
	movw $0xA1B2, -8(%rbp) # x1 1 lugar na stack como variavel local
	movw %di, -8(%rbp)
	addw $3, -8(%rbp)
	movw $0xA1B2, -32(%rbp) # x2 4 lugar na stack como variavel local

	leaq -8(%rbp), %rdi 
	movl $0, %esi
	movb $0xC3, %sil

	call incr

	movswl -8(%rbp), %ecx
	addl %ecx, %eax

	# epilogue
	movq %rbp, %rsp
	popq %rbp

	ret
