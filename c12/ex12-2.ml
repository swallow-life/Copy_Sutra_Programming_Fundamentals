(* ekimei_t型のリストをeki_t型のリストに変換する *)
(* make_eki_list : ekimei_t list -> eki_t list *)
#use "c9/metro.ml"
#use "c12/ex12-1.ml"
let rec make_eki_list orginal_list = match orginal_list with
	| [] -> []
	| { kanji = k; kana = ka; romaji = r; shozoku = s; } :: rest ->
			{ namae = k; saitan_kyori = infinity; temae_list = [] } :: make_eki_list rest
