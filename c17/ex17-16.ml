(* eki_t list 型のリストを受け取り「最短距離最小の駅」と「最短距離最小の駅以外からなるリスト」を返す。foldを使用 *)
(* saitan_wo_bunri : eki_t -> eki_t list -> (eki_t, eki_t list) *)
(* #use "c12/ex12-1.ml" *)
let saitan_wo_bunri eki eki_rest_list =
	List.fold_right	(fun eki_rest (eki_accm, v) -> match (eki_rest, eki_accm) with
		| ({namae = fn; saitan_kyori = fs; temae_list = ft}, {namae = sn; saitan_kyori = ss; temae_list = st}) ->
			if fs < ss then
				(eki_rest, eki_accm :: v)
			else
				(eki_accm, eki_rest :: v)
	)
	eki_rest_list (eki, [])
(* 駅の例 *)
let eki1 = {namae="池袋"; saitan_kyori = infinity; temae_list = []}
let eki2 = {namae="新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]}
let eki3 = {namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]}
let eki4 = {namae="後楽園"; saitan_kyori = infinity; temae_list = []}

(* 駅リストの例 *)
let lst = [eki1; eki2; eki4]

(* テスト *)
let test1 = saitan_wo_bunri eki3 lst = (eki3, [eki1; eki2; eki4])
let test2 = saitan_wo_bunri eki2 [eki3; eki1; eki4] = (eki3, [eki2; eki1; eki4])
