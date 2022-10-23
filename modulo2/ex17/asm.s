
.section .data
	.global n1
	.global	n2




.section .text

	.global sum
	.global sub
	.global mul
	.global div
	.global mod
	.global pow2
	.global pow3


sum:
	
	movl n1(%rip),%eax 
	movl n2(%rip),%ecx
	
	addl %ecx,%eax
	
	
	ret
	
sub:

	movl n1(%rip),%eax 
	movl n2(%rip),%ecx
	
	subl %ecx,%eax
	
	
	ret
	
mul:


	movl n1(%rip),%eax 
	movl n2(%rip),%ecx
	
	imull %ecx
	
	
	ret
	
	
div:
	
	movl n1(%rip), %eax;
	movl n2(%rip), %ecx;
	idivl %ecx, %eax
	
	
	
	ret
	
mod:

	movl n1(%rip), %eax;
	movl n2(%rip), %ecx;
	
	idivl %ecx, %eax
	
	movl $0, %eax
	movl %edx, %eax
	
	
	ret
	
pow2:
	
	movl n1(%rip),%eax 
	movl n1(%rip),%ecx
	
	imull %ecx, %eax
	
	ret
	
pow3:

	movl n1(%rip),%eax 
	movl n1(%rip),%ecx
	
	imull %ecx, %eax
	imull %ecx, %eax
	
	
	ret
