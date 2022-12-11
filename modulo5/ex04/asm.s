.section .data
	.equ OFFSET,84
.section .text
	.global update_address


update_address:
	#prologo
	pushq %rbp
	movq %rsp,%rbp

	movq %rdi,%r10  #*s
	movq %rsi, %r11 #*new_address

	addq $84, %r10 #para colocar o apontador no ínico do array address da estrutura

	loop:
		movb (%r11),%cl
		movb %cl,(%r10)

		cmpb $0, (%r10) #verifica se address já acabou
		je end

		movb (%r11),%cl
		movb %cl, (%r10)

		incq %r11
		incq %r10

		jmp loop

end:
	#epilogo
	movq %rbp,%rsp
	popq %rbp

	ret
