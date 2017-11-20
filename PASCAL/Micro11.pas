program micro11 ;
var
numero : Integer ;
x : Integer ;
function Verifica( n : Integer ) : Integer ;
    var
    res : Integer ;
    begin
        if( n > 0 ) then
        res := 1
        else
        begin
        if( n < 0 ) then
        res := -1
        else
        res := 0 ;
        end ;
        Verifica:= res ;
    end ;

begin
    write(' Digite um numero :' ) ;
    readln( numero ) ;
    x := Verifica( numero ) ;
    if( x = 1 ) then
        writeln (' Numero positivo' )
    else
        begin
        if( x = 0 ) then
            writeln (' Zero' )
        else
            writeln (' Numero negativo' ) ;
        end ;
end .