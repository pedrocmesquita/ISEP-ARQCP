.section .data
	.global op1
	.global op2

.section .text
	.global  sum3ints
	
sum3ints:

	movl op1(%rip), %eax	
	addl op2(%rip), %eax	
	addl op3(%rip), %eax
    cdq				
  
	ret
