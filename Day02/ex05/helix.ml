type phosphate = string
type deoxyribose = string
type nucleobase = A | T | C | G | None
type nucleotide = phosphate * deoxyribose * nucleobase
type helix = nucleotide list

let reverseList l =
	let rec aux newl = function
		| [] -> newl
		| a::b -> aux (a::newl) (b)
	in
	aux [] l

let generate_nucleotide = function
	| 'A' -> (("phosphate", "deoxyribose", A) : nucleotide)
	| 'T' -> (("phosphate", "deoxyribose", T) : nucleotide)
	| 'C' -> (("phosphate", "deoxyribose", C) : nucleotide)
	| 'G' -> (("phosphate", "deoxyribose", G) : nucleotide)
	| _ -> (("phosphate", "deoxyribose", None) : nucleotide)

let generate_helix n =
	Random.self_init ();
	let rec aux l = function
		| 0 -> l
		| _ as t ->
			match (Random.int 5) with
			| 0 -> aux ((generate_nucleotide 'A')::l) (t-1)
			| 1 -> aux ((generate_nucleotide 'T')::l) (t-1)
			| 2 -> aux ((generate_nucleotide 'C')::l) (t-1)
			| 3 -> aux ((generate_nucleotide 'G')::l) (t-1)
			| _ -> aux ((generate_nucleotide 'N')::l) (t-1)
	in
	((aux [] n) : helix)

let helix_to_string (h : helix) =
	let rec aux newstr = function
	| [] -> newstr
	| (a, b, c)::d ->
		match c with
		| A -> aux ("A" ^ newstr) d
		| T -> aux ("T" ^ newstr) d
		| C -> aux ("C" ^ newstr) d
		| G -> aux ("G" ^ newstr) d
		| _ -> aux ("-" ^ newstr) d
	in
	aux "" h

let complementary_helix (h : helix) =
	let rec aux newh = function
	| [] -> newh
	| (a, b, c)::d ->
		match c with
		| A -> aux ((generate_nucleotide 'T'):: newh) d
		| T -> aux ((generate_nucleotide 'A'):: newh) d
		| C -> aux ((generate_nucleotide 'G'):: newh) d
		| G -> aux ((generate_nucleotide 'C'):: newh) d
		| _ -> aux ((generate_nucleotide '-'):: newh) d
	in
	((reverseList (aux [] h)) : helix)

let () =
	let myhelix = (generate_helix 100) in
	print_endline (helix_to_string myhelix);
	print_endline (helix_to_string (complementary_helix myhelix))