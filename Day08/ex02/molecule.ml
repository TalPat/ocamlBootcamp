let countAtom l t =
    let rec aux target n = function
        | [] -> n
        | a::b -> if a#equals target = true
            then aux target (n + 1) b
            else aux target n b
    in
    aux t 0 l

class virtual molecule =
    object (self)
        method virtual name : string
        method virtual formula : string
        method virtual atomList : (Atom.atom list)

        method to_string = self#name ^ " " ^ self#formula
        method equals (otherMol : molecule) = self#name = otherMol#name && self#formula = otherMol#formula
        method buildFormula = 
            let s1 = 
                match countAtom self#atomList (new Elements.carbon) with
                | 0 -> ""
                | 1 -> "C"
                | _ as n -> "C" ^ (string_of_int n)
            in
            let s2 = 
                match countAtom self#atomList (new Elements.hydrogen) with
                | 0 -> ""
                | 1 -> "H"
                | _ as n -> "H" ^ (string_of_int n)
            in
            let s3 = 
                match countAtom self#atomList (new Elements.oxygen) with
                | 0 -> ""
                | 1 -> "O"
                | _ as n -> "O" ^ (string_of_int n)
            in
            s1 ^ s2 ^ s3
    end