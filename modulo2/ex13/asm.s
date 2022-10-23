# area = (length1 + length2)*heigth/2

.section .data
			 
	.global length1
	.global length2
	.global height

.section .text
	.global getArea	
	
getArea:

	movl length1(%rip), %r8d
    movl length2(%rip), %eax
    addl %r8d, %eax
    movl height(%rip), %ecx
    imull %ecx, %eax
    movl $0, %edx
    movl $2, %r8d
    idivl %r8d
    
	ret
