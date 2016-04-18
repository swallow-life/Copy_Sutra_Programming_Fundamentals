(* 整数のリストを受け取ってリストの長さを返す *)
(* length : int[] -> int *)
let rec length list =
	match list with
	| [] -> 0
	| first :: rest -> 1 + length rest

(* テスト *)
let test1 = length [] = 0
let test2 = length [1; 2; 3;] = 3
let test3 = length [1] = 1