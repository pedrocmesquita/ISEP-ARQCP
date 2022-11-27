.section .text
.global greater_date

greater_date:

	movl %edi,%ecx				# date1
	movl %esi,%edx				# date2
	
	shrl $8,%ecx				# 1 byte to the right
	shrl $8,%edx				# 1 byte to the right
	
	cmpw %dx,%cx				# ano1>ano2 verif
	jg date1			
	
	cmpw %cx,%dx				# ano2>ano1 verif
	jg date2
	
	movl %edi,%ecx				# date1
	movl %esi,%edx				# date2
	
	shrl $24,%ecx				# 3 bytes to the right
	shrl $24,%edx				# 3 bytes to the right
	
	cmpb %dl,%cl				# month1>month2 verif
	jg date1
	
	cmpb %cl,%dl				# month2>month1 verif
	jg date2
	
	movl %edi,%ecx				# date1
	movl %esi,%edx				# date2
	
	cmpb %dl,%cl				# day1>day2 verif
	jg date1
	
	cmpb %cl,%dl				# day2>day2 verif
	jg date2
		
date1:							# if date 1 is greater
	movl %edi,%eax
	jmp end
	
date2:							# if date 2 is greater
	movl %esi,%eax
	jmp end
	
end:
	ret
