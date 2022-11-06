.section .data
	.global ptr1

.section .text
	.global seven_count

seven_count:

	movq ptr1(%rip), %rsi    		#move o pointer p rsi
	movl $0, %eax	   				
	movl $0, %ecx	   				

	comparar:
	movb (%rsi), %cl  
	cmpb $'7', %cl	 				#compara o char a 7
	
	je contador						#se for encontrado um 7, chamar o contador
	
	cmpb $0, %cl	 				#se acabar a string, acaba funcao	 
	je end
	
	proxchar:
	incq %rsi		   				#proximo char
	jmp comparar 					#repetir
	

	contador:
	incl %eax        				#contador, adiciona 1
	jmp proxchar
	
	end:
	ret
