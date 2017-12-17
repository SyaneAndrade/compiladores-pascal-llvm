program micro09;

var 
preco, venda, novo_preco: real;

begin
    write('Digite o preco: ');
    readln(preco);
    write('Digite a venda: ');
    readln(venda);

    if (venda > 500) or (preco < 30) then
    begin
        novo_preco := preco + ((10 / 100) * 100);
    end
    else
    begin
        if ((venda >= 500) and (venda <= 1200)) or ((preco >= 30) and (preco < 80)) then
        begin
            novo_preco := preco - ((20 / 100) * 100);
        end;
    end;
    write('O novo preco e, ');
    writeln(novo_preco);
end.