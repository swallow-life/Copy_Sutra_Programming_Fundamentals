(* #use "c17/ex17-14.ml" *)

(* 目的：未確定の駅のリスト v を必要に応じて更新したリストを返す *)
(* koushin : eki_t -> eki_t list -> ekikan_tree_t -> eki_t list *)
let koushin p v ekikan_tree = match p with
	| {namae = pn; saitan_kyori = ps; temae_list = pt} ->
			List.map (fun q -> match q with
				| {namae = qn; saitan_kyori = qs; temae_list = qt} ->
						let kyori = get_ekikan_kyori pn qn ekikan_tree in
						if kyori = infinity then
							q
						else if ps +. kyori < qs then
							{namae = qn; saitan_kyori = ps +. kyori; temae_list = qn :: pt}
						else q
			) v

(* 目的：未確定駅のリストと駅間リストから、各駅への最短路を求める *)
(* dijkstra_main : eki_t list -> ekikan_tree_t -> eki_t list *)
let rec dijkstra_main eki_list ekikan_tree = match eki_list with
	| [] -> []
  | first :: rest ->
			let (saitan, nokori) = saitan_wo_bunri (first :: rest) in
			let eki_list2 = koushin saitan nokori ekikan_tree in
			saitan :: dijkstra_main eki_list2 ekikan_tree

(* 始点と終点のローマ字駅名を受け取って最短経路を返す *)
(* dijkstra : string -> string -> eki_t *)
let dijkstra shiten_ekimei syuten_ekimei =
	let ekikan_tree = inserts_ekikan Empty global_ekikan_list in
	let shiten = romaji_to_kanji shiten_ekimei global_ekimei_list in
	let syuten = romaji_to_kanji syuten_ekimei global_ekimei_list in
	let init_list = make_initial_eki_list global_ekimei_list shiten in
	let saitan_list = dijkstra_main init_list ekikan_tree in
	List.find (fun x -> x.namae = syuten) saitan_list