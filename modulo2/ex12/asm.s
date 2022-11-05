.section .data
	.global A
	.global B

.section .text
	.global  isMultiple
	
isMultiple:
	movb $0, %dl
	movl A(%rip), %eax
	movl B(%rip), %ecx
	cmp $0, %ecx	# compare 0 with B, if equal jump to zero condition
	jz zero
	
	cdq
	idiv %ecx		# divide A for B
	
	cmp $0, %edx	# compare 0 with remainder, if equal, jump to zero condition
	jne zero		
	
	movl $1, %eax	# set eax to 1
	jmp end
	
zero:
	movl $0, %eax	# set eax to 0
	jmp end
	
end:

	ret
