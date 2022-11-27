.section .text
	.global join_bits

join_bits:
	movl $0, %r8d
	movl $0, %r9d
	movl $1, %eax # maskA
	movl $0xffffffff, %ecx # maskB

	maskA:
		cmpl %r8d, %edx
		je maskB

		shll $1, %eax 
		incl %eax

		incl %r8d
		
		jmp maskA

	maskB:
		xorl %eax, %ecx
	
	pushq %rdi
	pushq %rsi

	andl %eax, %edi
	andl %ecx, %esi

	orl %edi, %esi

	movl %esi, %eax

	popq %rsi
	popq %rdi

	ret
