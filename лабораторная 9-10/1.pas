program one;
const
  N = 20;
  MIN_VAL = -20;
  MAX_VAL = 10;

var
  a: array[1..N] of integer;
  i, first_ind, last_ind, last_otr: integer;

begin
  Randomize;
  for i := 1 to N do
    a[i] := MIN_VAL + Random(MAX_VAL - MIN_VAL + 1);
  writeln('Массив:');
  for i := 1 to N do
    write(a[i], ' ');
  writeln;
  first_ind := 0;
  for i := 1 to N do
    if a[i] > 0 then
    begin
      first_ind := i;
      break;
    end;

  if first_ind <> 0 then
    writeln('Индекс первого положительного элемента: ', first_ind)
  else
    writeln('Положительных элементов нет (0)');
  last_ind := 0;
  for i := 1 to N do
    if a[i] < 0 then
    begin
      last_ind := i;
      last_otr := a[i];
    end;

  if last_ind <> 0 then
  begin
    writeln('Последний отрицательный элемент: ', last_otr);
    writeln('Индекс последнего отрицательного элемента: ', last_ind);
  end
  else
    writeln('Отрицательных элементов нет');
end.
