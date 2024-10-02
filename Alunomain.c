#include <stdio.h>

void valida_nome();
void valida_idade();
void classificaAluno(char *classificacao);
void gravarAluno(const char *classificacao);

int main() {
    char classificacao[20];

    valida_nome();
    valida_idade();
    classificaAluno(classificacao);
    persisteAluno(classificacao);

    return 0;
}
