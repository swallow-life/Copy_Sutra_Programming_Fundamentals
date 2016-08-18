(* rb_tree_t型の木を受け取ったら赤の連続があるか調べる。 *)
(* 連続がある場合、連続を解消するように変更した木を返す。 *)
#use "c20/ex20-1.ml"
(* balance : rb_tree_t -> rb_tree_t *)
let rec balance tree = match tree with
| Node(Node(Node(a, x_key, x_val, Red, b), y_key, y_val, Red, c), z_key, z_val, Black, d)
| Node(Node(a, x_key, x_val, Red, Node(b, y_key, y_val, Red, c)), z_key, z_val, Black, d)
| Node(a, x_key, x_val, Black, Node(Node(b, y_key, y_val, Red, c), z_key, z_val, Red, d))
| Node(a, x_key, x_val, Black, Node(b, y_key, y_val, Red, Node(c, z_key, z_val, Red, d)))
-> Node(Node(a, x_key, x_val, Black, b), y_key, y_val, Red, Node(c, z_key, z_val, Black, d))
| _
-> tree
(* テスト *)
let rb_tree1 =
  Node (Node (Node (Empty, 10, "x", Red, Empty), 13, "y", Red, Empty), 15, "z", Black, Empty)
let rb_tree2 =
  Node (Node (Empty, 10, "x", Red, Node (Empty, 13, "y", Red, Empty)), 15, "z", Black, Empty)
let rb_tree3 =
  Node (Empty, 10, "x", Black, Node (Node (Empty, 13, "y", Red, Empty), 15, "z", Red, Empty))
let rb_tree4 =
  Node (Empty, 10, "x", Black, Node (Empty, 13, "y", Red, Node (Empty, 15, "z", Red, Empty)))
let exp_rb_tree =
  Node (Node (Empty, 10, "x", Black, Empty), 13, "y", Red, Node (Empty, 15, "z", Black, Empty))
let empty_rb_tree = Empty
let test1 = balance rb_tree1 = exp_rb_tree
let test2 = balance rb_tree2 = exp_rb_tree
let test3 = balance rb_tree3 = exp_rb_tree
let test4 = balance rb_tree4 = exp_rb_tree
let test5 = balance empty_rb_tree = empty_rb_tree