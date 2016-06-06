(* 1: 'a -> 'a *)
let foo1 a = a
(* 2: 'a -> 'b -> 'a *)
let foo2 a b = a
(* 3: 'a -> 'b -> 'b *)
let foo3 a b = b
(* 4: 'a -> ('a -> 'b) -> 'b *)
let foo4 a f = f a
(* 5: ('a -> 'b) -> ('b -> 'c) -> 'a -> 'c *)
let foo5 f g a = g (f a)
