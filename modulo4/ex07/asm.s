.section .text
    .global count_odd
    .equ two, 2

count_odd:
    pushq %rbx			 

    movl $0, %ecx 			
    movb $2, %bl 			

myloop:
    cmpl $0, %esi 			# check if size = 0
    je end 					# if so, end
        
    movb (%rdi), %al 

    cbw
    idivb %bl			 	# divide by 2

    cmpb $0, %ah			# compare rest to 0
    jne odd 				# if not 0, the number is odd
    je even 				# if 0, the number is even

odd:
    incl %ecx 				# counter++
        
    incq %rdi 				# pointer++
    decl %esi 				# size--

    jmp myloop 				# loop

even:
        
    incq %rdi 				# pointer++
    decl %esi 				# size--

    jmp myloop				# loop

end:
    movl $0, %eax 			# eax = 0
    movl %ecx, %eax 		# return counter
    popq %rbx 				
    
    ret
