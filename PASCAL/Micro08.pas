program micro08 ;
var numero : Integer;
begin
    numero := 1 ;
    while( numero <> 0 ) do
    begin
        write( ' Digite um numero : ' ) ;
        readln( numero ) ;
        if( numero > 10 ) then
        begin
            write( 'O numero , ' ) ;
            write( numero ) ;
            writeln( ' e maior que 10. ' ) ;
            end
            else
            begin
                write( 'O numero , ' ) ;
                write( numero ) ;
                writeln( ' e menor que 10' ) ;
        end ;
    end ;
end .