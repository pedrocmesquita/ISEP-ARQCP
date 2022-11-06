.section .data
	.global ptr1
	.global ptr2
	.global num
	
.section .text
	.global swap
	
swap:
	movl $0, %esi
	movl $0, %eax
	movl $0, %r8d
	movq ptr1(%rip), %rcx
	movq ptr2(%rip), %rdx

loop:
	cmp num(%rip), %esi
	je end
	
	movb (%rcx), %al
	movb (%rdx), %r8b
	movb %r8b, (%rcx)
	movb %al, (%rdx)
	
	incq %rcx
	incq %rdx
	incl %esi
	jmp loop
	
end:
	ret
