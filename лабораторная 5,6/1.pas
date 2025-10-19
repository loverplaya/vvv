program one;
var 
A: array[1..20] of integer;
i, max_num,max_index, min_num,min_index, kratnoe_five,kratnoe_five_index: integer;
begin 
  for i := 1 to 20 do
  begin
    A[i] := Random(118) - 52;
    Write(A[i],' ');
  end;
  max_num := A[1];
  max_index := 1;
  for i := 1 to 20 do
    if A[i] > max_num then
    begin
      max_num := A[i];
      max_index := 1;
      min_num := A[i];
      min_index := 1;
    end;
    writeln;
    writeln('Наибольший элемент ', max_num);
    writeln('Индекс наибольшего элемента = ', max_index);
    for i := 1 to 20 do
    if (A[i] < min_num) and (A[i] > 0) then
    begin
      min_num := A[i];
      min_index := i;
    end;
    writeln('Наименьший элемент ', min_num);
    writeln('Индекс наименьшего элемента = ', min_index);
    for i := 1 to 20 do
    if A[i] mod 5 = 0  then
    begin
      kratnoe_five := A[i];
      kratnoe_five_index := i;
    end;
     writeln('Последнее кратное 5 ', kratnoe_five);
    writeln('Индекс кратного 5 = ',  kratnoe_five_index);
end.
