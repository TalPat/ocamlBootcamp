let ft_print_rev str =
  for i = (String.length str -1) downto 0 do
    print_char (String.get str i);
  done;
  print_char '\n'

let () =
  ft_print_rev "Hello World!";
  ft_print_rev ""