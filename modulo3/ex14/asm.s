.section .data
	
	.global x
	.global num		
	.global ptrvec	

.section .text
	.global exists 
	exists:
		mov ptrvec(%rip), %rdi	
		mov num(%rip), %ecx		
		mov x(%rip), %edx		
		
		mov $0, %eax	
		cmp $0, %ecx	
		jle end
		
		
	loop:
		cmp %edx, (%rdi)	
		jne not_found
		inc %eax	
		
	not_found:
		addq $4, %rdi	
		dec %ecx		
		
		cmp $0, %ecx	
		jg loop			
		
		jmp check
		
	check:
		cmp $1, %eax
		jle ret0	
		
		mov $1, %eax
		jmp end
		
	ret0:
		mov $0, %eax
		jmp end
		
		
	.global vec_diff 
	vec_diff:
		mov ptrvec(%rip), %rdi	
		mov num(%rip), %ecx		
		lea x(%rip), %rsi		
		
		mov $0, %eax	
		
		cmp $0, %ecx	
		jle end
		
		
	loop2:
		mov (%rdi), %edx	
		mov %edx, (%rsi)
		
		push %rax
		push %rdi
		push %rcx
		call exists	
		pop %rcx
		pop %rdi
		
		cmp $0, %eax
		pop %rax
		jne cont	
		
		inc %eax	
		
	cont:
		
		addq $4, %rdi	
		dec %ecx		
		
		cmp $0, %ecx	
		jg loop2		
		
	end:
		ret
