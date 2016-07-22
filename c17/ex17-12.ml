(* ekikan_tree_t型の木とekikan_t型の駅間を受け取り、その情報を挿入した木を返す *)
let rec insert_ekikan_ tree ekimei shuten kyori = match tree with
	| Empty -> Node(Empty, ekimei, [(shuten, kyori)], Empty)
	| Node(left, n_ekimei, lst, right) ->
			if ekimei < n_ekimei then
				Node(insert_ekikan_ left ekimei shuten kyori, n_ekimei, lst, right)
			else if ekimei > n_ekimei then
				Node(left, n_ekimei, lst, insert_ekikan_ right ekimei shuten kyori)
			else
				Node(left, n_ekimei, lst @ [(shuten, kyori)], right)
(* insert_ekikan : ekikan_tree_t -> ekikan_t -> ekikan_tree_t *)
let insert_ekikan tree ekikan = match ekikan with
	|	{ kiten = shiten; shuten = shuten; keiyu = keiyu; kyori = kyori; jikan = jikan } ->
			let shiten_added = insert_ekikan_ tree shiten shuten kyori in
			insert_ekikan_ shiten_added shuten shiten kyori
(* テスト *)
let ekikan = {kiten = "新大塚"; shuten = "茗荷谷"; keiyu = "丸ノ内線"; kyori = 1.2; jikan = 2}
let test1 = insert_ekikan Empty ekikan
let node1 = Node (Empty, "茗荷谷", [("後楽園", 1.8)], Empty)
let test2 = insert_ekikan node1 ekikan