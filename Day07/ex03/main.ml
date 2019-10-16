let () =
	let armyPeople = new Army.army in
	let armyDalek = new Army.army in
	let armyDoctor = new Army.army in

	armyPeople#push_back (new People.people "Abby");
	armyPeople#push_back (new People.people "Betty");
	armyPeople#push_back (new People.people "Cathy");
	(List.nth armyPeople#get_aList 0)#talk;
	(List.nth armyPeople#get_aList 1)#talk;
	(List.nth armyPeople#get_aList 2)#talk;
	armyPeople#pop_back;
	(List.nth armyPeople#get_aList 0)#talk;
	(List.nth armyPeople#get_aList 1)#talk;
	armyPeople#pop_front;
	(List.nth armyPeople#get_aList 0)#talk;

	armyDalek#push_back (new Dalek.dalek);
	armyDalek#push_back (new Dalek.dalek);
	armyDalek#push_back (new Dalek.dalek);
	(List.nth armyDalek#get_aList 0)#talk;
	(List.nth armyDalek#get_aList 1)#talk;
	(List.nth armyDalek#get_aList 2)#talk;
	
	armyDoctor#push_back (new Doctor.doctor "A" (new People.people "3") 1);
	armyDoctor#push_back (new Doctor.doctor "B" (new People.people "2") 2);
	armyDoctor#push_back (new Doctor.doctor "C" (new People.people "1") 3);
	(List.nth armyDoctor#get_aList 0)#talk;
	(List.nth armyDoctor#get_aList 1)#talk;
	(List.nth armyDoctor#get_aList 2)#talk;
