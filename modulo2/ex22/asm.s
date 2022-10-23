.section .data
	.global i, j
	
.section .text

	.global f, f2, f3, f4
	
f:

	movl i(%rip), %eax		# registar variaveis
	movl j(%rip), %ecx
	cmp j(%rip), %eax		# compara las
	je iff					# se j=i, jump to iff
	
	addl %ecx, %eax			# else continua o programa
	subl $1, %eax			# nao ha mais comentarios porque e o mesmo para todos os exercicios
	
	jmp end
	
iff:
	subl j(%rip), %eax
	addl $1, %eax
	jmp end
	
f2:
	
	movl i(%rip), %eax
	movl j(%rip), %ecx
	cmp %ecx, %eax
	jg iff2					#se i>j, jump to iff2
	
	movl j(%rip), %eax
	movl i(%rip), %ecx
	addl $1, %eax
	imull %ecx, %eax
	jmp end
	
iff2:
	subl $1, %eax
	imull %ecx, %eax
	jmp end

f3:
	movl i(%rip), %eax
	movl j(%rip), %ecx
	cmp %eax, %ecx
	jge iff3				# se i>=j, jump to iff3
	
	addl %ecx, %eax
	addl $2, %eax
	addl %eax, %ecx
	idivl %ecx
	jmp end
	
iff3:
	addl $1, %eax
	movl j(%rip), %ecx
	imull i(%rip), %ecx
	idivl %ecx
	jmp end
	
f4:
	movl i(%rip), %eax
	movl j(%rip), %ecx
	addl %ecx, %eax
	cmp $10, %eax
	jl iff4						# se i+j<10, jump to iff4
	
	movl j(%rip), %eax
	imull j(%rip), %eax
	movl $3, %ecx
	idiv %ecx
	
	jmp end
	
iff4:
	
	movl i(%rip), %eax
	imull %eax, %eax
	imull $4, %eax
	jmp end
	
end:
	ret
