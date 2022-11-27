.section .text
	.global changes_vec

changes_vec:
	movl $0, %r8d
	jmp loop

loop:
	cmpl %r8d, %esi
	je end

	pushq %rax
	pushq %rcx

	call changes

	popq %rcx
	popq %rax

	addq $4, %rdi
	incl %r8d

	jmp loop

end:
	ret
changes:
	movl (%rdi), %eax
	sarl    $8, %eax
	andl    $255, %eax
	movl (%rdi), %ecx
	cmp $15, %ch
	jbe end
applyMask:
	andl %eax, %ecx
	cmp $7, %ecx
	jbe end
	xorl %eax, %ecx
	ret
