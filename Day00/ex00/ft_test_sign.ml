let ft_test_sign a =
  if a >= 0
  then print_endline "positive"
  else print_endline "negative"

let () =
  ft_test_sign 5;
  ft_test_sign (-0);
  ft_test_sign 0;
  ft_test_sign (-42)
