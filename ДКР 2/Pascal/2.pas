program two;
var
  str, podstr, resultStr: string;
  ind: array of integer;
  i, j, k, first, last: integer;
  find: boolean;
begin
  readln(str);
  readln(podstr);

  SetLength(ind, 0);
  for i := 1 to Length(str) - Length(podstr) + 1 do
  begin
    find := true;
    for j := 1 to Length(podstr) do
      if str[i + j - 1] <> podstr[j] then
      begin
        find := false;
        break;
      end;

    if find then
    begin
      SetLength(ind, Length(ind) + 1);
      ind[High(ind)] := i;  
    end;
  end;
  first := ind[0];
  last := ind[High(ind)];
  resultStr := '';
  for k := 1 to first - 1 do
    resultStr += str[k];
  for k := first + Length(podstr) to last - 1 do
    resultStr += str[k];
  for k := last + Length(podstr) to Length(str) do
    resultStr += str[k];
  writeln(resultStr);
end.
