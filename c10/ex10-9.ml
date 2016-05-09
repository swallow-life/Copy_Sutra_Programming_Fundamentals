(* ふたつのリストの長さが同じかどうかを判定する *)
(* equal_length lst1 lst2 -> bool *)
let rec equal_length lst1 lst2 = match (lst1, lst2) with
	| ([], []) -> true
	| ([], first2 :: rest2) -> false
	| (first1 :: rest1, []) -> false
	| (first1 :: rest1, first2 :: rest2) -> equal_length rest1 rest2
(* テスト *)
let test1 = equal_length [] [] = true
let test2 = equal_length [] [1] = false
let test3 = equal_length [2] [] = false
let test4 = equal_length [1] [2] = true
let test5 = equal_length [1; 2] [1; 2; 4] = false
let test6 = equal_length [1; 2; 4] [2; 4; 6] = true