class doctor name sidekick age = object
	initializer print_endline "The Doctor is in!"

	val _name : string = name
	val _age : int = age
	val _sidekick : People.people = sidekick
	val mutable _hp : int = 100;

	method to_string = _name ^ " hp: " ^ string_of_int _hp ^ " age: " ^ string_of_int _age ^ " sidekick: " ^ _sidekick#to_string
	method talk = print_endline ("Hi, I'm the Doctor.")
	method travel_in_time (start: int) (arrival: int) =
		print_endline "       ___
_______(_@_)_______
| POLICE      BOX |
|_________________|
 | _____ | _____ |
 | |###| | |###| |
 | |###| | |###| |   
 | _____ | _____ |   
 | || || | || || |
 | ||_|| | ||_|| |  
 | _____ |$_____ |  
 | || || | || || |  
 | ||_|| | ||_|| | 
 | _____ | _____ |
 | || || | || || |   
 | ||_|| | ||_|| |         
 |       |       |        
 *****************"
	method use_sonic_screwdriver = print_endline "Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii"
	method private regenerate = _hp <- 100
end
