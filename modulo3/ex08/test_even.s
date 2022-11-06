.section .data
	.global even

.section .text
	.global test_even
	
test_even:
	movl even(%rip), %eax
	andl $1, %eax
	jz par
	movl $0, %eax
	jmp end
par:
	movl $1, %eax
	jmp end

end:
	ret
