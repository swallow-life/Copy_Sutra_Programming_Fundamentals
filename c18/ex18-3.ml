(* 駅名と[駅名と距離の組]のリストを受け取りその駅までの距離を返す
駅がリストに見つからない場合はNot_found例外を返す *)
(* assoc : string -> (string * float) list -> float *)
let rec assoc ekimei assoc_list = match assoc_list with
	| [] -> raise Not_found
	| (assoc_ekimei, kyori) :: rest ->
			if assoc_ekimei = ekimei then
				kyori
			else
				assoc ekimei rest
(* テスト *)
let test1 = assoc "新大塚" [("新大塚", 1.2); ("後楽園", 1.8)] = 1.2
let test2 = try assoc "茗荷谷" [("新大塚", 1.2); ("後楽園", 1.8)] = 0. with Not_found -> true
