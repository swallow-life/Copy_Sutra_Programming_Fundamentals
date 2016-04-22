(* 血液型がA型の人の数を返す *)
(* count_ketsueki_A : person_t list -> int *)
#use "c8/ex8-3.ml"
let rec count_ketsueki_A list = match list with
	| [] -> 0
	| {namae=n; shinchou_m=s; taijyuu_kg=t; tanjyoubi_tsukihi=b; ketsuekigata=k} as full :: rest ->
			if k = "A" then 1 + count_ketsueki_A rest
									else count_ketsueki_A rest
(* テスト *)
let person_A = {namae="ss"; shinchou_m=1.55; taijyuu_kg=55.5; tanjyoubi_tsukihi=(1,1); ketsuekigata="A"}
let person_O = {namae="oo"; shinchou_m=1.65; taijyuu_kg=50.5; tanjyoubi_tsukihi=(3,19); ketsuekigata="O"}
let test1 = (count_ketsueki_A [] = 0, "empty test")
let test2 = count_ketsueki_A [ person_A ] = 1
let test3 = count_ketsueki_A [ person_O; person_A; person_A ] = 2
let test4 = count_ketsueki_A [ person_O; person_O; person_O ] = 0