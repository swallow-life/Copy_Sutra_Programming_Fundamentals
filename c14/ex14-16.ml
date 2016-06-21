(* 階乗を求める *)
(* fac : int -> int *)
#use "c14/enumerate.ml"
let fac n = List.fold_right ( * ) (enumerate n) 1
(* テスト *)
let test1 = fac 5 = 120
let test2 = fac 1 = 1
let test3 = fac 0 = 1