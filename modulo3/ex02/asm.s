.section .data

	.global ptr1
	.global ptr2

.section .text
	.global str_copy_porto
	
str_copy_porto:
	movl $0, %edx
	movl $0, %ecx
	movl ptr1(%rip), %edx
	movl ptr2(%rip), %ecx


string_loop:
	movb (%edx), %al
	movb %al, (%ecx)
	cmp $0, %al
	je end

	cmp $111, %al
	je troca

inc:
	incl %edx
	incl %ecx
	jmp string_loop

troca:
	movb $117, (%ecx)
	jmp inc

end:
	ret
