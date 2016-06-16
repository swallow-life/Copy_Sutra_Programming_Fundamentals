(* 直前に確定した駅pと未確定の駅のリストvを受け取り未確定の駅のリストを返す *)
(* koushin : eki_t -> eki_t list -> eki_t list *)
#use "c12/ex12-3.ml"
#use "c13/ex13-6.ml"
let koushin p v =
	let f = koushin1 p in
	List.map f v
(* テスト *)
let eki1 = {namae="池袋"; saitan_kyori = infinity; temae_list = []}
let eki2 = {namae="新大塚"; saitan_kyori = infinity; temae_list = []}
let eki3 = {namae="茗荷谷"; saitan_kyori = infinity; temae_list = []}
let eki4 = {namae="後楽園"; saitan_kyori = infinity; temae_list = []}
let lst = [eki1; eki2; eki3; eki4]

let shokika_lst = shokika lst eki3.namae

let test1 = koushin eki2 [] = []
let result2 = koushin (List.nth shokika_lst 2) shokika_lst
let test2 = result2 = [
	eki1;
	{namae="新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]};
	{namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]};
	{namae = "後楽園"; saitan_kyori = 1.8; temae_list = ["後楽園"; "茗荷谷"]};
]
