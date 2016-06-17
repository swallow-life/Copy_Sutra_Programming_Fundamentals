(* evenをfilterを用いて実装する *)
(* even : int list -> int list *)
let even lst = List.filter (fun x -> x mod 2 = 0) lst
(* テスト *)
let test1 = even [] = []
let test2 = even [2] = [2]
let test3 = even [2; 3] = [2]
let test4 = even [3] = []
let test5 = even [3; 4; 5; 6; 7; 2; 10; 5; 5] = [4; 6; 2; 10]
