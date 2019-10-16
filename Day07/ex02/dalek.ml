class dalek =
	object (self)
		initializer print_endline "just made a Dalek"

		val _name : string =
			let gen() = match Random.int(52) with
					n when n < 26 -> int_of_char 'a' + n
				| _ as n -> int_of_char 'A' + n - 26
			in
			let gen _ = String.make 1 (char_of_int(gen())) in
			"Dalek" ^ String.concat "" (Array.to_list (Array.init 3 gen))
		val mutable _hp : int = 100
		val mutable _shield : bool = true

		method to_string = _name ^ " hp: " ^ string_of_int _hp ^ " shield: " ^ match _shield with | true -> "true" | _ -> "false"
		method talk = 
			match Random.int 4 with
			| 0 -> print_endline ("Explain! Explain!")
			| 1 -> print_endline ("Exterminate! Exterminate!")
			| 2 -> print_endline ("I obey!")
			| _ -> print_endline ("You are the Doctor! You are the enemy of the Daleks!")
		method exterminate (target : People.people) =
			target#die;
			_shield <- match _shield with | true -> false | _ -> true
		method die = print_endline ("Emergency Temporal Shift!")
	end