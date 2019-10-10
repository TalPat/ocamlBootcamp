let reverseList l =
	let rec aux newl = function
		| [] -> newl
		| a::b -> aux (a::newl) (b)
	in
	aux [] l

let inList e l =
	let rec aux e = function
	| [] -> false
	| a::b -> if e = a then true else aux e b
	in
	aux e l

let uniqueList = function
	| [] -> []
	| [x] -> [x]
	| _ as t ->
		let rec aux newl = function
			| [] -> newl
			| [x] -> if inList x newl then newl else x::newl
			| a::b -> if inList a newl then aux newl b else aux (a::newl) b
		in
		reverseList (aux [] t)

let crossover l1 l2 =
	let ul1 = uniqueList l1 in
	let ul2 = uniqueList l2 in
	let rec aux newl list1 = function
		| [] -> newl
		| [x] -> if inList x list1 then (x::newl) else newl
		| a::b -> if inList a list1 then aux (a::newl) list1 b else aux newl list1 b
	in
	reverseList (aux [] ul1 ul2)

let rec print_list = function 
	| [] -> ()
	| e::l -> print_string e ; print_string "; " ; print_list l

let () =
	print_list (uniqueList [ "a"; "a" ;"a" ; "a" ;"b" ; "b" ;"a" ; "c";]);
	print_string "\n";
	print_list (uniqueList ["b"; "a"; "a"]);
	print_string "\n";
	print_list (crossover [ "a"; "a" ;"a" ; "a" ;"b" ; "b" ;"a" ; "c";] ["b"; "a"; "a"]);
	print_string "\n";
	print_list (uniqueList [ "a"; "a" ;"a" ; "a" ;"b" ; "b" ;"a" ; "c";]);
	print_string "\n";
	print_list (uniqueList ["a"; "c"]);
	print_string "\n";
	print_list (crossover [ "a"; "a" ;"a" ; "a" ;"b" ; "b" ;"a" ; "c";] ["a"; "c"]);
	print_string "\n";