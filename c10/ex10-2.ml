(* 整数のリストを受け取り昇順にソートしたリストを返す *)
(* ins_sort : int list -> int list *)
#use "c10/ex10-1.ml"
let rec ins_sort list = match list with
	| [] -> []
	| head :: rest -> insert (ins_sort rest) head
(* テスト *)
let test1 = ins_sort [5; 3; 8; 1; 7; 4] = [1; 3; 4; 5; 7; 8]
