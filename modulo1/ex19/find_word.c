#include <stdio.h>
#include "find_word.h"
#include <string.h>

char* find_word(char* word, char* initial_addr){
	 
	 
	char* found;
    /*Percorre a frase, se o carater da frase for igual ao da palavra (-32,+32 para ver maiusculas e minusculas)
guarda a posiçao usando variaveis auxiliares, prosseguindo para o proximo carater.
     * Se toda a palavra for percorrida e encontrada, retorna a posição, senão volta a posiçao de partida
     * e continua a perocrrer a frase ate encontrar o primeiro carater novamente.
     * Se nunca encontrar retorna null
     */ 
         while (*initial_addr != '\0') {
        if (*initial_addr == *(word+32) || *initial_addr == *(word-32) ||*initial_addr == *word ) {            
           char* word_aux = word;
            char* addr_aux = initial_addr;         
            found = initial_addr;
            while (((*word_aux == *(addr_aux+32))|| (*word_aux == *addr_aux)  || (*word_aux == *(addr_aux -32)))) {
                addr_aux++; 
                word_aux++;                               
                if(*word_aux == '\0'){
                    return found;
                }                       
            }           
        }      
        initial_addr++;
    }
    return NULL;
} 	
