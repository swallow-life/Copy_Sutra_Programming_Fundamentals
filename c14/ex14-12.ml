(* 14-11 *)
(* make_initial_eki_list : ekimei_t list -> string -> eki_t list *)
let make_initial_eki_list ekimei_list kanji_shiten =
	List.map (fun x ->
		if x.kanji = kanji_shiten then
			{ namae = x.kanji; saitan_kyori = 0.; temae_list = [x.kanji] }
		else
			{ namae = x.kanji; saitan_kyori = infinity; temae_list = [] }
	) ekimei_list