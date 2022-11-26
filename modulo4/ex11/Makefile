
prog: main.o asm.o callproc.o   
	gcc   -Wall -g main.o asm.o callproc.o  -o prog

callproc.o : callproc.s 
	gcc  -Wall -g -c  callproc.s -o callproc.o
	
asm.o : asm.s 
	gcc  -Wall -g -c  asm.s -o asm.o
	
main.o : main.c 
	gcc   -Wall -g -c main.c -o main.o	

run:  prog 
	./prog 

vg:  prog 
	valgrind ./prog 

clean: 
	rm -f prog *.o 	
