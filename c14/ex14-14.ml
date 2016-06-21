(* 文字列のリストを受け取りすべての要素を一つの文字列に結合して返す *)
(* concat : string list -> string *)
let concat list = List.fold_right (^) list ""
(* テスト *)
let test1 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬"
let test2 = concat [] = ""
let test3 = concat ["1"] = "1"