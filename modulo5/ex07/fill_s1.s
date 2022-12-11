.section .data
	.equ coff,0
	.equ ioff,4
	.equ doff,8
	.equ joff,12
	
.section .text
	.global fill_s1
	
fill_s1:
	movb %dl, coff(%rdi)
	movl %esi, ioff(%rdi)
	movb %dl, doff(%rdi)
	movl %ecx, joff(%rdi)
	
	ret
