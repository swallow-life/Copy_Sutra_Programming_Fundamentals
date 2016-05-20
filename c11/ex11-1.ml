(* 0から受け取った自然数までの2乗の和をもとめる *)
(* sum_of_square : int -> int *)
let rec sum_of_square nat =
	if nat = 0 then
		0
	else
		nat * nat + sum_of_square (nat - 1)
(* テスト *)
let test1 = sum_of_square 4 = 30
let test2 = sum_of_square 0 = 0