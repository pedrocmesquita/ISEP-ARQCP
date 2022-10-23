.section .data
	.global byte1
	.global byte2

.section .text
	.global concatBytes # short int concatBytes(void)


concatBytes:
movb byte1(%rip), %al	# moves byte1 to al
movb byte2(%rip), %ah	# moves byte2 to ah
ret
