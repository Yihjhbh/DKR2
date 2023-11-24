program zad2;

var
  str, inv, n: string;
  i, j, k, y: integer;

begin
  writeln('Введите строку: ');
  readln(str);
  writeln('Введите подстроку для инверсии: ');
  readln(inv);
  i := 1;
  while i <= length(str) do
  begin
    j := 1;
    k := i;
    while (j <= length(inv)) and (k <= length(str)) and (str[k] = inv[j]) do
    begin
      j := j + 1;
      k := k + 1;
    end;
    if j > length(inv) then
    begin
      for y := length(inv) downto 1 do
      begin
        n := n + inv[y];
      end;
      i := i + length(inv);
    end
    else
    begin
      n := n + str[i];
      i := i + 1;
    end;
  end;
  writeln(n);
end.
