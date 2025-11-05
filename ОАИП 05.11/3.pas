program three;
var N, x, s: integer;
begin;
readln(N);
x := 1;
s := 0;
while x <= N do
  begin;
  if N mod x = 0 then
    s := s + x;
  x := x + 1;
    end;
    if s = N then
      writeln('Да')
    else
      writeln('Нет');
end.