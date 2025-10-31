program task2_array;
const
  ROWS = 8;
  COLS = 8;
  MIN_VAL = 0;
  MAX_VAL = 50;

var
  a: array[1..ROWS, 1..COLS] of integer;
  i, j, row_min, sum_min, avg_min: integer;
  min_list: array[1..ROWS] of integer;

begin
  Randomize;
  writeln('Двумерный массив 8x8:');
  for i := 1 to ROWS do
  begin
    for j := 1 to COLS do
    begin
      a[i,j] := MIN_VAL + Random(MAX_VAL - MIN_VAL + 1);
      write(a[i,j]:4);
    end;
    writeln;
  end;

  sum_min := 0;
  writeln;
  writeln('Минимальные элементы каждой строки:');
  for i := 1 to ROWS do
  begin
    row_min := a[i,1];
    for j := 1 to COLS do
      if a[i,j] < row_min then
        row_min := a[i,j];

    min_list[i] := row_min;
    writeln(row_min);
    sum_min := sum_min + row_min;
  end;
  avg_min := Round(sum_min / ROWS);

  writeln;
  writeln('Одномерный массив минимальных элементов:');
  for i := 1 to ROWS do
    write(min_list[i], ' ');
  writeln;

  writeln('Среднее арифметическое минимальных элементов: ', avg_min);
end.
