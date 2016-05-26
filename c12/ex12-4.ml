(* ekimei_t型のリストをひらがな順に整列し駅名の重複を取り除く *)
(* seiretsu : ekimei_t list -> ekimei_t list *)
#use "c9/metro.ml"
#use "c12/ex12-1.ml"

let rec insert list elem = match list with
	| [] -> [elem]
	| { kanji = k; kana = ka; romaji = r; shozoku = s; } as head :: rest ->
		match elem with
			| { kanji = k0; kana = ka0; romaji = r0; shozoku = s0; } ->
				if ka = ka0 then
					insert rest elem
				else if ka < ka0 then
					head :: insert rest elem
				else
					elem :: list

let rec seiretsu ekimei_list = match ekimei_list with
	| [] -> []
	| head :: rest -> insert (seiretsu rest) head

(* テスト *)
let ekimei_list = [
	{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"};
	{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"};
	{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"};
	{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"};
	{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"};
	{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"};
	{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"}
]

let test3 = seiretsu [] = []
let test4 = seiretsu ekimei_list = [
	{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"};
	{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"};
	{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"};
	{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"};
	{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"};
	{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}
]