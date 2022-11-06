.section .data
	.global ptrvec
	.global num
	.global x
	
.section .text
	.global vec_search			   
	
vec_search:

	movq num(%rip), %rax			
	cmpq $0, %rax					#verifica se array ta vazio, se sim, jump
	je doesntexist					

	movq $0, %rax					
	movq ptrvec(%rip), %rsi			
	movl num(%rip), %edi			
	movw x(%rip), %r8w				
	
loop:
	movw (%rsi), %cx				
	cmpw %r8w, %cx					#verifica se cx e o que queremos
	je exists					
	
	cmpl $0, %edi					#se edi = 0 jump
	je doesntexist					
	
	decl %edi						
	addq $2, %rsi					#avanca para o proximo elemento do array
	jmp loop						
	
doesntexist:
	movq $0, %rax					
	jmp fim							
	
exists:	
	movq %rsi, %rax					#move para registo de return

fim: 
	ret
