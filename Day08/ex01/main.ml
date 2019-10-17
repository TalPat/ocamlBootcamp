let () =
    let water = new Molecules.water "water" [
            new Elements.hydrogen;
            new Elements.hydrogen;
            new Elements.oxygen;
            ] in
    let carbon_dioxide = new Molecules.carbon_dioxide "carbon dioxide" [
            new Elements.carbon;
            new Elements.oxygen;
            new Elements.oxygen;
            ] in
    let ethene = new Molecules.ethene "ethene" [
            new Elements.hydrogen;
            new Elements.hydrogen;
            new Elements.carbon;
            new Elements.hydrogen;
            new Elements.hydrogen;
            new Elements.carbon;
            ] in
    let methane = new Molecules.methane "methane" [
            new Elements.hydrogen;
            new Elements.hydrogen;
            new Elements.hydrogen;
            new Elements.hydrogen;
            new Elements.carbon;
            ] in
    let butane = new Molecules.butane "butane" [
            new Elements.hydrogen;
            new Elements.hydrogen;
            new Elements.hydrogen;
            new Elements.hydrogen;
            new Elements.hydrogen;
            new Elements.hydrogen;
            new Elements.carbon;
            new Elements.carbon;
            new Elements.carbon;
            new Elements.carbon;
            new Elements.hydrogen;
            new Elements.hydrogen;
            new Elements.hydrogen;
            new Elements.hydrogen;
            ] in
    print_endline water#to_string;
    print_endline carbon_dioxide#to_string;
    print_endline methane#to_string;
    print_endline ethene#to_string;
    print_endline butane#to_string;
