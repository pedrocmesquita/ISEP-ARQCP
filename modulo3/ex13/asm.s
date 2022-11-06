.section .data 
    .global num    
    .global ptrvec

.section .text
    .global keep_positives
    
    keep_positives:
        mov num(%rip), %cx
        cmp $0, %cx							#se for array nulo, acaba	
        je end
        movq ptrvec(%rip), %rdi   			
        mov $0, %al
        
    loop:
        cmpw $0, (%rdi)   					#comparar a 0
        jl negative       					#se for negativo, jump
        jmp cont
        
    negative:
        movzbw %al, %dx
        mov %dx, (%rdi)    					#de numero negativo p o seu indice
    
    cont:
        inc %al       						#contador
        addq $2, %rdi    					#prox numero do array
        
        movzbw %al, %dx
        cmp %dx, %cx    					#ver se array acaba
        jg loop            					#continuar loop
        
    end:
        ret
