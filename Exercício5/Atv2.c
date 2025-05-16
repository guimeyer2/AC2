#include <stdio.h>

// Simula a função fornecida anteriormente
int LeNumero() {
    int x;
    scanf("%d", &x);
    return x;
}

// Função que lê N números e preenche o vetor
void LeVetor(int *v, int N) {
    for (int i = 0; i < N; i++) {
        v[i] = LeNumero();
    }
}

int main() {
    int N;
    printf("Digite o tamanho do vetor: ");
    scanf("%d", &N);

    int vetor[N]; // Vetor com tamanho fornecido
    printf("Digite %d números:\n", N);
    LeVetor(vetor, N);

    printf("Números lidos:\n");
    for (int i = 0; i < N; i++) {
        printf("%d ", vetor[i]);
    }

    return 0;
}
