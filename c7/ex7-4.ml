(* 2つの座標を受け取って中点を返す *)
(* chuten : (int * int)first_pair -> (int * int)second_pair -> (int * int) *)
let chuten first_pair second_pair = match first_pair with
	(x1, y1) -> match second_pair with
		(x2, y2) -> ((x1 + x2) / 2, (y1 + y2) / 2)

(* テスト *)
let test1 = chuten (1, 1) (3, 3) = (2, 2)
