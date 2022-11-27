.section .text
.global activate_bits

activate_bits:

	pushq %rbx
	
	movl $0,%eax 				
													
	movl %edx,%ebx				# ebx = edx
	movl $0,%ecx				# i = 0
		
right:
	cmpl %ecx,%ebx				# end cicle or not
	je continue

	shll %eax					# shift left
	incl %eax					# eax++

	incl %ecx					# i++
	jmp right
	
continue:
	orl %eax,%edi			 	# bits from right side stored in edi
	movl $0,%eax 			 	
	
	movl $31,%ebx			 	# ebx = 31
	subl %esi,%ebx			 	
	movl $0,%ecx			 	# i = 0
	
left:
	cmpl %ecx,%ebx				# check if cicle ends
	je end
	
	incl %eax					# eax++
	rorl %eax					# rotation to right
		
	incl %ecx					# i++
	jmp left
		
end:
	orl %edi,%eax
	
	popq %rbx

	ret
