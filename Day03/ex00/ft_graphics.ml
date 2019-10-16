open Graphics

let () =
	open_graph " 900x600";
	loop_at_exit [Key_pressed; Button_down]
		(fun event ->
			if event.keypressed then
				draw_char event.key
			else
				fill_circle event.mouse_x event.mouse_y 100)
