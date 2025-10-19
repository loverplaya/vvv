program three;
var
  A: array[1..20] of integer;
  i,n,j,ind,num,min,min_ind:integer;
  begin
    n := 20;
    for i := 1 to n do
      begin
      A[i] := Random(50) - 20;
    write(A[i],' ');
    end;
    
    ind := 0; 
    for i := 1 to n do
     if A[i] > 0 then
     begin
       num := A[i];
       ind := i;
       break
     end;
     
     if ind <> 0 then
       begin
     for j := ind to n - 1 do
       A[j] := A[j + 1];
     Dec(n);
     end;
     Writeln();
     writeln('Первое положительное число =',num );
     Writeln('Массив после удаления первого положительного числа');
     
     for i := 1 to n do
       write(A[i], ' ');
     
     if n > 0 then
     begin
       min := A[1];
       min_ind := 1;
     for i := 2 to n do
       if A[i] < min then
         begin
         min := A[i];
         min_ind := i;
         end;
       for j := min_ind to n-1 do
         A[j] := A[j + 1];
       Dec(n);
       
       Writeln();
       writeln('Наименьшее число = ',min);
       Writeln('Массив после удаления наименьшего числа');
       for i := 1 to n do
         write(A[i], ' ');
       end;
  end.