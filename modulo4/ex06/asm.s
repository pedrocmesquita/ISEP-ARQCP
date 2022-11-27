.section .text
	.global test_equal
test_equal:
    # a em %rdi
	# b em %rsi
	movl $0, %eax
	movl $0, %r8d
	jmp loop

loop:
	movb (%rdi), %al
	movb (%rsi), %cl

	cmpb $0, %al 
	je endString

	cmpb $0, %cl
	je endString

	cmpb %al, %cl
	je nextIteration
	jne notEqual

	cmpb $0, %al
	je equal

nextIteration:
	incq %rdi
	incq %rsi
	jmp loop

endString:
	cmpb %al, %cl
	je equal
	jne notEqual

equal:
	movl $1, %eax
	jmp end

notEqual:
	movl $0, %eax
	jmp end
end:
	ret
