let repeat_string ?str:(str="x") n =
  if n >= 0
  then begin
    let rec add_x i str str2 =
      if (i > 0)
      then add_x (i - 1) (str ^ str2) str2
      else str
    in
    add_x n "" str
  end
  else
    "Error"

let () =
  print_string(repeat_string (-1) ^ "\n");
  print_string(repeat_string 0 ^ "\n");
  print_string(repeat_string ~str:"Toto" 1 ^ "\n");
  print_string(repeat_string 2 ^ "\n");
  print_string(repeat_string ~str:"a" 5 ^ "\n");
  print_string(repeat_string ~str:"what" 3 ^ "\n");
  