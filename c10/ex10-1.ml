(* あらかじめ昇順にソート済みのリストに引数で受け取った値を昇順を崩さない位置に挿入する *)
(* insert : int list -> int n -> int list *)
let rec insert list n = match list with
	| [] -> [n]
	| first :: second :: rest ->
			if n < first then
				n :: first :: second :: rest
			else if first < n && second > n then
				first :: n :: second :: rest
			else
				first :: (insert (second :: rest) n)
	| head :: [] -> [head; n]
(* テスト *)
let test1 = insert [1;2;5] 3 = [1;2;3;5]
let test2 = insert [1;2;5] 6 = [1;2;5;6]
let test3 = insert [2;5;6] 1 = [1;2;5;6]
let test4 = insert [] 6 = [6]