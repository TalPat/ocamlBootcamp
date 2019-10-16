let () =
	let doctor = new Doctor.doctor "Doc" (new People.people "Sidekick") 12 in
	let victim = new People.people "Victim" in
	let dalek = new Dalek.dalek in

	print_endline doctor#to_string;
	doctor#talk;
	doctor#travel_in_time 1 2;
	doctor#use_sonic_screwdriver;

	print_endline dalek#to_string;
	dalek#talk;
	dalek#talk;
	dalek#exterminate victim;
	print_endline dalek#to_string;
	dalek#die
	(* doctor#regenerate *)