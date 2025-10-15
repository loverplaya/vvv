program one;
 var x1, y1, x2, y2 : integer;
  var d,a,b : real;
begin
readln(x1,y1,x2,y2);
a := (x2-x1)*(x2-x1);
b := (y2-y1)*(y2-y1);
  writeln(sqrt(a+b));
end.
