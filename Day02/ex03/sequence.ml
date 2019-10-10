let reverseList l =
	let rec aux newl = function
		| [] -> newl
		| a::b -> aux (a::newl) (b)
	in
	aux [] l


let encode list =
	let rec aux count acc = function
		| [] -> [] (* Can only be reached if original list is empty *)
		| [x] -> (count+1, x) :: acc (* if last element in list *)
		| a :: (b :: _ as t) -> if a = b then aux (count + 1) acc t
														else aux 0 ((count+1,a) :: acc) t in
	reverseList (aux 0 [] list)

let intListToString l =
	let rec aux newStr = function
	| [] -> ""
	| [x] -> newStr ^ (string_of_int x)
	| a::b -> aux (newStr ^ (string_of_int a)) b
	in
	aux "" l

let tupToI l =
	let rec aux newl = function
	| [] -> []
	| [(a,b)] -> [b;a] @ newl
	| (a,b)::c -> aux (b::(a::newl)) c
	in
	reverseList (aux [] l)

let sequence n =
	let rec aux l = function
		| 0 -> l
		| _ as t -> aux (tupToI(encode l)) (t-1)
	in
	if n >= 0
	then intListToString (aux [1] n)
	else ""

let () =
	print_string (sequence 0);
	print_string "\n";
	print_string (sequence 1);
	print_string "\n";
	print_string (sequence 2);
	print_string "\n";
	print_string (sequence 3);
	print_string "\n";
	print_string (sequence 4);
	print_string "\n";
	print_string (sequence 5);
	print_string "\n";
	print_string (sequence 6);
	print_string "\n";
	print_string (sequence (-1));
	print_string "\n";