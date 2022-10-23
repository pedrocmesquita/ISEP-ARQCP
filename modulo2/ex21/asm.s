.section .data
	.global code, currentSalary
	
.section .text
	.global new_salary

new_salary:

	movw currentSalary(%rip),%ax	
	movw code(%rip),%cx						
	
	cmp $20,%cx						
	jz manager			
	
	cmp $21,%cx								
	jz engineer
	
	cmp $22,%cx								
	jz technician
	
	jmp allotherpositions
	
manager:
	addw $400,%ax
	jmp end
	
engineer:
	addw $300,%ax
	jmp end
	
technician:
	addw $200,%ax
	jmp end
	
allotherpositions:
	addw $150,%ax
	jmp end
	
end:
	ret
