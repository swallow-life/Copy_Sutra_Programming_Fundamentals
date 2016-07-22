type 'a tree_t = Empty | Leaf of 'a | Node of 'a tree_t * 'a * 'a tree_t
let rec sum_tree tree = match tree with
	| Empty -> 0
	| Leaf (n) -> n
	| Node (t1, n, t2) -> sum_tree t1 + n + sum_tree t2
(* Emptyで0を返す、またはNodeで+演算子を使用しているのでint型に型推論される。 *)