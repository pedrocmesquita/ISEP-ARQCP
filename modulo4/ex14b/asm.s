.section .text
	.global reset_bit

reset_bit:
	movl (%rdi), %eax # mover parametro para registo
	movl %eax, %r8d
	movl %esi, %ecx # mover pos do bit
	movl $1, %edx # bit 1 para primeira posicao do registo
	shll %cl, %edx # empurra para a posicao correta
	
	not %edx
	
	andl %edx, %eax # aplica-se a mask

	cmpl %r8d, %eax
	je isZero

	movl $1, %eax
	ret

isZero:
	movl $0, %eax
	ret
