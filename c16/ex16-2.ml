(* fold_left *)
(* fold_left : fun -> 'a -> 'a list -> a' *)
let rec fold_left f init lst = match lst with
	| [] -> init
	| first :: rest ->
		fold_left f (f first init) rest