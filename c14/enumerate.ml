(* 引数nから1までのリストを作る *)
(* enumerate : int -> int list *)
let rec enumerate n =
	if n = 0 then
		[]
	else
		n :: enumerate (n - 1)
