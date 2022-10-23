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
	#movslq - 32 p 64 bits
	
	movsbl C(%rip),%eax		
	movslq %eax, %rax	
	movl A(%rip),%ecx	
	movslq %ecx, %rcx		
	addq %rcx,%rax				
	
	movsbl D(%rip), %ecx
	movslq %ecx, %rcx
	subq %rcx,%rax			
	
	movswl B(%rip),%edx	
	movslq %edx, %rdx		
	
	addq %rdx,%rax				
	
	
	ret
