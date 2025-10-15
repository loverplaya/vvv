var an,p,f : integer;
begin
  readln(an);
 p := (an - 1) div 36 + 1;
f := (an mod 36 - 1) div 4 + 1;
writeln('Подъезд', p, 'Этаж', f);
end.
