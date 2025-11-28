uses graphABC;
begin
 var x:=50;
  while x <= 290 do 
    begin
      Circle(x, 100, 10);
      FloodFill(x, 100, RGB(random(256), random(256), random(256)));
      x:= x + 30;
    end;  
end.           