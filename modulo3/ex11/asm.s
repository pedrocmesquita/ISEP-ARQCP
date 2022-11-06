.section .data 
    .global num    
    .global ptrvec

.section .text
    .global vec_greater10

vec_greater10:
        movq ptrvec(%rip), %rdi   
        mov num(%rip), %ecx       
        
        mov $0, %eax    
        
        cmp $0, %ecx    
        je end
        
        
loop:
        cmp $10, (%rdi)    
        jle lower   
        
        inc %eax    
        
lower:
        addq $4, %rdi    
        dec %ecx        
        
        cmp $0, %ecx    
        jg loop        
        
end:
        ret
