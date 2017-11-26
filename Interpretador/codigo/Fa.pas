{
Função: Ler uma temperatura em graus Celsius e apresentá-la
convertida
em graus Fahrenheit. A fórmula de conversão é:
F=(9*C+160) / 5,
sendo F a temperatura em Fahrenheit e C a temperatura em
Celsius.
}
program micro01;
var
	cel,far: real;
begin
writeln('Tabela de conversao: Celsius -> Fahrenheit');
writeln('Digite a temperatura em Celsius: ');
readln(cel);
far := (9.0*cel+160.0)/5.0;
writeln('A nova temperatura eh:',far,'F');
end.

