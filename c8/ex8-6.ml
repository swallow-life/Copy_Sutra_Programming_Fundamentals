(* ekimei_t 型のデータを受け取って「路線名,駅名（駅名かな）」の形式の文字列を返す *)
(* hyoji : ekimei_t -> string *)
let hyoji eki = match eki with
	{ kanji = kanji; kana = kana; romaji = romaji; shozoku = shozoku; }
		-> shozoku ^ "," ^ kanji ^ "（" ^ kana ^ "）"
(* テスト *)
let test1 = hyoji {kanji=""; kana=""; romaji=""; shozoku=""} = ",（）"
let test2 = hyoji {kanji="品川"; kana="しながわ"; romaji="shinagawa"; shozoku="JR山手線"} = "JR山手線,品川（しながわ）"