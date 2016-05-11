(* 駅名リストからローマ字の駅名に対応する漢字の駅名を取得する *)
(* romaji_to_kanji : string -> string list *)
#use  "c9/metro.ml"
let rec romaji_to_kanji romaji lst = match lst with
	| [] -> ""
	| { kanji = knj; kana = kna; romaji = roma; shozoku = szk } :: rest ->
		if romaji = roma then
			knj
		else
			romaji_to_kanji romaji rest
(* テスト *)
let test1 = romaji_to_kanji "myogadani" global_ekimei_list = "茗荷谷"
let test2 = romaji_to_kanji "not found" global_ekimei_list = ""