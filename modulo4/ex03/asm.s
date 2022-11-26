.section .data


.section .text
	.global greatest
	
greatest:
	
	compare_a_b:
	cmpl %esi, %edi
	jge compare_a_c
	jmp compare_b_c

	compare_a_c:
	cmpl %edx, %edi
	jge compare_a_d
	jmp compare_c_d
	
	compare_a_d:
	cmpl %ecx, %edi
	jge greater_a
	jmp greater_d

	compare_b_c:
	cmpl %edx, %esi
	jge compare_b_d
	jmp compare_c_d
	
	compare_b_d:
	cmpl %ecx, %esi
	jge greater_b
	jmp greater_d
	
	compare_c_d:
	cmpl %ecx, %edx
	jge greater_c
	jmp greater_d
	
	
	greater_a:
	movl %edi, %eax
	jmp end

	greater_b:
	movl %esi, %eax
	jmp end

	greater_c:
	movl %edx, %eax
	jmp end
	
	greater_d:
	movl %ecx, %eax
	jmp end
	
end:

	ret	
