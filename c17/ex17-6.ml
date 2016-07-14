(* 木とint->int型の関数を受け取ったらすべての要素に関数を適用した木を返す *)
(* tree_map : tree_t -> (int -> int) -> tree_t *)
let rec tree_map tree f = match tree with
	| Empty -> Empty
	| Leaf (n) -> Leaf (f n)
	| Node (t1, n, t2) -> Node(tree_map t1 f, (f n), tree_map t2 f)
(* テスト *)
let plus_1 x = x + 1
let test1 = tree_map Empty plus_1 = Empty
let test2 = tree_map (Leaf(3)) plus_1 = Leaf(4)
let test3 = tree_map (Node (Leaf(3), 4, Leaf(5))) plus_1 = Node(Leaf(4), 5, Leaf(6))

let double x = x * 2
let test4 = tree_map Empty double = Empty
let test5 = tree_map (Leaf(3)) double = Leaf(6)
let test6 = tree_map (Node (Leaf(3), 4, Leaf(5))) double = Node(Leaf(6), 8, Leaf(10))
