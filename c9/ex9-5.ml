(* 整数のリストを受け取り、その中の偶数の要素のみを含むリストを返す *)
(* even : int list -> int list *)
let rec even list = match list with
	| [] -> []
	| car :: cdr -> if car mod 2 == 0 then
										car :: even cdr
									else
										even cdr

(* テスト *)
let test1 = even [2; 1; 6; 4; 7] = [2; 6; 4]
let test2 = even [] = []
let test3 = even [0] = [0]
let test4 = even [1] = []