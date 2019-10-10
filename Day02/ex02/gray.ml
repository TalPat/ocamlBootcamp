let reverseList l =
	let rec aux newl = function
		| [] -> newl
		| a::b -> aux (a::newl) (b)
	in
	aux [] l

let strRevWords str =
	let strlist = String.split_on_char ' ' str
	in
	String.concat " " (reverseList strlist)

let prependWord str sep =
	let strlist = String.split_on_char ' ' str
	in
	sep ^ (String.concat (" " ^ sep) strlist)

let gray n =
	let rec aux str = function
		| 0 -> str
		| _ as t -> aux ((prependWord str "0") ^ " " ^ (prependWord (strRevWords str) "1")) (t-1)
	in
	print_string ((aux "" n) ^ "\n")

let () =
	gray 1;
	gray 2;
	gray 3;