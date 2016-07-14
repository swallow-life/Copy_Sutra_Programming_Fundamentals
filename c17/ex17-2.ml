(* 1月から12月までを表す構成子 *)
type year_t = Jan of int | Feb of int | Mar of int | Apr of int | May of int | Jun of int | Jul of int | Aug of int | Sep of int | Oct of int | Nov of int | Dec of int

let test1 = Jan(31)
let test2 = Feb(28)
let test3 = Mar(31)