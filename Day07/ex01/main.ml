let () =
	let doctor = new Doctor.doctor "Bob" (new People.people "Bob") 12 in
	print_endline doctor#to_string;
	doctor#talk;
	doctor#travel_in_time 1 2;
	doctor#use_sonic_screwdriver;
	(* doctor#regenerate *)