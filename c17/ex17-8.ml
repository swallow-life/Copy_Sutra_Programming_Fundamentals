(* 木を受け取ったら木の深さを返す *)
(* tree_depth : tree_t -> int *)
let rec tree_depth_ tree depth = match tree with
	| Empty -> depth
	| Leaf(n) -> depth
	| Node(t1, n, t2) -> max (tree_depth_ t1 (depth + 1)) (tree_depth_ t2 (depth + 1))

let tree_depth tree = tree_depth_ tree 0

(* テスト *)
let test1 = tree_depth Empty = 0
let test2 = tree_depth (Node(Leaf(3), 4, Empty)) = 1
let test3 = tree_depth (Node(Leaf(3), 4, (Node(Empty, 5, Leaf(6))))) = 2
