program micro10 ;
var
numero : Integer;
fat: Integer;
function Fatorial( numero : Integer) : Integer;
    begin
        if( numero <= 0 ) then
        Fatorial:= 1
        else
        Fatorial:= numero * Fatorial( numero - 1);
    end ;

begin
    write( ' Digite um numero : ' ) ;
    readln( numero ) ;
    fat:= Fatorial( numero ) ;
    write( 'O Fatorialde ' ) ;
    write( numero ) ;
    write( ' e ' ) ;
    writeln( fat) ;
end .