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

let print_tuple (x, y) =
  Printf.printf "(%d,%s)" x y

let rec print_list = function 
	| [] -> ()
	| e::l -> print_tuple e ; print_string "; " ; print_list l

let () =
	print_list (encode [ "a"; "a" ;"a" ; "a" ;"b" ; "b" ;"a" ; "c";]);