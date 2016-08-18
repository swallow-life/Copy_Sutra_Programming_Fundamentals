(* 赤黒木とキーと値を受け取って、それと挿入した赤黒木を返す *)
#use "c20/ex20-1.ml"
#use "c20/ex20-2.ml"
(* insert : ('a, 'b) rb_tree_t -> 'a -> 'b -> ('a, 'b) rb_tree_t *)
let insert rb_tree key value =
	let rec ins rb_t = match rb_t with
	| Empty -> Node(Empty, key, value, Red, Empty)
	| Node(l_tree, n_key, n_value, n_color, r_tree) ->
			if key < n_key then
				balance (Node((ins l_tree), n_key, n_value, n_color, r_tree))
			else if key > n_key then
				balance (Node(l_tree, n_key, n_value, n_color, (ins r_tree)))
			else
				Node(l_tree, key, value, n_color, r_tree)
	in match ins rb_tree with
	| Empty -> assert false
	| Node(l, k, v, c, r) -> Node(l, k, v, Black, r)