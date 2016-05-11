(* 駅をふたつ指定するとその駅間の距離を返す *)
(* get_ekikan_kyori : ekikan_t list -> string -> string -> float *)
let rec get_ekikan_kyori lst eki1 eki2 = match lst with
	| [] -> infinity
	| { kiten=ki; shuten=shu; keiyu=ke; kyori=kyo; jikan=ji} :: rest ->
		if (eki1 = ki && eki2 = shu) || (eki2 = ki && eki1 = shu) then
			kyo
		else
			get_ekikan_kyori rest eki1 eki2
(* テスト *)
let test1 = get_ekikan_kyori global_ekikan_list "茗荷谷" "新大塚" = 1.2
let test2 = get_ekikan_kyori global_ekikan_list "茗荷谷" "代々木上原" = infinity
