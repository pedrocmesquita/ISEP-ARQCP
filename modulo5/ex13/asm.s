.section .data
	
.section .text
	.global count_odd_matrix 


count_odd_matrix:

	movl 8(% ebp), %edi        
	movl 12(% ebp), %ecx
	movl 16(% ebp), %ebx
	
	movl $0, %esi
	movl $0, %edx
	movl $0, %eax
	
	run_matrix_1:
		cmpl %esi, %ecx
		je end
		leal (%edi, %esi, 4), %eax
		movl $0, %edx
		pushl %edi
		run_matrix_2:
			cmpl %edx, %ebx
			je continue_1
			
			leal (%eax, %edx, 4), %edi
			pushl %eax
			movl (%edi), %eax
			
			
			
			andl $1, %eax
			cmpl $1, %eax
			
			jne continue 
			
			popl %edi
			
			popl %eax
			
			incl %eax
			pushl %eax
			
			continue: 
				incl %edx
				popl %edi
				popl %eax
				
				jmp run_matrix_2
			
			continue_1:
			incl %esi
			jmp run_matrix_1


	end:
	
	ret
