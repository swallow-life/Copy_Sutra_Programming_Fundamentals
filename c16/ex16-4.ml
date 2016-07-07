(* 未確定の駅のリストと駅間のリストを受け取ったらダイクストラのアルゴリズムに
従って各駅について最短距離と最短経路が入ったリストを返す *)
(* dijkstra_main : eki_t list -> ekikan_t list -> eki_t list *)
let rec dijkstra_main eki_lst ekikan_lst = match eki_lst with
	| [] -> []
	| not_empty_eki_lst ->
		let (saitan, lst) = saitan_wo_bunri not_empty_eki_lst in
		let saitan_lst = koushin saitan lst ekikan_lst in
		saitan :: dijkstra_main saitan_lst ekikan_lst

(* テスト *)
let eki1 = {namae="池袋"; saitan_kyori = infinity; temae_list = []}
let eki2 = {namae="新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]}
let eki3 = {namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]}
let eki4 = {namae="後楽園"; saitan_kyori = infinity; temae_list = []}
let test_lst = [
	eki1; eki2; eki3; eki4
]
let test1 = dijkstra_main [] global_ekikan_list = []
let test2 = dijkstra_main lst global_ekikan_list = [
	{namae = "茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]};
	{namae = "新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]};
	{namae = "後楽園"; saitan_kyori = 1.8; temae_list = ["後楽園"; "茗荷谷"]};
	{namae = "池袋"; saitan_kyori = 3.; temae_list = ["池袋"; "新大塚"; "茗荷谷"]}
]