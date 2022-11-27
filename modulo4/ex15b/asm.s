.section .text
.global activate_bits

activate_bits:

	pushq %rbx
	
	movl $0,%eax 				
													
	movl %edx,%ebx				# ebx = edx
	movl $0,%ecx				# i = 0
		
rightSide:
	cmpl %ecx,%ebx				# end cicle or not
	je continuation

	shll %eax					# shift left
	incl %eax					# eax++

	incl %ecx					# i++
	jmp rightSide
	
continuation:
	orl %eax,%edi			 	# bits from right side stored in edi
	movl $0,%eax 			 	
	
	movl $31,%ebx			 	# ebx = 31
	subl %esi,%ebx			 	
	movl $0,%ecx			 	# i = 0
	
leftSide:
	cmpl %ecx,%ebx				# check if cicle ends
	je end
	
	incl %eax					# eax++
	rorl %eax					# rotation to right
		
	incl %ecx					# i++
	jmp leftSide
		
end:
	orl %edi,%eax
	
	popq %rbx

	ret
