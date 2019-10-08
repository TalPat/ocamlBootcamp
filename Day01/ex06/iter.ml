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

let () =
  print_int (iter (fun x -> x * x) 2 4);
  print_char '\n';
  print_int (iter (fun x -> x * 2) 2 4);
  print_char '\n';
  print_int (iter (fun x -> x + 1) 0 9999);
  print_char '\n';
