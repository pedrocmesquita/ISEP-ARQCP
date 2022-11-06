.section .data
	.global num

.section .text
	.global vec_avg  


vec_avg:
	
	call vec_sum

	movl $0, %edx
	movl num(%rip), %ecx
	cmpl $0, %ecx
	je divisor_zero

	idivl %ecx
	cdq
	jmp  end

	divisor_zero:
	movl $0, %eax

end:

	ret
