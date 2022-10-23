.section .data
.global A
.global B
.global C
.global D

.section .text
.global compute			


compute:

	movl A(%rip),%eax			
	imull B(%rip),%eax			
	subl C(%rip),%eax			
	
	cdq							
	movl D(%rip),%ecx			
	cmpl $0,%ecx 				
	je jmp_div0
		
	idivl %ecx					
	jmp end

jmp_div0:
	movl $0,%eax
	jmp end
	
	
end:
	ret
