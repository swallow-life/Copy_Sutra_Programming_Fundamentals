(* 1から受け取った自然数までの合計を求める *)
(* one_to_n : int -> int *)
#use "c14/enumerate.ml"
let one_to_n nat = List.fold_right (+) (enumerate nat) 0
(* テスト *)
let test1 = one_to_n 10 = 55
let test2 = one_to_n 1 = 1
let test3 = one_to_n 0 = 0
