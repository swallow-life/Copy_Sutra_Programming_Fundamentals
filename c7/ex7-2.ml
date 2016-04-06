(* 名前と成績の組を受け取って、文字列を返す *)
(* seiseki : (string * string) -> string *)
let seiseki pair = match pair with
	(name, ten) -> name ^ "さんの評価は" ^ ten ^ "です"

(* テスト *)
let test1 = seiseki ("foo", "90") = "fooさんの評価は90です"