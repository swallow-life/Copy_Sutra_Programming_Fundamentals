(* 漢字の駅名を二つとekikan_tree_t型を受けとって、その2駅間の距離を返す *)
(* get_ekikan_kyori : string -> string -> ekikan_tree_t -> float *)
#use "c9/metro.ml"
#use "c17/ex17-11.ml"
#use "c17/ex17-13.ml"
let rec get_ekikan_kyori first_ekimei second_ekimei tree = match tree with
	| Empty -> infinity
	| Node(left_tree, ekimei, kyori_lst, right_tree) ->
			if first_ekimei = ekimei then
				assoc second_ekimei kyori_lst
			else if first_ekimei < ekimei then
				get_ekikan_kyori first_ekimei second_ekimei left_tree
			else
				get_ekikan_kyori first_ekimei second_ekimei right_tree
(* テスト *)
let ekikan_tree = inserts_ekikan Empty global_ekikan_list
let test1 = get_ekikan_kyori "茗荷谷" "新大塚" Empty = infinity
let test2 = get_ekikan_kyori "茗荷谷" "新大塚" ekikan_tree = 1.2
let test3 = get_ekikan_kyori "茗荷谷" "池袋" ekikan_tree = infinity