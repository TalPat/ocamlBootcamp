let rec ft_countdown a =
  if a > 0
  then begin
    print_int a;
    print_char '\n';
    ft_countdown (a-1)
  end
  else begin
    print_int 0;
    print_char '\n'
  end

let () =
  ft_countdown 0;
  print_char '\n';
  ft_countdown 10;
  print_char '\n';
  ft_countdown (-1)
