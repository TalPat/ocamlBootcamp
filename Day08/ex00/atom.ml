class virtual atom =
    object (self)
        method virtual name : string
        method virtual symbol : string
        method virtual atomic_number : int
        method to_string = self#name ^ " " ^ self#symbol ^ " " ^ (string_of_int self#atomic_number)
        method equals (otherAtom : atom) = self#name = otherAtom#name && self#symbol = otherAtom#symbol && self#atomic_number = otherAtom#atomic_number
    end