let rec ft_power a b =
  if b == 0
  then 1
  else a * ft_power a (b-1)

let () =
  print_int (ft_power 2 4);
  print_char '\n';
  print_int (ft_power 0 4);
  print_char '\n';
  print_int (ft_power 2 0);
  print_char '\n'