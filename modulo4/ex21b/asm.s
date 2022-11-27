.section .text
    .global distance

distance:
	
	movq $0, %r9
	movq $0, %r8 
	movq $0, %r11
    movq $0, %r10
    movq $0, %rax
    movq $0, %rcx
    movq $0, %rdx

string_1:
    movb (%rdi), %cl 

    cmpb $0, %cl 		
    je string_2 		

    incq %r11 			
    incq %rdi 			
    jmp string_1 		

string_2:
    movb (%rsi), %dl 	

    cmpb $0, %dl 		
    je loop 			

    incq %r10 			
    incq %rsi 			
    jmp string_2 		

loop:
    cmpq %r11, %r10 	
    jne not_equal

    cmpq %r11, %r8
    je continue

    decq %rdi
    decq %rsi
    incq %r8
    jmp loop

continue:
    movq $0, %r8
    jmp comparar

comparar:
    cmpq %r11, %r8
    je end

    movb (%rdi,%r8,1), %cl
    movb (%rsi,%r8,1), %dl

    cmpb %cl, %dl
    je same

    incl %eax
    incq %r8
    jmp comparar

same:
    incq %r8
    jmp comparar

not_equal:
    movl $-1, %eax
    jmp end

end:
	
    ret
