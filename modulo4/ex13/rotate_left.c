int rotate_left (int num, int nbits){

	int a;						// declarar variavel a
	a = num << nbits;			// a = num com nbits 0s para a direita
	int b;						// declarar variavel b
	b = num >> (32-nbits); 		// b = num com nbits 0s para a esquerda
	int c;						// declarar variavel c
	c = b | a;					// c = b OR a
	return c;
}
