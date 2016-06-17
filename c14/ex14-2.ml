(* 学生ひとり分のデータ（名前、点数、成績）を表す型 *)
type gakusei_t = {
  namae : string;       (* 名前 *)
  tensuu : int;         (* 点数 *)
  seiseki : string;     (* 成績 *)
}

(* count_A : gakusei_t list -> int *)
let count_A gakusei_lst =
	let seiseki_lst = List.map (fun x -> x.seiseki) gakusei_lst in
	let seisekiA_lst = List.filter (fun x -> x = "A") seiseki_lst in
	List.length seisekiA_lst

(* テスト *)
(* gakusei_t list 型のデータの例 *)
let lst1 = []
let lst2 = [
	{namae = "asai"; tensuu = 70; seiseki = "B"}
]
let lst3 = [
	{namae = "asai"; tensuu = 70; seiseki = "B"};
  {namae = "kaneko"; tensuu = 85; seiseki = "A"}
]
let lst4 = [
	{namae = "yoshida"; tensuu = 80; seiseki = "A"};
  {namae = "asai"; tensuu = 70; seiseki = "B"};
  {namae = "kaneko"; tensuu = 85; seiseki = "A"}
]

let test1 = count_A lst1 = 0
let test2 = count_A lst2 = 0
let test3 = count_A lst3 = 1
let test4 = count_A lst4 = 2