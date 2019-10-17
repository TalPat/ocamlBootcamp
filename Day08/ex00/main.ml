let () =
    print_endline (new Elements.hydrogen)#to_string;
    print_endline (new Elements.carbon)#to_string;
    print_endline (new Elements.oxygen)#to_string;

    (match (new Elements.hydrogen)#equals (new Elements.hydrogen) with
    | true -> print_endline "Same"
    | _ -> print_endline "But different");

    match (new Elements.hydrogen)#equals (new Elements.carbon) with
    | true -> print_endline "Same"
    | _ -> print_endline "But different"
