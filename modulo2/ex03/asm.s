.section .data
	CONST: 
		.long 20
	.global op1
	.global op2
	.global CONST
	
.section .text
	.global sum_v2 				
	
sum_v2:

	movl op1(%rip), %ecx 
	movl op2(%rip), %edx 
	movl CONST(%rip), %eax 
	subl %ecx, %eax
	subl %ecx, %eax
	addl %edx, %eax

	ret
