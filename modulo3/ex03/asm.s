.section .data
	.global ptr1
	.global ptr2
	
.section .text
	.global str_copy_porto2

str_copy_porto2:
	
	movq ptr1(%rip), %rsi
	movq ptr2(%rip), %rdi

start:

	movb (%rsi), %cl
	movb %cl, (%rdi) 		

	cmpb $0, %cl
	je end

	cmpb $'o', %cl 	
	je 	o_to_u

	cmpb $'O', %cl 	
	je 	O_to_U

	movb %cl,(%rdi) 		
	jmp next_char

o_to_u:
	movb $'u', (%rdi)
	jmp next_char

O_to_U:
	movb $'U', (%rdi)
	jmp next_char

next_char:
	addq $1, %rsi
	addq $1, %rdi
	jmp start

end:
	ret
