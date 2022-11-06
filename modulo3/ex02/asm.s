.section .data

	.global ptr1
	.global ptr2

.section .text
	.global str_copy_porto
	
str_copy_porto:
	movq ptr1(%rip), %rsi
	movq ptr2(%rip), %rdi


string_loop:
	movb (%rsi), %al
	movb %al, (%rdi)
	cmp $0, %al
	je end
	cmp $111, %al
	je troca

inc:
	incq %rsi
	incq %rdi
	jmp string_loop

troca:
	movb $117, (%rdi)
	jmp inc

end:
	ret
