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
		write(x);
	end
	else
	begin
		write(0);
	z := z-1;
	end;
end;
end.
