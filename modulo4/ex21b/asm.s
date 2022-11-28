.section .text
    .global distance

distance:					# runs through string1 and string2, if its the same just increment 
	
	movq $0, %r9
	movq $0, %r8 
	movq $0, %r11
    movq $0, %r10
    movq $0, %rax
    movq $0, %rcx
    movq $0, %rdx

string_1:
    movb (%rdi), %cl 		# load first byte of the string

    cmpb $0, %cl 			# check if its empty
    je string_2 		

    incq %r11 				# lenght++
    incq %rdi 				# next byte
    jmp string_1 			

string_2:					# same as last one
    movb (%rsi), %dl 		

    cmpb $0, %dl 			
    je loop 			

    incq %r10 			
    incq %rsi 			
    jmp string_2 		

loop:
    cmpq %r11, %r10 		# compare lenghts of both strings
    jne not_equal

    cmpq %r11, %r8			# compare lenghts of both strings
    je continue

    decq %rdi				#rdi--
    decq %rsi				#rsi--
    incq %r8
    jmp loop

continue:
    movq $0, %r8			# next char
    jmp comparar

comparar:
    cmpq %r11, %r8			# compare chars
    je end

    movb (%rdi,%r8,1), %cl
    movb (%rsi,%r8,1), %dl

    cmpb %cl, %dl
    je same

    incl %eax				#eax++
    incq %r8				#r8++
    jmp comparar

same:
    incq %r8				#r8++
    jmp comparar

not_equal:
    movl $-1, %eax
    jmp end

end:
	
    ret
