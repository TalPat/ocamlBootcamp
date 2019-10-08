let is_digit c =
  c >= '0' && c <= '9'

let ft_string_all f str =
  let size = String.length str in
  if size > 0
  then begin
    let rec check_char f str i = 
      if i > 0 && f (String.get str i) = true
      then check_char f str (i - 1)
      else if i = 0
      then true
      else false
    in
    check_char f str (size - 1)
  end
  else
    false

let () =
  if (ft_string_all is_digit "01234567")
  then print_string "true\n"
  else print_string "false\n";

  if (ft_string_all is_digit "012E4567")
  then print_string "true\n"
  else print_string "false\n"