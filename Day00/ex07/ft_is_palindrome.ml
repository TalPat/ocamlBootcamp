let ft_is_palindrome str =
  let size = String.length str in
  if size > 0
  then begin
    let rec check_char i j str =
      if (i > j / 2 && String.get str i = String.get str (j - i))
      then check_char (i - 1) j str
      else if i <= j / 2
      then true
      else false
    in
    check_char (size - 1) (size - 1) str
  end
  else
    true

let () =
  if (ft_is_palindrome "racecar")
  then print_string "true\n"
  else print_string "false\n";

  if (ft_is_palindrome "racedar")
  then print_string "true\n"
  else print_string "false\n";

  if (ft_is_palindrome "")
  then print_string "true\n"
  else print_string "false\n"