(* 赤黒木とキーを受け取ったら、そのキーに対応する値を赤黒木の中から探してくる *)
#use "c20/ex20-1.ml"
(* search : ('a, 'b) rb_tree_t 'a -> 'b *)
let rec search rb_tree key = match rb_tree with
| Empty -> raise Not_found
| Node (l_tree, k, v, c, r_tree) ->
		if key < k then
			search l_tree key
		else if key > k then
			search r_tree key
		else
			v