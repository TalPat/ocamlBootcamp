class ['a] army = object (self)
	val mutable _aList : 'a list = []

	method push_back (el : 'a) = _aList <- _aList @ [el]
	method push_front (el : 'a) = _aList <- el :: _aList
	method pop_back =
		_aList <- match List.rev _aList with
			| [] -> []
			| a::b -> List.rev b
	method pop_front =
		_aList <- match _aList with
			| [] -> []
			| a::b -> b
	method get_aList = _aList
end
