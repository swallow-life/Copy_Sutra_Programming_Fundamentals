(* ekikan_tree_t型の木とekikan_t list型の駅間のリストを受け取って
リストの中の駅間をすべて挿入した木を返す *)
#use "c17/ex17-12.ml"
(* inserts_ekikan : ekikan_tree_t -> ekikan_t list -> ekikan_tree_t *)
let rec inserts_ekikan ekikan_tree ekikan_list = match ekikan_list with
	| [] -> ekikan_tree
	| first :: rest -> insert_ekikan (inserts_ekikan ekikan_tree rest) first

(* テスト *)
let ekikan_lst1 = [ {kiten = "新大塚"; shuten = "茗荷谷"; keiyu = "丸ノ内線"; kyori = 1.2; jikan = 2} ]
let ekikan_lst2 = [
	{kiten = "新大塚"; shuten = "茗荷谷"; keiyu = "丸ノ内線"; kyori = 1.2; jikan = 2};
	{kiten="代々木上原"; shuten="代々木公園"; keiyu="千代田線"; kyori=1.0; jikan=2};
]
let test1 = inserts_ekikan Empty []
let test2 = inserts_ekikan Empty ekikan_lst1
let test3 = inserts_ekikan Empty ekikan_lst2