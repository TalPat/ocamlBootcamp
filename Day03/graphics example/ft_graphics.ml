type tree = Nil | Node of ('a * 'b)' * ('b, 'd) tree * 'a tree

let draw_square x y size =
    if size <> 0 then
        begin
            Graphics.moveto (x - (size / 2)) (y - (size / 2));
            Graphics.lineto (x - (size / 2)) (y + (size / 2));
            Graphics.lineto (x + (size / 2)) (y + (size / 2));
            Graphics.lineto (x + (size / 2)) (y - (size / 2));
            Graphics.lineto (x - (size / 2)) (y - (size / 2));
        end


let ft_draw_square x y size =
    Graphics.moveto x y;
    Graphics.lineto x (y + size);
    Graphics.lineto (x + size) (y + size);
    Graphics.lineto (x + size) y;
    Graphics.lineto x y
    
let rec draw_tree_node  node x y = match node with
    | Node (v, l, r) -> begin
                            ft_draw_square x y 100;
                            Graphics.moveto (x+40) (y +40);
                            Graphics.draw_string v;
                            Graphics.moveto  (x + 100) y;
                            Graphics.lineto (x + 170) (y - 50);
                            Graphics.moveto  (x + 100) (y + 100);
                            Graphics.lineto (x + 170) (y + 150);
                            draw_tree_node l (x + 170) (y + 100);
                            draw_tree_node r (x + 170) (y - 100)

                        end
    | Nil ->    begin
                    ft_draw_square x y 100;
                    Graphics.moveto (x + 40) (y + 40);
                    Graphics.draw_string "Nil"
        
                end 

let main () =
    Graphics.open_graph " 800x600";
    Graphics.moveto 400 300;
    draw_square 800 600 100;
    draw_tree_node (Node ("420", Node("00", Nil, Nil), Nil)) 10 100;
    Graphics.read_key ()

let _ = 
        main ();