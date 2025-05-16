#include <stdio.h>


int LeNumero() {
    int numero;
    printf("insira um numero: ");
    scanf("%d", &numero);
    return numero;
}

int main() {
    int valor = LeNumero(); 
    printf("você digitou: %d\n", valor); 
    return 0;
}
