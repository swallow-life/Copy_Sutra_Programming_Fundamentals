(* 目的：未確定の駅のリスト v を必要に応じて更新したリストを返す *)
#use "c12/ex12-1.ml"
#use "c18/ex18-4.ml"
(* koushin : eki_t -> eki_t list -> ekikan_tree_t -> eki_t list *)
let koushin p v ekikan_tree = match p with
	| {namae = pn; saitan_kyori = ps; temae_list = pt} ->
			List.map (fun q -> match q with
				| {namae = qn; saitan_kyori = qs; temae_list = qt} ->
						try
							let kyori = get_ekikan_kyori pn qn ekikan_tree in
							if ps +. kyori < qs then
								{namae = qn; saitan_kyori = ps +. kyori; temae_list = qn :: pt}
							else
								q
						with
							| Not_found -> q
			) v
