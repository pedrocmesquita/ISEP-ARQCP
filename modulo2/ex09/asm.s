.section .data


			# C + A - D + B. A is a 32-bit variable, B is a 16-bit variable, while C and D are both 8-bit variables.
					 #The function should return a 64-bit value that must be printed in C.
					 	 
				 
	.global A,B,C,D
	
.section .text
	.global sum_and_subtract			
	
sum_and_subtract:

	#movl - int para um coiso de 32 bits
	#movsbl - 8 bits p 32 bits
	#movswl - 16 p 32 bits
	
	movsbl C(%rip),%eax			
	movl A(%rip),%ecx			
	addl %ecx,%eax				
	
	movsbl D(%rip), %ecx
	subl %ecx,%eax			
	
	movswl B(%rip),%edx			
	
	addl %edx,%eax				
	
	cdq
	
	ret
