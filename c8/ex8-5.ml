(* 駅名の情報を格納するレコード型 *)
type ekimei_t = {
	kanji : string; (* 漢字駅名 *)
	kana : string; (* ひらがな駅名 *)
	romaji : string; (* ローマ字駅名 *)
	shozoku : string; (* 所属路線名 *)
}