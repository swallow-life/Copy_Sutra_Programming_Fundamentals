(* 駅名、最短距離、最短の駅経路のリストを持つレコード型 *)
type eki_t = {
	namae	: string; (* 駅名 *)
	saitan_kyori	: float; (* 最短距離 *)
	temae_list	: string list (* 駅名のリスト *)
}