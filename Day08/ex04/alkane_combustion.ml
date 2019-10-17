exception Unbalanced of string

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

let compMol m1 m2 =
    compare m1#formula m2#formula

class alkane_combustion alkanes
    object (self)
    inherit Reaction.reaction
    method get_start = if is_balanced then ????? else raise (Unbalanced "Unbalanced")
    method get_result = if is_balanced then ???? else raise (Unbalanced "Unbalanced")
    method balance : reaction
    method is_balanced : bool
    end