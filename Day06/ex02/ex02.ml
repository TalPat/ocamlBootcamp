module type PAIR = sig val pair : ( int * int ) end
module type VAL = sig val x : int end

(* FIX ME !!! *)

module type MAKEPROJECTION = sig val pair : (int * int) end

module MakeFst (M : MAKEPROJECTION) : VAL = struct
	let x = fst M.pair
end

module MakeSnd (M : MAKEPROJECTION) : VAL = struct
	let x = snd M.pair
end

module Pair : PAIR = struct let pair = ( 21, 42 ) end

module Fst : VAL = MakeFst (Pair)
module Snd : VAL = MakeSnd (Pair)

let () = Printf.printf "Fst.x = %d, Snd.x = %d\n" Fst.x Snd.x