program ifandwhile;
var
    x,y,z : integer;
begin
x := 1;
y := 2;
z := 5;
while (z > x) do
begin
	if (x = y) then
	begin
		writeln(x);
	end
	else
	begin
		writeln(0);
	z := z-1;
	end;
end;
end.
