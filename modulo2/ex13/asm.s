# area = (length1 + length2)*heigth/2

.section .data
			 
	.global lenght1
	.global lenght2
	.global height
	
.section .text
	.global getArea	
	
getArea:

	movl lenght1(%rip), %ebx
	movl lenght2(%rip), %eax
	addl %ebx, %eax	
	movl height(%rip), %ecx
	imull %ecx, %eax
	movl $2, %ecx
	divl %ecx
	
	ret
