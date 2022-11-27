int activate_bits(int a, int left, int right) {
	int i;								// declarar variavel
	
	for(i = left + 1; i < 32; i++){ 	// runs through a bits until left
		a |= 1 << i;					// activates bit i if not active
	}
	
	for(i = 0; i < right; i++){			// rens through a bits until right
		a |= 1 << i;					// activates bit i if not active
	}
	
	return a;							// return a
}
