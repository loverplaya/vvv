program one;
var N,P,a: integer;
begin
readln(N);
P := 1;
while N<>0 do
  begin
  a := N mod 10;
  P := P*a;
  N := N div 10;
  end;
writeln(P);
end.