(* person_t型のリストから指定した血液型の人の数を返す *)
(* count_ketsueki : person_t list -> string -> int *)
#use "c8/ex8-3.ml"
#use "c8/persons.ml"

let rec count_ketsueki lst ketsueki = match lst with
	| [] -> 0
	| {namae=n; shinchou_m=s; taijyuu_kg=t; tanjyoubi_tsukihi=tan; ketsuekigata=k} :: rest ->
			let count = count_ketsueki rest ketsueki in
			if k = ketsueki then
				count + 1
			else
				count
(* テスト *)
let test1 = count_ketsueki [] "A" = 0
let test2 = count_ketsueki [person1;person2;person3] "A" = 1
let test2 = count_ketsueki [person1;person2;person3] "O" = 1