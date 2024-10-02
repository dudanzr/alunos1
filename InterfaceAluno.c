#include <stdio.h>
#include <ctype.h>

char nome[100];
int idade;

void valida_nome() {
    int validoNome = 0;

    while (!validoNome) {
        printf("Digite seu nome: ");
        fgets(nome, sizeof(nome), stdin);
        validoNome = 1;
        for (int i = 0; nome[i] != '\0' && nome[i] != '\n'; i++) {
            if (!isalpha(nome[i]) && nome[i] != ' ') {
                validoNome = 0;
                printf("Entrada invalida. Por favor, digite apenas letras.\n");
                break;
            }
        }
    }
}

void valida_idade() {
    int validoIdade = 0;
    char c;

    while (!validoIdade) {
        printf("Digite sua idade: ");
        if (scanf("%d", &idade) == 1) {
            validoIdade = 1;
        } else {
            printf("Entrada invalida. Por favor, digite apenas numeros inteiros.\n");
        }
    }
}
