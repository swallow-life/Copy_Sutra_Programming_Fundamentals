(* 直前に確定した駅pと未確定の駅のリストvを受け取り未確定の駅のリストを返す *)
(* koushin : eki_t -> eki_t list -> eki_t list *)
#use "c13/ex13-7.ml"
let koushin p v =
	let f = koushin1 p q in
	List.map f v