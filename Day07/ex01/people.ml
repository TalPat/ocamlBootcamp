class people name =
	object
		initializer print_endline "just made a people"
		val _name : string = name
		val mutable _hp : int = 100

		method to_string = _name ^ " hp: " ^ string_of_int _hp
		method talk = print_endline ("I'm " ^ _name ^ ", do you know the doctor?")
		method die = print_endline ("Arrrgghhh!")
	end