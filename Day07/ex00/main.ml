let () =
	let person = new People.people "Bob" in
	print_endline person#to_string;
	person#talk;
	person#die