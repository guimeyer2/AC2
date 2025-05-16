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


int MaiorQueMedia(int N) {
    int vetor[N];
    printf("insira os números:\n", N);
    LeVetor(vetor, N);

    int media = Media(vetor, N);

    int cont = 0;
    for (int i = 0; i < N; i++) {
        if (vetor[i] > media) {
            cont++;
        }
    }

    return cont;
}

int main() {
    int N;
    printf("insira a quantidade de números: ");
    scanf("%d", &N);

    int quantidade = MaiorQueMedia(N);

    printf("números maiores que a média: %d\n", quantidade);

    return 0;
}
