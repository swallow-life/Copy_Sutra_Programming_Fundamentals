(* つるかめ算 *)
(* tsuru_no_ashi : int -> int *)
let tsuru_no_ashi wa = wa * 2

(* テスト *)
let test1 = tsuru_no_ashi 2 = 4
let test2 = tsuru_no_ashi 0 = 0
let test3 = tsuru_no_ashi 10 = 20

(* kame_no_ashi : int -> int *)
let kame_no_ashi hiki = hiki * 4

(* テスト *)
let test1 = kame_no_ashi 2 = 8
let test2 = kame_no_ashi 0 = 0
let test3 = kame_no_ashi 10 = 40