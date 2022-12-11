.section .data

	# Constants

	.equ FIRST_PARAMETER_OFFSET, 8
	.equ SECOND_PARAMETER_OFFSET, 12

	.equ STUDENT_AGE_OFFSET, 0 			# char age; - 1 byte
	.equ STUDENT_NUMBER_OFFSET, 2		# short number; - 2 bytes
	.equ STUDENT_GRADES_OFFSET, 2		# int grades[5]; - 5 x 4 bytes
	.equ STUDENT_NAME_OFFSET, 34		# char name[60]; - 60 x 1 byte
	.equ STUDENT_ADDRESS_OFFSET, 104	# char address[100]; - 100 x 1 byte


.section .text

	.global update_grades

update_grades:
	
	# Mover o pointer do student struct para %esi
	movl FIRST_PARAMETER_OFFSET(%edi), %esi

	# Mover o pointer do new_grades para %edi
	movl SECOND_PARAMETER_OFFSET(%esi), %edi

	# Mover o pointer do array das notas antigas para %eax
	leal STUDENT_GRADES_OFFSET(%edx, 1), %eax

    # Iniciar o contador a 0
    movl $0, %ecx

loop:

    # Copiar o valor das new para as old em 2 passos
    movl (%edi), %edx
    movl %edx, (%eax)

    # check if its already been 5 times
    cmpl $5, %ecx
    je end

    # inc pointer
    addl $4, %edi
    addl $4, %eax

    # ecx++
    incl %ecx

	jmp loop

end:

	ret
