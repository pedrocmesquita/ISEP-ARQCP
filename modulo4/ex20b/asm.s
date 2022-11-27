.section .text
	.global sum_multiples_x

sum_multiples_x:
	mask:
		movl $255, %eax # Mask Related
		shll $8, %eax # Mask em %eax
		andl %eax, %esi
		sarl $8, %esi # Valor em esi

	movl $0, %ecx
	movb %sil, %cl # divisor em cl

	movl $0, %r8d # Soma total em r8d

	jmp loop

loop:
	cmpb $0, (%rdi)
	je end

	movb (%rdi), %al
	cbw # al passar para ax

	idivb %cl

	cmpb $0, %ah
	je sumElement
	jne nextIteration


sumElement:
	addb (%rdi), %r8b
	jmp nextIteration

nextIteration:
	incq %rdi
	jmp loop

end:
	movl %r8d, %eax
	ret
