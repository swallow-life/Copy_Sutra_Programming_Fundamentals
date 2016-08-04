(* 野菜のリストと八百屋のリストを受け取ったら野菜のリストのうち八百屋においていない野菜の数を返す *)
(* count_urikire_yasai : string list -> (string * int) list -> int *)
let rec count_urikire_yasai yasai_list yaoya_list = match yasai_list with
| [] -> 0
| first :: rest -> match price first yaoya_list with
	|	None 			-> 1 + count_urikire_yasai rest yaoya_list
	| Some (p) 	-> 0 + count_urikire_yasai rest yaoya_list