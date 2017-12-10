{testando comentário de forma diferente dando erro}

{erro de bloco


asdasdas
}

//TESTANDO
program micro09;
var
preco,venda,novo_preco : real;

begin
	write('Digite o preco: ');
	readln(preco);
	write('Digite a venda: ');
	readln(venda);
	if(venda < 500.0) or (preco < 30.0) then
	begin
		novo_preco := preco + 10.0/100.0 * preco;
	end
	else
	begin
		if (((venda >= 500.0) and (venda < 1200.0)) or ((preco >= 30.0) and (preco < 80.0))) then
		begin
			novo_preco := preco + 15.0/100.0*preco;
		end
		else
		begin
			if (venda >= 1200.0) or (preco >= 80.0) then
			begin
				novo_preco := preco - 20.0/100.0*preco;
			end
		end;
	end;
	writeln('O novo preco eh', novo_preco);
end.
