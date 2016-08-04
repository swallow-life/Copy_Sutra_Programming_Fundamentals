(* person_t型を受け取ったら最初のA型の人を返す。
A型の人がいない場合はNoneを返す。 *)
#use "c8/ex8-3.ml"
(* first_A : person_t list -> person_t option *)
let rec first_A person_list = match person_list with
|	[] -> None
| first :: rest ->
		if first.ketsuekigata = "A" then
			Some first
		else
			first_A rest