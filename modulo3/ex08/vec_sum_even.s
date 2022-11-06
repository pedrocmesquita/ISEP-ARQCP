.section .data
	.global num
	.global ptrvec

.section .text
	.global vec_sum_even	
	
vec_sum_even:
	movq ptrvec(%rip), %rcx
	movl num(%rip), %edx
	movl $0, %r8d

loop:
	cmp $0, %edx
	jle end
	
	movl (%rcx), %eax 
	movl %eax, even(%rip)
	
	call test_even
	
	cmp $0, %eax
	je next
	
	addl (%rcx), %r8d
	
next:
	addq $8, %rcx
	decl %edx
	jmp loop
	
end:
	movl %r8d, %eax	
	ret
