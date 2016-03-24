#use "c4/q4-6.ml"
(* つるかめ算 鶴の足と亀の足を数える *)
(* tsurukame_no_ashi : int -> int -> int *)
let tsurukame_no_ashi tsuru kame = tsuru_no_ashi tsuru + kame_no_ashi kame

(* テスト *)
let test1 = tsurukame_no_ashi 0 0 = 0
let test2 = tsurukame_no_ashi 2 3 = 16
let test3 = tsurukame_no_ashi 3 2 = 14