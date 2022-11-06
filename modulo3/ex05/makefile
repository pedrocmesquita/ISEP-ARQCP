
output: vec_avg.o asm.o main.o 
	gcc -Wall -g vec_avg.o asm.o main.o -o output

asm.o: asm.s
	gcc -Wall -g -c asm.s

asm1.o: vec_avg.s
	gcc -Wall -g -c vec_avg.s
	
main.o: main.c	
	gcc -g -Wall -c main.c -o main.o
	
clear:
	rm -f *.o output
	
run: output
	./output
