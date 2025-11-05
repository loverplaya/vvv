program five;
var
  x: array of Integer;
  sov: array of Integer;
  deliteli: array of Integer;
  n, y, i, kolvo, s, proizv: Integer;
begin
  Write('Введите количество чисел: ');
  ReadLn(kolvo);
  SetLength(x, kolvo);

  WriteLn('Введите числа: ');
  for i := 0 to kolvo - 1 do
    Read(x[i]);

  SetLength(sov, 0);
  proizv := 1;

  for i := 0 to kolvo - 1 do
  begin
    n := x[i];
    SetLength(deliteli, 0);

    for y := 1 to n - 1 do
      if n mod y = 0 then
      begin
        SetLength(deliteli, Length(deliteli) + 1);
        deliteli[High(deliteli)] := y;
      end;

    s := 0;
    for y := 0 to High(deliteli) do
      s := s + deliteli[y];

    if s = n then
    begin
      WriteLn(n, ' — совершенное число');
      SetLength(sov, Length(sov) + 1);
      sov[High(sov)] := n;
    end
    else
      WriteLn(n, ' — несовершенное число');

    Write('Делители ', n, ': ');
    for y := 0 to High(deliteli) do
      Write(deliteli[y], ' ');
    WriteLn;
    WriteLn;
  end;

  if Length(sov) > 0 then
  begin
    Write('Совершенные числа: ');
    for i := 0 to High(sov) do
    begin
      Write(sov[i], ' ');
      proizv := proizv * sov[i];
    end;
    WriteLn;
    WriteLn('Произведение совершенных чисел: ', proizv);
  end
  else
    WriteLn('Совершенных чисел нет.');
end.
