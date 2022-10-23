# area = (length1 + length2)*heigth/2

.section .data
			 
	.global lenght1
	.global lenght2
	.global height
	.global aux
	
.section .text
	.global getArea	
	
getArea:

	movl lenght1(%rip), %r8d
    movl lenght2(%rip), %eax
    addl %r8d, %eax
    movl height(%rip), %ecx
    imull %ecx, %eax
    movl $0, %edx
    movl $2, %r8d
    idivl %r8d
    
	ret
