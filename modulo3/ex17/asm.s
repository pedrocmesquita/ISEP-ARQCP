.section .data
    .global ptrvec
    .global num

.section .text
    .global array_sort

array_sort:
    movq ptrvec(%rip), %rsi
    movl num(%rip), %r8d

loop:
    cmpl $0, %r8d 
    je end 							#if num is 0, return

    movq %rsi, %r9 					#ptrvec[0] p rax
    movl %r8d, %edi 

continue:
    decl %edi
    cmpl $0, %edi
    je complete 					#se edi = 0, jump p complete

    addq $2, %r9 					#proximo numero no ptrvec

    movq $0, %rdx
    movq $0, %rax					

    movw (%r9), %dx 				#ptrvec[i] p dx
    movw (%rsi), %ax				#ptrvec[i-1] p ax

    cmpw %dx, %ax 					#comparar ptrvec[0] e ptrvec[i]
    jg continue

    movw %dx, (%rsi) 				#trocar os dois de cima, se um nao for maior
    movw %ax, (%r9) 				

    jmp continue

complete:
    addq $2, %rsi 					#incrementar rsi +2
    decl %r8d 						
    jmp loop 

end:
    ret
