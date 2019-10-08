let ft_print_comb () =
  for i = 0 to 7 do
    for j = i + 1 to 8 do
      for k = j + 1 to 9 do
        print_int i;
        print_int j;
        print_int k;
        if (i + j + k) >= 24 then print_string "\n"
        else print_string ", "
      done
    done
  done

let () =
  ft_print_comb()