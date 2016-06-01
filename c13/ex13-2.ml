(* person_t型のリストを受け取りその中の人の名前のリストを返す *)
(* person_namae : person_t list -> string list *)
#use "c8/ex8-3.ml"
#use "c8/persons.ml"
let take_namae_fn person = person.namae
let rec person_namae lst take_fn = List.map take_fn lst
(* match lst with *)
(* 	| [] -> []
	| head :: rest ->
			take_fn head :: person_namae rest take_fn *)

(* テスト *)
let test1 = person_namae [] take_namae_fn =[]
let test2 = person_namae [person1; person2; person3] take_namae_fn = ["浅井"; "宮原"; "中村"]

let take_taijyuu_fn person = person.taijyuu_kg
let test3 = person_namae [person1; person2; person3] take_taijyuu_fn = [58.5; 55.0; 63.0]