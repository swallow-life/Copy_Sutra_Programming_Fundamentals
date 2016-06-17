(* concat : string list -> string *)
let concat list = List.fold_right (fun acc x -> acc ^ x) list ""

(* テスト *)
let test1 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬"
let test2 = concat [] = ""
let test3 = concat ["1"] = "1"