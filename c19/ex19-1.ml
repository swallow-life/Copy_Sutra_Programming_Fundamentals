(* 漢字の駅名を二つとekikan_tree_t型を受けとって、その2駅間の距離を返す *)
(* get_ekikan_kyori : string -> string -> ekikan_tree_t -> float *)
#use "c9/metro.ml"
(* #use "c18/ex18-3.ml" *)
(* #use "c17/ex17-10.ml" *)
(* #use "c17/ex17-13.ml" *)
#use "c19/tree.ml"
let rec get_ekikan_kyori first_ekimei second_ekimei tree =
	List.assoc second_ekimei (Tree.search tree first_ekimei)

(* テスト用メソッド *)
(* ekikan_tree_t型の木とekikan_t型の駅間を受け取り、その情報を挿入した木を返す *)
let rec insert_ekikan_ tree ekimei1 ekimei2 kyori =
	let lst = try Tree.search tree ekimei1 with Not_found -> [] in
	Tree.insert tree ekimei1 ((ekimei2, kyori) :: lst)

(* insert_ekikan : ekikan_tree_t -> ekikan_t -> ekikan_tree_t *)
let insert_ekikan tree ekikan = match ekikan with
	|	{ kiten = shiten; shuten = shuten; keiyu = keiyu; kyori = kyori; jikan = jikan } ->
			let shiten_added = insert_ekikan_ tree shiten shuten kyori in
			insert_ekikan_ shiten_added shuten shiten kyori

let rec inserts_ekikan ekikan_tree ekikan_list =
	List.fold_left insert_ekikan ekikan_tree ekikan_list

(* テスト *)
let ekikan_tree = inserts_ekikan Tree.empty global_ekikan_list
let test1 = try get_ekikan_kyori "茗荷谷" "新大塚" Tree.empty = infinity with Not_found -> true
let test2 = get_ekikan_kyori "茗荷谷" "新大塚" ekikan_tree = 1.2
let test3 = try get_ekikan_kyori "茗荷谷" "池袋" ekikan_tree = infinity with Not_found -> true
let test4 = try get_ekikan_kyori "" "池袋" ekikan_tree = infinity with Not_found -> true
