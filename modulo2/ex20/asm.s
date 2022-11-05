.section .data
	.global num
	
.section .text

	.global check_num
	
check_num:
	movl num(%rip), %eax
	cdq
	movl $2, %ecx
	idivl %ecx		
	cmp $0, %edx	
	je par
	
	movl num(%rip), %r8d
	cmp $0, %r8d	
	js imp_neg		
	
	movl $7, %eax	
	jmp end
	
par:
	cmp $0, %eax	
	js par_neg		
	movl $6, %eax	
	jmp end

imp_neg:
	movl $5, %eax	
	jmp end

par_neg:
	movl $4, %eax	

end:

	ret
