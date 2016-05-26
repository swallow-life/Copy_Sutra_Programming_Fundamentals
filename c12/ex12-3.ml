(* ダイクストラのアルゴリズムの始点の初期化を実行する *)
(* shokika : eki_t list -> string -> eki_t list *)
let rec shokika ekimai_list kanji_shiten = match ekimai_list with
	| [] -> []
	| { namae = n; saitan_kyori = s; temae_list} as first :: rest ->
			if n = kanji_shiten then
				{ namae = n; saitan_kyori = 0.; temae_list = n :: [] } :: shokika rest kanji_shiten
			else
				first :: shokika rest kanji_shiten

(* テスト *)
(* let test1 = shokika (make_eki_list global_ekimei_list) "代々木上原" *)