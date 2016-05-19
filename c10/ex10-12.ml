(* 駅名をふたつ受け取ってその間の距離を表示する *)
(* kyori_wo_hyoji : string -> string -> string *)
#use "c9/metro.ml"
#use "c10/ex10-10.ml"
#use "c10/ex10-11.ml"

let kyori_wo_hyoji romaji_eki1 romaji_eki2 =
	let kanji_eki1 = romaji_to_kanji romaji_eki1 global_ekimei_list in
	let kanji_eki2 = romaji_to_kanji romaji_eki2 global_ekimei_list in
	let kyori = get_ekikan_kyori global_ekikan_list kanji_eki1 kanji_eki2 in
	if kyori != infinity then
		kanji_eki1 ^ "から" ^ kanji_eki2 ^ "までは" ^ string_of_float kyori ^ "kmです"
	else
		kanji_eki1 ^ "と" ^ kanji_eki2 ^ "はつながっていません"
(* テスト *)
let test1 = kyori_wo_hyoji "myogadani" "shinotsuka" = "茗荷谷から新大塚までは1.2kmです"
let test2 = kyori_wo_hyoji "myogadani" "yoyogiuehara" = "茗荷谷と代々木上原はつながっていません"
let test3 = kyori_wo_hyoji "" "" = "とはつながっていません"