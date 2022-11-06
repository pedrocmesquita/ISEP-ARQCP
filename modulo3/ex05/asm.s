.section .data
	.global prtvec
	.global num
	
.section .text
	.global vec_sum
	
vec_sum:
	
	movq ptrvec(%rip), %rsi
	movl num(%rip), %r8d
	movl $0, %eax
	movl $0, %edx
	cmpl $0, %r8d
	je end

sum_number:
	movl (%rsi), %ecx
	addl %ecx, %eax
	decl %r8d
	addq $8, %rsi
		
	cmpl $0, %r8d
	je end
	
	jmp sum_number
	
end:
	ret

