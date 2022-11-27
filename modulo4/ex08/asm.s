#int calc(int a, int *b, int c)
#int z=a*2-(*b);
#return (c-4)*z;


.section .data
z:
	.int 0

.section .text
	.global calc

calc:
	movl z(%rip), %eax
	movl %edi, %eax
	addl %eax, %eax
	subl (%rsi), %eax
	subq $4, %rdx
	mul %rdx
	
	ret
