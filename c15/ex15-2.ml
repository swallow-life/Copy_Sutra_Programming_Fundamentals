(* ふたつの自然数を受け取って、その最大公約数を返す *)
(* gcd : int -> int -> int *)
let rec gcd m n =
	if n = 0 then
		m
	else
		gcd n (m mod n)
(* テスト *)
let test1 = gcd 12 8 = 4
let test2 = gcd 8 12 = 4
let test3 = gcd 7 5 = 1