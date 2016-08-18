module Set : sig
	type 'a t
	val empty : 'a t
	val singleton : 'a -> 'a t
	val union : 'a t -> 'a t -> 'a t
	val inter : 'a t -> 'a t -> 'a t
	val diff : 'a t -> 'a t -> 'a t
	val mem : 'a -> 'a t -> bool
end = struct
(* #use "c20/ex20-1.ml"
#use "c20/ex20-2.ml"
#use "c20/ex20-3.ml"
#use "c20/ex20-4.ml" *)
	type 'a t = 'a list

	let empty = []

	let singleton elem = [elem]

	let union a b = a @ b

	let inter a b =
		List.fold_left (
			fun lst elem ->
				if List.mem elem b then
					elem :: lst
				else
					lst
		) [] a

	let diff a b =
		List.fold_left (
			fun lst elem ->
				if List.mem elem b then
					lst
				else
					elem :: lst
		) [] a

	let mem elem set = List.mem elem set
end