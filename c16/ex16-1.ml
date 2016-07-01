(* 整数のリストを受け取って、それまでの数の合計からなるリストを返す *)
(* sum_list : int list -> int list *)
let sum_list int_lst =
	let zero_first_result = List.fold_left
		(fun accm x -> accm @ [List.hd (List.rev accm) + x])
		[0]
		int_lst
	in
	List.tl zero_first_result
(* List.fold_left (+) accm int_lst *)
(* テスト *)
let test1 = sum_list [3; 2; 1; 4] = [3; 5; 6; 10]