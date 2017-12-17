#include <stdio.h>
#include <stdlib.h>

int main(){
    double cel;
    double fahr;

    printf("Tabela de conversão Celsius -> Fahrenheit\n");
    printf("Digite a temperatura em Celsius: ");
    scanf("%lf", &cel);
    fahr = ((9 * cel ) + 160) / 5;
    printf(" A nova temperatura é : %lf F\n", fahr);
    return 0;
    
}