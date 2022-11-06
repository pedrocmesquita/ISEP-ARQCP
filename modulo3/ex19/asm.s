.section .data
    .global ptrfreq
    .global ptrgrades
    .global num

.section .text
    .global frequencies

frequencies:
    movq ptrgrades(%rip), %rsi
    movq ptrfreq(%rip), %rdi
    movq %rdi, %rax 
    movl num(%rip), %r8d 
    movl $21, %r9d

set_array_to_zero:
    cmpl $0, %r9d
    je count_grades						# se r9d = 0, jump p count_grades
    
    movl $0, (%rax)
    addq $4, %rax 						#ptrfreq++
    decl %r9d 							#num--
    jmp set_array_to_zero

count_grades:
    cmpl $0, %r8d
    je end

    movq $0, %rax 
    movb (%rsi), %al
    movq $0, %r9 
    incl (%rdi, %rax, 4)
    addq $1, %rsi 						#ptrgrades++
    decl %r8d 							#num--
    jmp count_grades

end:
    ret
        
