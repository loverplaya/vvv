program four;
var x1,y1,x2,y2,a1,b2 : integer;
begin
readln(x1, y1, x2, y2);
a1 := 0;
b2 := 0;
if (x1 > 0) and (y1 > 0) then a1 := 1
else if  (x1 > 0) and (y1 < 0) then a1 := 4
else if (x1 < 0) and (y1 > 0) then a1 := 2
else if (x1 < 0) and (y1 < 0) then a1 := 3;
if (x2 > 0) and (y2 > 0) then b2 := 1
else if (x2 > 0) and (y2 < 0) then b2 := 4
else if (x2 < 0) and (y2 > 0) then b2 := 2
else if (x2 < 0) and (y2 < 0) then b2 := 3;
if a1 = b2 then writeln('в одной')
else writeln('не в одной');

end.
