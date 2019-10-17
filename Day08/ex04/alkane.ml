class alkane n =
    object (self)
        inherit Molecule.molecule
        method name = match n with
        | 1 -> "methane"
        | 2 -> "ethane"
        | 3 -> "propane"
        | 4 -> "butane"
        | 5 -> "pentane"
        | 6 -> "hexane" 
        | 7 -> "heptane"
        | 8 -> "octane"
        | 9 -> "nonane"
        | 10 -> "decane"
        | 11 -> "undecane"
        | 12 -> "dodecane"
        | _ as t -> string_of_int t ^ "-ane"

        method atomList = 
            let rec buildList tp l = function
                | 0 -> l
                | _ as t -> buildList tp (tp::l) (t-1)
            in
            (buildList (new Elements.carbon) [] n) @ (buildList (new Elements.hydrogen) [] (2 * n + 2))
        method formula = self#buildFormula
    end