module Tree : sig
	type ('a, 'b) t
	(* キーが'a型,値が'b型の木の型。型の中身は非公開 *)

	val empty : ('a, 'b) t
(* 	使い方：empty *)
(* 	空の木 *)

	val insert : ('a, 'b) t -> 'a -> 'b -> ('a, 'b) t
(* 	使い方：insert tree key value *)
(* 木treeにキーkeyと値valueを挿入した木を返す *)
(* キーが既に存在していたら新しい値に置き換える *)

	val search : ('a, 'b) t -> 'a -> 'b
(* 	使い方：search tree key *)
(* 	木treeの中からキーkeyに対応する値を探して返す *)
(* 	みつからなければNot_foundをraiseする *)
end = struct
	(* 2分探索木を表す型 *)
	type ('a, 'b) t = Empty
									| Node of ('a, 'b) t * 'a * 'b * ('a, 'b) t
	(* 空の木 *)
	let empty = Empty

	(* 目的：tree にキーが k で値が v を挿入した木を返す *)
	(* insert : ('a, 'b) t -> 'a -> 'b -> ('a, 'b) t *)
	let rec insert tree k v = match tree with
	| Empty -> Node (Empty, k, v, Empty)
	| Node (left, key, value, right) ->
			if k = key then
				Node (left, key, v, right)
			else if k < key then
				Node (insert left k v, key, value, right)
			else
				Node (left, key, value, insert right k v)

	(* 目的：tree の中のキー k に対応する値を探して返す *)
	(* 見つからなければ例外 Not_found を返す *)
	(* search ; ('a, 'b) t -> 'a -> 'b *)
	let rec search tree k = match tree with
	| Empty -> raise Not_found
	| Node (left, key, value, right) ->
			if k = key then
				value
			else if k < key then
				search left k
			else
				search right k
end