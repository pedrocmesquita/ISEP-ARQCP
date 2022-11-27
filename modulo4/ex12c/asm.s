.section .text
	.global vec_count_bits_one

vec_count_bits_one:
	movq $0, %r8 # contador de iteracoes
	movq $0, %r9 # total de bits
	movq $0, %rcx
	jmp vec_loop


vec_loop:
	cmpl %r8d, %esi
	je endVec

	movzwq (%rdi), %rcx
	pushq %rcx
	pushq %r8
	pushq %r9
	pushq %rdi

	movq %rcx, %rdi

	call count_bits_one

	popq %rdi
	popq %r9
	popq %r8
	popq %rcx
	addl %eax, %r9d

	addq $2, %rdi
	incl %r8d
	jmp vec_loop
endVec:
	movl %r9d, %eax
	ret

count_bits_one:
	movl $0, %ecx
	movl $0, %r8d
	movl $32, %r9d

	jmp loop 

loop:
	cmpl %r8d, %r9d	
	je end

	movl %edi, %eax

	and $1, %eax
	sar $1, %edi

	incl %r8d

	cmpl $1, %eax
	je isOne

	jmp loop

isOne:
	incl %ecx
	jmp loop
end:
	movl %ecx, %eax
	ret
	
	
