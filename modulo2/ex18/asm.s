.section .data
A:
	.int 4
B:
	.int 2
	
	.global A
	.global B
	.global n
	.global i
	
.section .text

.global sum			#int somatorio(void)

sum:
	
	movl A(%rip), %eax            				
	imull %eax, %eax        					#A^2
	movl B(%rip), %ecx            				
	idivl %ecx             						#A^2 / B
	movl %eax, %esi         					

	movl $0, %edx 
    movl n(%rip), %edx           				

	movl i(%rip), %ebx           				
	movl $0, %ecx          						
	
loop:
	
	movl %ebx, %eax         					
	imull %eax, %eax        					
	imull %esi, %eax       						#A^2 / B * i^2
	addl %eax, %ecx         					
	
	cmpl %edx, %ebx        						#compara n com i , se igual, acaba o programa
	je end                 						
	incl %ebx               					#i++
	jmp loop
	
end:
	movl %ecx, %eax         
	ret
