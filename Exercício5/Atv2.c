#include <stdio.h>


int LeNumero() {
    int x;
    scanf("%d", &x);
    return x;
}

void LeVetor(int *v, int N) {
    for (int i = 0; i < N; i++) {
        v[i] = LeNumero();
    }
}

int main() {
    int N;
    printf("Insira o tamanho do vetor: ");
    scanf("%d", &N);

    int vetor[N]; 
    printf("Insira %d números:\n", N);
    LeVetor(vetor, N);

    printf("Números lidos:\n");
    for (int i = 0; i < N; i++) {
        printf("%d ", vetor[i]);
    }

    return 0;
}
