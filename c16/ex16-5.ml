(* 始点と終点の駅名を受け取って最短経路を返す *)
(* dijkstra_main : string -> string -> eki_t *)
let dijkstra shiten_ekimei syuten_ekimei =
	let ekimei_list = seiretsu global_ekimei_list in
	let shiten = romaji_to_kanji shiten_ekimei global_ekimei_list in
	let syuten = romaji_to_kanji syuten_ekimei global_ekimei_list in
	let init_list = make_initial_eki_list ekimei_list shiten in
	let saitan_list = dijkstra_main init_list global_ekikan_list in
	List.find (fun x -> x.namae = syuten) saitan_list
