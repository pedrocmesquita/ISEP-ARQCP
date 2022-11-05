.SUFFIXES : .o .c .s
 .c.o:
	gcc -Wall -c $<
 .s.o:
	as $< -o $.o
main: main.o asm.o
	gcc -Wall main.o asm.o -o main 
run: main
	./main
clean:
	rm.o main 
