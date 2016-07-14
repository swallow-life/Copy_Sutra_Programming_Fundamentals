(* 木を受け取ったらすべての値を2倍にした木を返す *)
(* tree_double : tree_t -> tree_t *)
let rec tree_double tree =
	let f n = n * 2 in
	match tree with
	| Empty -> Empty
	| Leaf (n) -> Leaf (f n)
	| Node (t1, n, t2) -> Node(tree_double t1, (f n), tree_double t2)
(* テスト *)
let test1 = tree_double Empty = Empty
let test2 = tree_double (Leaf(3)) = Leaf(6)
let test3 = tree_double (Node (Leaf(3), 4, Leaf(5))) = Node(Leaf(6), 8, Leaf(10))