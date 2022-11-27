void add_byte(char x, int *vec1, int *vec2){

	int size = *vec1;	
    *vec2 = size;
    int i;

    for (i = 1; i <= size; i++) {

       *(vec2 + i) = *(vec1 + i);						// vec2 = vec1
       char tempByte = (char)*(vec2 + i);				// least significant byte of vec2
       tempByte += x;									// tempbyte = tempbyte + x

       int mask = 0xFFFFFF00;							// clean first byte

       *(vec2 + i) &= mask;								// clean first byte
       *(vec2 + i) |= tempByte;							// add tempbyte to number's byte
   }

}
