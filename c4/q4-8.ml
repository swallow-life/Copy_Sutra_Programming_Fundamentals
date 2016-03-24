#use "c4/q4-7.ml"
(* つるかめ算 鶴と亀の数の合計と足の数の合計が与えられたら鶴の数を返す *)
(* let tsurukame : int -> int -> int *)
let tsurukame kazu_goukei ashi_goukei = (kazu_goukei * 4 - ashi_goukei) / 2

(* テスト *)
let test1 = tsurukame 1 2 = 1
let test2 = tsurukame 2 4 = 2
let test3 = tsurukame 1 4 = 0
