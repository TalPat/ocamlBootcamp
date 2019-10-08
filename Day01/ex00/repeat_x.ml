let repeat_x n =
  if n >= 0
  then begin
    let rec add_x i str =
      if (i > 0)
      then add_x (i - 1) (str ^ "x")
      else str
    in
    add_x n ""
  end
  else
    "Error"

let () =
  print_string(repeat_x 0 ^ "\n");
  print_string(repeat_x 1 ^ "\n");
  print_string(repeat_x 2 ^ "\n");
  print_string(repeat_x 5 ^ "\n");
  print_string(repeat_x (-1) ^ "\n")