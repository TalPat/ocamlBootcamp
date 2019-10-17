class water molName aList =
    object (self)
        inherit Molecule.molecule
        method name = molName
        method atomList = aList
        method formula = self#buildFormula
    end

class carbon_dioxide molName aList =
    object (self)
        inherit Molecule.molecule
        method name = molName
        method atomList = aList
        method formula = self#buildFormula
    end

class methane molName aList =
    object (self)
        inherit Molecule.molecule
        method name = molName
        method atomList = aList
        method formula = self#buildFormula
    end

class butane molName aList =
    object (self)
        inherit Molecule.molecule
        method name = molName
        method atomList = aList
        method formula = self#buildFormula
    end

class ethene molName aList =
    object (self)
        inherit Molecule.molecule
        method name = molName
        method atomList = aList
        method formula = self#buildFormula
    end
    
