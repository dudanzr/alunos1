#include <stdio.h>

extern char nome[100];
extern int idade;

void classificaAluno(char *classificacao) {
    if (idade < 18) {
        sprintf(classificacao, "Junior");
    } else {
        sprintf(classificacao, "Senior");
    }
}
