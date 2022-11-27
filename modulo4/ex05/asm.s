.section .text
.global inc_and_square

inc_and_square:
 
	incl (%rdi)				# rdi++
	
	movl %esi,%eax			# eax = x2
	imul %esi,%eax			# eax = v2²
	
		
	ret
