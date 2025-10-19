program two;
var
  A: array[1..30] of integer;
  i,j,count,num,maxCount: integer;
  begin
  for i := 1 to 30 do
  begin
    A[i] := Random(30);
    Write(A[i],' ');
    end;
    maxCount := 1;
    num := A[1];
    for i := 1 to 30 do
    begin
     count := 0;
    for j := 1 to 30 do
      if A[j] = A[i] then
        Inc(count);
      if count > maxCount then
      begin
        maxCount := count;
        num := A[i];
      end;
      end;
      Writeln;
      Writeln('Самое повторяющееся = ',num);
      Writeln('Сколько раз = ',Maxcount);
  end.