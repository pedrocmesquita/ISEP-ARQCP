.section .data
	.equ COFFSET, 0
	.equ WOFFSET, 4
	.equ JOFFSET, 12
.section .text
	.global fill_s2

fill_s2:
	#prologo
	pushq %rbp
	movq %rsp,%rbp

	pushq %rbx
char:
		movl $0,%ebx 			#contador para os vetores
		leaq COFFSET(%rdi), %r10	#r10 = *s2->c

char_loop:
			cmpl $3,%ebx
			je align1

			movb (%rcx),%r11b
			movb %r11b,(%r10)		# *s2->c[i] = vc[i]

			incq %r10	#avança  em c
			incq %rcx		#avança  em vc
			incq %rbx

			jmp char_loop

align1: #existe para retficar o alinhamento do pointer
		movl $0,%ebx
		leaq WOFFSET(%rdi),%r10		# r10= *s2
		jmp short_loop

short_loop:
		cmpl $3,%ebx
		je align2

		movw (%rsi),%cx
		movw %cx,(%r10)			# *s2 ->w[i] = vw[i]

		addq $2,%r10			#avança em w
		addq $2,%rsi			#avança em vw
		incq %rbx

		jmp short_loop

align2:
		leaq JOFFSET(%rdi), %r10	#r10 = *s2->j
int:
		movl %edx,(%r10)		#*s2->j = vj
		jmp end

end:
	popq %rbx

	#epilogo
	movq %rbp,%rsp
	popq %rbp

	ret
