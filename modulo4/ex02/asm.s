.section .text
    .global sum_n2
sum_n2:
    movq $0, %rcx
    movq $1, %rax
    movq $1, %r8
    movslq %edi, %rdi
    cmpq %rcx, %rdi
    jle end
loop:
    movq %r8, %rax
    mul %rax
    addq %rax, %rcx
    cmpq %r8, %rdi
    je end
    incq %r8
    jmp loop
end:
    movq %rcx, %rax
    ret
