.section .data

	op3: 
		.long 0
		
	op4:
		.long 0
		
	.global op1, op2, op3, op4
	
.section .text
	.global sum_v3 				
	
sum_v3:

	movl op1(%rip), %ecx				#move op1 to ecx
	movl op2(%rip), %edx 				#move op2 to edx
	movl op3(%rip), %ebx							#move op3 to 
	movl op4(%rip),	%eax					#move op4 to 
	addl %ebx, %eax
	subl %edx, %eax
	subl %edx, %eax
	addl %ecx, %eax
	addl %ecx, %eax

					# op4 + op3 - op2 - op2 + op1 + op1
	ret
