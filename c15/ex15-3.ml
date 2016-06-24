(* 2以上n以下の自然数のリストを受け取ったら2以上n以下の素数のリストを返す *)
(* sieve : int list -> int list *)
let rec sieve nat_list = match nat_list with
	| [] -> []
	| first :: rest ->
			first :: sieve (List.filter (fun x -> x mod first <> 0) rest)
(* テスト *)
let test1 = sieve [2; 3; 4; 5; 6; 7] = [2; 3; 5; 7]

(* 自然数を受け取ったらそれ以下の素数のリストを返す *)
(* prime : int -> int list *)
let rec gen_nat_lst nat =
	if nat <= 1 then
		[]
	else
		gen_nat_lst (nat - 1) @ [nat]

let prime nat = sieve (gen_nat_lst nat)
(* テスト *)
let test1 = prime 10 = [2;3;5;7;]