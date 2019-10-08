let ft_print_comb2 () =
  for i = 0 to 98 do
    for j = i + 1 to 99 do
      if i < 10 then print_char '0';
      print_int i;
      print_char ' ';
      if j < 10 then print_char '0';
      print_int j;
      if (i + j) >= 197 then print_string "\n"
      else begin
        print_char ',';
        print_char ' '
      end
    done
  done

let () =
  ft_print_comb2()