.section .data

	.global op1 #int
	.global op2 #int

.section .text
	.global test_flags
	
test_flags:

	movl op1(%rip), %ecx          #mover valor op1 para o registro ecx
	movl op2(%rip), %eax          #mover op2 para o registro eax

	addl %ecx, %eax         #adicionar ecx com eax e mater o resultado em eax

	jc returnIfCarry        #pular para returnIfCarry caso carry seja ativado
	jo returnIfOverFlow     #pular para returnIfOverFlow caso overflow seja ativado
	movl $0, %eax			#move 0 para eax caso nem carry nem overflow seja ativado
	jmp end


	returnIfCarry:
	movl $1, %eax #move 1 para eax para retornar verdade
	jmp end

	returnIfOverFlow:
	movl $1, %eax #move 1 para eax para retornar verdadeiro
	jmp end
	end:
	ret
