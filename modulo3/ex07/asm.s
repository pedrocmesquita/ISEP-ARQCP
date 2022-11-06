.section .data

    .global ptr1

.section .text
    .global encrypt
    # EXERCICIO IGUAL AO EX06
encrypt:	

    movl $0, %eax
    movl $0, %edx
    movq ptr1(%rip), %rdx

loop:
    movb (%rdx), %cl
    cmp $0, %cl
    jle end
    
    cmp $' ', %cl
    je inc
    
    cmp $'a', %cl
    je inc
    
    addq $3, (%rdx)
    incl %eax
   
inc:
    incq %rdx
    jmp loop
    
end:
    movl $0, %edx
    ret
