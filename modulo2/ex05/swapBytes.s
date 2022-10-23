.section .data
.global s

.section .text
.global swapBytes
swapBytes:
movw s(%rip), %cx 
movb %ch, %al
addb %ch, %al
movb %cl, %ah 
ret
