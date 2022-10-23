.section .data
	.global current #short
	.global desired #shoty

.section .text
	.global needed_time

needed_time:

	movb current(%rip), %al 
	movb desired(%rip), %cl 
	cmp %cl, %al
	jg timeForDecreasing  
	jl timeForIncreasing 
	je noChange

	timeForIncreasing:
		subb %al, %cl  
		movb %cl, %al
		movsbw %al, %ax  
		imulw $180, %ax  
		movswl %ax,%eax	
		jmp end

	timeForDecreasing:
		subb %cl, %al 
		movsbw %al, %ax   
		imulw $240, %ax   
		movswl %ax,%eax	
		jmp end
		
	noChange:
		movl $0, %eax  
		jmp end


	end:
		ret
