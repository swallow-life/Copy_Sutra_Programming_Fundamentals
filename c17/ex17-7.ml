(* 木を受け取ったら節と葉が合計いくつあるか返す *)
(* tree_length : tree_t -> int *)
let rec tree_length tree = match tree with
	| Empty -> 0
	| Leaf(n) -> 1
	| Node(t1, n, t2) -> tree_length t1 + 1 + tree_length t2
(* テスト *)
let test1 = tree_length Empty = 0
let test2 = tree_length (Leaf(3)) = 1
let test3 = tree_length (Node(Leaf(3), 1, Leaf(4))) = 3
