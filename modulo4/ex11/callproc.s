.section .data
   
.section .text

    .global call_proc
    
call_proc:
        push %rbp                   
        movq %rsp, %rbp  
        subq $32,%rsp    
        movq %rdi, -8(%rbp) 
        movq %rsi, -16(%rbp)
        movq %rdx, -24(%rbp)
        movq %rcx, -32(%rbp)
        push %rcx
        leaq -32(%rbp),%rcx 
        push %rcx
        movq %rdx,%r8
        movq %rsi,%rdx
        leaq -8(%rbp),%rsi
        leaq -16(%rbp),%rcx
        leaq -24(%rbp),%r9

        call proc
          
        movq  (%rsi),%rax
        addq  (%rcx),%rax
        movq  (%r9),%r8
        pop %r10
        subq (%r10),%r8
        cdq
        imulq %r8,%rax
        movq %rbp, %rsp   
        pop %rbp 
        ret
