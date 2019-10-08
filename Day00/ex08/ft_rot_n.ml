let rot_char c =
  if (c <= 'z' && c >= 'a') || (c <= 'Z' && c >= 'A')
  then begin
    if c = 'z'
    then 'a'
    else if c = 'Z'
    then 'A'
    else char_of_int(int_of_char c + 1)
  end
  else c
  

let rec ft_rot_n n str =
  if n = 0
  then str
  else ft_rot_n (n-1) (String.map rot_char str)

let () =
  print_string(ft_rot_n 1 "abcd1!" ^ "\n");
  print_string(ft_rot_n 13 "ABCDlmnopqrstuvwxyz" ^ "\n");
  print_string(ft_rot_n 26 "abcdefghijklmnopqrstuvwxyz" ^ "\n");
  print_string(ft_rot_n 52 "abcdefghijklmnopqrstuvwxyz" ^ "\n");
  print_string(ft_rot_n 42 "abcdefghijklmnopqrstuvwxyz" ^ "\n")