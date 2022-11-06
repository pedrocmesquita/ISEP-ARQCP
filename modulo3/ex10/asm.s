.section .data
	.global ptr1
	.global ptr2
	.global ptr3
	
.section .text
	.global str_cat	
	
str_cat:
	movq ptr1(%rip), %rdx
	movq ptr3(%rip), %rcx

loop_one:
	movb (%rdx), %al
	movb %al, (%rcx)
	cmp $0, %al
	je end_loop_one
	
	incq %rdx
	incq %rcx
	jmp loop_one

end_loop_one: 
	movq ptr2(%rip), %rdx

loop_two:
	movb (%rdx), %al
	movb %al, (%rcx)
	cmp $0, %al
	je end
	
	incq %rdx
	incq %rcx
	jmp loop_two

end:
	ret
	
