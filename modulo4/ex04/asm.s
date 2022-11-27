.section .text
	.global sum_smaller
sum_smaller:
	movl %edi, %eax
	movl %esi, (%rdx)

	addl %esi, %eax

	cmpl %edi, %esi
	jg firstBigger

	jmp end

firstBigger:
	movl %edi, (%rdx)
	jmp end

end:
	ret
