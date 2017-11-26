{
algoritmo "micro04"
Função: Ler 5 números e ao final informar quantos número(s)
est(á)ão no intervalo entre 10 (inclusive) e 150 (inclusive).
}
program micro04;
var
	x,num,intervalo: integer;
begin
x := 1;
intervalo := 0;
while (x<=5) do
begin
	write('Digite um numero: ');
	readln(num);
	if (num >= 10) then
		begin
		if(num <= 150) then
		begin
			intervalo := intervalo + 1;
		end
	end
x := x+1;
end;
writeln('Ao total, foram digitados', intervalo, ' numeros no intervalo entre 10 e 150');
end.
