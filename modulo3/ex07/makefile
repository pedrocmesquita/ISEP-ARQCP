ex07: asm.o asm1.o main.o
	gcc -g -Wall asm.o asm1.o main.o -o ex07
	
asm.o: asm.s
	gcc -g -Wall -c asm.s -o asm.o
	
asm1.o: asm1.s
	gcc -g -Wall -c asm1.s -o asm1.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex07

run: ex07
	./ex07
