program zad1;

var
  arr: array[1..100] of integer;
  s, i, k, sum: integer;

begin
  write('Введите размер массива: ');
  read(k);
  writeln('Введите элементы массива: ');
  for i := 1 to k do
    read(arr[i]);
  write('Введите заданное число s: ');
  read(s);
  sum := 0;
  i := 1;
  while (sum <= s) and (i <= k) do
  begin
    sum := sum + arr[i];
    i := i + 1;
  end;
  if sum > s then
    writeln('Минимальное k:', i - 1)
  else
    writeln('Не удалось найти такое k'); 
end.
