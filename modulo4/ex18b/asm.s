.section .text
	.global changes

changes:
	movl (%rdi), %eax
	sarl    $8, %eax
	andl    $255, %eax
	movl (%rdi), %ecx
	cmp $15, %ch
	jbe end
applyMask:
	andl %eax, %ecx
	cmp $7, %ecx
	jbe end
	xorl %eax, %ecx

end:
	movl %ecx, (%rdi)
	ret
