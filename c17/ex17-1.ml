(* 誕生年と現在の年を年号で受け取って年齢を返す *)
type nengou_t = Meiji of int | Taisho of int | Showa of int | Heisei of int
let to_seireki nengou = match nengou with
	| Meiji (n) -> n + 1867
	| Taisho (n) -> n + 1911
	| Showa (n) -> n + 1925
	| Heisei (n) -> n + 1988
(* nenrei : nengo_t -> nengo_t -> int *)
let nenrei birthYear thisYear = (to_seireki thisYear) - (to_seireki birthYear)
(* テスト *)
let test1 = nenrei (Showa(54)) (Heisei(28)) = 37