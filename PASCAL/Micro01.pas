program micro01 ;
Var cel , fahr : real;
begin
    writeln('Tabela de conversao Celsius -> Fahrenheit ');
    write('Digite a temperatura em Celsius : ');
    readln(cel);
    fahr := (9 * cel + 160 ) / 5;
    write('A nova temperatura e: ');
    write(fahr) ;
    writeln(' F ') ;
end.