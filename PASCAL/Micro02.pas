program micro02;

var num1, num2: Integer;

begin
    write('Digite o primeiro numero: ');
    readln(num1);
    write('Digite o segundo numero: ');
    readln(num2);
    if (num1 > num2) then
        begin
            write('O primeiro numero, ');
            write(num1);
            write(' e maior que o segundo numero, ');
            writeln(num2);
        end
    else
        begin
            write('O segundo numero, ');
            write(num2);
            write(' e maior que o primeiro numero, ');
            writeln(num2);
        end;
end.