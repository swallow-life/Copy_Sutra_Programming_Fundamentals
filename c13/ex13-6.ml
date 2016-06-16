(* 直前に確定した駅と未確定の駅を受け取ったら直接つなっているか調べ
つながっていたら最短距離と手前リストを更新したもの
つながっていなかったらもとのまま返す *)
(* koushin1 : eki_t -> eki_t -> eki_t *)
(* #use "c9/metro.ml"
#use "c10/ex10-11.ml"
#use "c12/ex12-1.ml" *)

let koushin1 p q = match p with
	| { namae=n; saitan_kyori=s; temae_list=t } ->
			let kyori = get_ekikan_kyori global_ekikan_list n q.namae in
			if kyori = infinity then
				q
			else if kyori +. s < q.saitan_kyori then
				{ namae=q.namae; saitan_kyori= kyori +. s; temae_list=q.namae :: t}
			else
				q

(* テスト *)
(* 駅の例 *)
let eki1 = {namae="池袋"; saitan_kyori = infinity; temae_list = []}
let eki2 = {namae="新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]}
let eki3 = {namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]}
let eki4 = {namae="後楽園"; saitan_kyori = infinity; temae_list = []}

let test1 = koushin1 eki3 eki1 = eki1
let test2 = koushin1 eki3 eki2 = eki2
let test3 = koushin1 eki3 eki3 = eki3
let test4 = koushin1 eki3 eki4 = {namae="後楽園"; saitan_kyori = 1.8; temae_list = ["後楽園"; "茗荷谷"]}
let test5 = koushin1 eki2 eki1 = {namae="池袋"; saitan_kyori = 3.0; temae_list = ["池袋"; "新大塚"; "茗荷谷"]}
let test6 = koushin1 eki2 eki2 = eki2
let test7 = koushin1 eki2 eki3 = eki3
let test8 = koushin1 eki2 eki4 = eki4
