type phosphate = string
type deoxyribose = string
type nucleobase = A | T | C | G | None
type nucleotide = phosphate * deoxyribose * nucleobase

let generate_nucleotide = function
	| 'A' -> (("phosphate", "deoxyribose", A) : nucleotide)
	| 'T' -> (("phosphate", "deoxyribose", T) : nucleotide)
	| 'C' -> (("phosphate", "deoxyribose", C) : nucleotide)
	| 'G' -> (("phosphate", "deoxyribose", G) : nucleotide)
	| _ -> (("phosphate", "deoxyribose", None) : nucleotide)
