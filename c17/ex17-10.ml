(* 駅名(漢字)、[その駅に直接つながっている駅名(漢字)、その駅までの距離]の組のリストを持つ木の型 *)
type ekikan_tree_t =
	| Empty
	| Node of ekikan_tree_t * string * (string * float) list * ekikan_tree_t
(* テスト *)
(* let empty = Empty *)
(* let node1 = Node (empty, "茗荷谷", [("新大塚", 1.2); ("後楽園", 1.8)], empty) *)