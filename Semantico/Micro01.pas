program micro01;
var 
    cel,fahr : real;
begin
    writeln('Tabela de conversao Celsius -> Fahrenheit ');
    write('Digite a temperatura em Celsius : ');
    readln(cel);
    fahr := (9.0 * cel + 160.0 ) / 5.0;
    write('A nova temperatura e: ');
    write(fahr);
    writeln(' F ');
end.