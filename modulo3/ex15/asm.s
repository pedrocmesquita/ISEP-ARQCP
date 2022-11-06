.section .data
	.global ptrvec
	.global num
	
.section .text
	.global sum_first_byte
	
sum_first_byte:

	movq ptrvec(%rip), %rsi			#pointer em rsi
	movl num(%rip), %r8d			#num em r8d
	movl $0, %eax
	movl $0, %ecx
	
loop:
	cmpl $0, %r8d
	je end	
	
	decl %r8d						#i-- em r8d
	movl (%rsi), %ecx				
	movsxb %cl, %edi				#move com extensao de sinal 8 para 32 bits
	addl %edi, %eax					
	addq $8, %rsi					#prox numero do array
	jmp loop					
	
vazio:
	movl $0, %eax
	jmp end							

end:      
	ret
