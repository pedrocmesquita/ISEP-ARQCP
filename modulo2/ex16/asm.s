.section .data
	.global num
	
.section .text

	.global steps
	
steps:
	movl $0, %edx	# sets edx to 0
	movl num(%rip), %eax	
	cdq				# converts double to quad eax -> edx:eax
	
	imull $3, %eax	# operations from exercise |
	addl $6, %eax	#						   V
	movl $3, %ecx
	cdq				# converts double to quad ecx
	idivl %ecx
	addl $12, %eax
	subl num(%rip), %eax
	subl $1, %eax	# operations end here	   _
		
	ret
