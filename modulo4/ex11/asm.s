.section .data
   
.section .text
    .global proc 
    
proc:
        push %rbp                   
        movq %rsp, %rbp  
        movl %edi,(%rsi) 
        addl %edx,(%rsi)
        movl %edx,(%rcx)
        subl %edi,(%rcx)
        movswl %r8w,%r8d
        movl %r8d,(%r9)
        addl  %edx,(%r9)
        movq 16(%rsp),%r10
        movq 24(%rsp),%r11
        imulq $3,%r11
        movb %r11b,(%r10)
        push %r10

        movq %rbp, %rsp              
        pop %rbp 
        ret
