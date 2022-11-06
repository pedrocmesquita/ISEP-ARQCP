.section .data 
    .global ptrvec            #int*
    .global num                #int 

.section .text
    .global vec_zero

vec_zero:
    movl $0, %eax
    movl $0, %ecx
    movl $0, %edx
 
    movq ptrvec(%rip), %rdi
    movl num(%rip), %ecx

start:
    cmp $0, %ecx
    jle end

    cmp $100, (%rdi)
    jge zero


    decl %ecx
    jmp start 

zero:
    movl $0, (%rdi)
    incl %eax
    addq $4, %rdi
    decl %ecx
    jmp start 

end:
    ret
