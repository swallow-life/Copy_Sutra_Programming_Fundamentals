(* 12-2 *)
#use "c9/metro.ml"
#use "c12/ex12-1.ml"
let make_eki_list original_list =
	List.map (fun x -> { namae = x.kanji; saitan_kyori = infinity; temae_list = [] }) original_list
(* 12-3 *)
let shokika ekimei_list kanji_shiten = List.map (fun x ->
	if x.namae = kanji_shiten then
		{ namae = x.namae; saitan_kyori = 0.; temae_list = [x.namae] }
	else
		x
) ekimei_list