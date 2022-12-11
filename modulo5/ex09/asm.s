 .section .data
    .equ STRUCT_A_X_OFFSET, 4 
    .equ STRUCT_B_AX_OFFSET, 4
    .equ STRUCT_B_B_OFFSET, 8
    .equ STRUCT_B_Z_OFFSET, 20 

.section .text
    .global fun1 # short fun1(structB *s)
    .global fun2 # short fun2(structB *s)
    .global fun3 # short* fun3(structB *s)
    .global fun4 # short fun4(structB *s)
    
fun1:
    movq STRUCT_B_AX_OFFSET(%rdi), %rax
    jmp end 

fun2:
    movq STRUCT_B_Z_OFFSET(%rdi), %rax
    jmp end

fun3:
    leaq STRUCT_B_Z_OFFSET(%rdi), %rax 
    jmp end 

fun4:
    movq %rdi, %rdx 
    movq STRUCT_B_B_OFFSET(%rdi), %rdx 
    movq (%rdx), %rcx 
    movq STRUCT_A_X_OFFSET(%rdx), %rax 
    jmp end 
end:
    ret
