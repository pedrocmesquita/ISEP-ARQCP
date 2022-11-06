.section .data
	.global ptr1
	
.section .text
	.global decrypt
	
decrypt:

    movl $0, %eax
    movl $0, %edx
    movq ptr1(%rip), %rdx

loop:				
    movb (%rdx), %cl
    cmp $0, %cl
    jle end
    
    cmp $' ', %cl			# se for um espaco, prox char
    je inc
    
    cmp $'a', %cl			# se for um 'a', prox char
    je inc
    
    subq $3, (%rdx)
    incl %eax
   
inc:
    incq %rdx				#i++
    jmp loop
    
end:
    movl $0, %edx
    ret
