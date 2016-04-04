(* 合計点と平均点を返す *)
(* goukei_to_heikin : int -> int -> int -> int -> int -> (int * int) *)
let goukei_to_heikin kokugo suugaku eigo rika syakai =
	(kokugo + suugaku + eigo + rika + syakai, (kokugo + suugaku + eigo + rika + syakai) / 5)

(* テスト *)
let test1 = goukei_to_heikin 100 100 100 100 100 = (500, 100)
let test2 = goukei_to_heikin 0 0 0 0 0 = (0, 0)
let test3 = goukei_to_heikin 70 60 80 90 72 = (372, 74)