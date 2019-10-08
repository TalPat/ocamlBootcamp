let iter f x n =
  if n < 0
  then (-1)
  else begin
    let rec aux f x n =
      if n = 0
      then x
      else f (aux f x (n - 1))
    in
    aux f x n
  end

let converges f x n =
  if (x = iter f x n)
  then true
  else false

let () =
  if (converges (( * ) 5) 2 5);
  then print_string "true\n"
  else print_string "false\n";
  if (converges (fun x -> x / 2) 2 3);
  then print_string "true\n"
  else print_string "false\n";
  if (converges (fun x -> x / 2) 2 2);
  then print_string "true\n"
  else print_string "false\n";
