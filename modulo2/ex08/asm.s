.section .data
	s1:
		.short 33	
	s2:						
		.short 22
	
	.global s1
	.global s2
	
.section .text
	.global  crossSumBytes

crossSumBytes:
movw s1(%rip), %ax 
movw s2(%rip), %cx 
addb %ch, %al 
addb %cl, %ah  
ret
