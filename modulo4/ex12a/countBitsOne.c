int count_bits_one(int x){
       int contagem = 0;

    for(int i = 0; i<32; i++){
        int bit = x >> i;
        int resultado = bit & 1;

        if(resultado == 1)
            contagem++;
    }

    return contagem;
}
