(* person_t型のデータのリストを受け取って各血液型の総数を組にして返す *)
(* ketsueki_shukei : person_t list -> int * int * int * int *)
#use "c8/ex8-3.ml"
let rec ketsueki_shukei list = match list with
	| [] -> (0,0,0,0)
	| {namae=n; shinchou_m=s; taijyuu_kg=t; tanjyoubi_tsukihi=tan; ketsuekigata=k;} :: rest ->
			let (a, b, o, ab) = ketsueki_shukei rest in
			if 			k = "A" then (a + 1, b, o, ab)
			else if k = "B" then (a, b + 1, o, ab)
			else if k = "O" then (a, b, o + 1, ab)
			else 								 (a, b, o, ab + 1)

(* テスト *)
let typeA = {namae="A"; shinchou_m=1.5; taijyuu_kg=60.0; tanjyoubi_tsukihi=(5,6); ketsuekigata="A"}
let typeB = {namae="B"; shinchou_m=1.5; taijyuu_kg=60.0; tanjyoubi_tsukihi=(5,6); ketsuekigata="B"}
let typeO = {namae="O"; shinchou_m=1.5; taijyuu_kg=60.0; tanjyoubi_tsukihi=(5,6); ketsuekigata="O"}
let typeAB = {namae="AB"; shinchou_m=1.5; taijyuu_kg=60.0; tanjyoubi_tsukihi=(5,6); ketsuekigata="AB"}
let test1 = ketsueki_shukei [typeA; typeAB; typeB; typeO] = (1,1,1,1)
let test2 = ketsueki_shukei [] = (0,0,0,0)
let test3 = ketsueki_shukei [typeA; typeAB; typeB; typeO; typeA; typeAB; typeB; typeO] = (2,2,2,2)