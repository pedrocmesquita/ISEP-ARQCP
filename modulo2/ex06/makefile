.SUFFIXES : .o .c .s
 .c.o:
	gcc -Wall -c $<
 .s.o:
	as $< -o $*.o
mainprog: main.o asm.o
	gcc -Wall main.o asm.o -o main
	
