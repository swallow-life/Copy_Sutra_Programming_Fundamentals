(* 駅名リストからローマ字の駅名に対応する漢字の駅名を取得する *)
(* romaji_to_kanji : string -> string list *)
#use  "c9/metro.ml"
exception No_such_station of string

let rec romaji_to_kanji romaji lst = match lst with
	| [] -> raise (No_such_station romaji)
	| { kanji = knj; kana = kna; romaji = roma; shozoku = szk } :: rest ->
		if romaji = roma then
			knj
		else
			romaji_to_kanji romaji rest
(* テスト *)
let test1 = romaji_to_kanji "myogadani" global_ekimei_list = "茗荷谷"
let test2 = try romaji_to_kanji "not found" global_ekimei_list = "" with No_such_station _ -> true
