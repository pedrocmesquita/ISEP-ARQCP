.section .text
.global cube


cube:
	
	movslq %edi,%rax		# x para rax
	movslq %edi, %rcx		# x para rcx	
	
	imul %rax				# rax x rax
	imul %rcx				# rax x rcx
	
	ret
