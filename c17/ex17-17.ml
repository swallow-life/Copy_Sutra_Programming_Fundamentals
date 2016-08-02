(* 目的：受け取った lst の中の最小値を返す *)
(* minimum : int -> int list -> int *)
let rec minimum first rest = match rest with
|	[] -> first
|	f :: r -> if first <= f then minimum first r
						else minimum f r