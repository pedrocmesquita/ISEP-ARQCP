INCLUDES = asm.h
SOURCES = asm.s main.c
OBJFILES = asm.o main.o
EXEC = ex01
.SUFFIXES : .c .o
.SUFFIXES : .s .o
.c.o:
	gcc -Wall -g -c $<
.s.o:
	gcc -Wall -g -c $<	
	
${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}
	
${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}
	
clean:
	rm -f ${OBJFILES} ${EXEC}

debug: ${EXEC}
	ddd ${EXEC} &	

