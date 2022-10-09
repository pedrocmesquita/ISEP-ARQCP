#include <stdio.h>
#include "compress_shorts.h"

void compress_shorts(short* shorts, int n_shorts, int* integers){
	int i;
	
	short *aux = (short *) integers;
	
	for(i=0; i < n_shorts; i++){			// Como int tem o dobro do numero de bytes de um short, 2 shorts convertem-se para 1 int
		(*(aux+i)) = (*(shorts+i));
	}
}
