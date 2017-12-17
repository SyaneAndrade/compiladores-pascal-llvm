#include <stdlib.h>
#include <stdio.h>

int main(){
    float preco;
    float venda;
    float novoPreco;

    printf("Digite o preco: ");
    scanf("%f", &preco);
    printf("Digite o a venda: ");
    scanf("%f", &venda);

    if((venda > 500) || (preco < 30)){
        novoPreco = preco + ((10.0/100.0) * 100.0);
    }
    else{
        if(((venda >= 500) && (venda <= 1200)) || ((preco >= 30) && (preco <= 80))){
            novoPreco = preco - ((20.0 / 100.0) * 100.0);
        }
    }

    printf("O novo preco é %f\n", novoPreco);
}