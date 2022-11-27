.section .text
.global calculate

calculate:

	movl %esi,%ecx								# diff = a - b , tem de estar em '%ECX'
	subl %edi,%ecx
	
	movl %esi,%edx								# b, tem de estar em '%EDX'
	movl %edi,%esi								# a, tem de estar em '%ESI'
	movb $'-',%dil								# op, tem de estar em '%DIL'

	movl %ecx,%eax								# Coloca-se o resultado em '%EAX' para ser usado mais tarde
	neg %eax
	
	pushq %rdx
	pushq %rsi
	pushq %rax
						
	call print_result							# Chama-se a função salvaguardando todos os registos que serão usados depois
	
	popq %rax
	popq %rdx
	popq %rsi


	movl %edx,%ecx								# product = a * b, tem de estar em '%ECX'
	imul %esi,%ecx								

	movb $'*',%dil								# op, tem de estar em '%DIL'
	
	
	subl %ecx,%eax								# Faz-se o a diferença do produto e da soma ficando o resultado em '%EAX'
	
	pushq %rax
	call print_result
	popq %rax

	ret
