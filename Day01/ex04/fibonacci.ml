let fibbonacci n =
  let rec aux n a b =
    if n < 0
    then (-1)
    else if n = 0
    then a
    else if n = 1
    then b
    else aux (n-1) b (a+b)
  in
  aux n 0 1

let ()=
  print_int (fibbonacci (-42));
  print_char '\n';
  print_int (fibbonacci 0);
  print_char '\n';
  print_int (fibbonacci 1);
  print_char '\n';
  print_int (fibbonacci 2);
  print_char '\n';
  print_int (fibbonacci 3);
  print_char '\n';
  print_int (fibbonacci 4);
  print_char '\n';
  print_int (fibbonacci 5);
  print_char '\n';
  print_int (fibbonacci 6);
  print_char '\n'