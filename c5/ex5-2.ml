(* 目的：時間を受け取ると午前か午後かを判定して返す *)
(* jikan : int -> string *)
let jikan hour =
	if hour < 12 then "AM"
								else "PM"

(* テスト *)
let test1 = jikan 1 = "AM"
let test2 = jikan 13 = "PM"
let test3 = jikan 12 = "PM"
let test4 = jikan 0 = "AM"