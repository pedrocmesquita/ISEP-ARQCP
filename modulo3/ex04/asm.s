.section .data
    
    .global ptrvec    #int pointer
    .global num        #int

.section .text

    .global vec_add_two #void vec_add_two()

    #Implement a function void vec_add_two(void) that adds two (2) to all the elements of an array of type int,
    #with int num elements and pointed by ptrvec.

    vec_add_two:
        movq ptrvec(%rip), %rdi    #array pointer
        movl num(%rip), %ecx    #array size
        
        cmpl $0, %ecx    #validate size
        je end
        
    loop:
        addl $2,(%rdi)    #add 2 to the number
        addq $4, %rdi    #increment the pointer (4 bytes for int)
        decl %ecx        #decrement the size number (used to check number of elements left in array)
        
        cmpl $0, %ecx    #check if its the end of the array
        jg loop            #jumps if the number of elements left is below or equal to 0
        
    end:
        ret
