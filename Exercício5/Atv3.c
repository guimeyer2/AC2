#include <stdio.h>

int LeNumero() {
    int num;
    scanf("%d", &num);
    return num;
}

void LeVetor(int *v, int N) {
    for (int i = 0; i < N; i++) {
        v[i] = LeNumero();
    }
}


int Media(int *v, int N) {
    int soma = 0;
    for (int i = 0; i < N; i++) {
        soma += v[i];
    }
    return soma / N; 
}

int main() {
    int N;
    printf("Tamanho do vetor: ");
    scanf("%d", &N);

    int vetor[N];
    printf("Insira os números");
    LeVetor(vetor, N);

    int media = Media(vetor, N);
    printf("Média %d\n", media);

    return 0;
}
