(* eki_t list 型のリストを受け取り「最短距離最小の駅」と「最短距離最小の駅以外からなるリスト」を返す *)
(* saitan_wo_bunri : eki_t list -> (eki_t, eki_t list) *)
#use "c12/ex12-1.ml"
let rec minimum fn lst min = match lst with
	| [] -> min
	| min_first :: min_rest ->
		if (fn min_first) < (fn min) then
			minimum fn min_rest min_first
		else
			minimum fn min_rest min

let saitan_wo_bunri eki_lst =
	let fn_saitan = (fun x -> x.saitan_kyori) in
	let saitan =
		minimum fn_saitan eki_lst {namae=""; saitan_kyori=infinity; temae_list=[]}
	in
	let except_saitan_lst = List.filter (fun x -> x <> saitan) eki_lst in
	(saitan, except_saitan_lst)

(* テスト *)
let eki1 = {namae="test1"; saitan_kyori=1.5; temae_list=[]}
let eki2 = {namae="test2"; saitan_kyori=1.9; temae_list=[]}
let eki3 = {namae="test3"; saitan_kyori=0.9; temae_list=[]}
let eki4 = {namae="test4"; saitan_kyori=infinity; temae_list=[]}
let test1 = saitan_wo_bunri [eki1; eki2] = (eki1, [eki2])
let test2 = saitan_wo_bunri [eki2; eki1; eki3] = (eki3, [eki2; eki1])
let test3 = saitan_wo_bunri [eki2; eki4; eki3] = (eki3, [eki2; eki4])