.section .text
.global add_byte


add_byte:

	pushq %rbx

	movl (%rsi),%ecx				# size = vec1[0]
	movl %ecx,(%rdx)				# vec2[0] = size
	movq $1,%rax					# i = 1
	

loop:
	cmpl %eax,%ecx
	jl end
	
	movl (%rsi,%rax,4),%ebx		   # ebx = vec1[i]
	
	pushq %rax
	movb %bl,%al				   # least significant byte to al
	addb %dil,%al				   # al = al + x
	movb %al,%bl
	popq %rax
	
	movl %ebx,(%rdx,%rax,4)
	
	incl %eax					  # i++
	jmp loop

end:
	popq %rbx
ret
