#include <stdio.h>
#include <stdlib.h>

extern char nome[100];
extern int idade;

void persisteAluno(const char *classificacao) {
    FILE *arquivo = fopen("aluno.txt", "a");  // Mudado para aluno.txt
    if (arquivo == NULL) {
        printf("Erro ao abrir o arquivo!\n");
        return;
    }

    fprintf(arquivo, "Nome: %s\nIdade: %d\nClassificação: %s\n\n", nome, idade, classificacao);

    fclose(arquivo);
    printf("Aluno gravado com sucesso!\n");
}
