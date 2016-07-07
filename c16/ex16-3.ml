let koushin p v lst =
	List.map (fun q -> match q with
		| { namae=n; saitan_kyori=s; temae_list=t } ->
		let kyori = get_ekikan_kyori lst p.namae n in
		if kyori = infinity then
			q
		else if kyori +. p.saitan_kyori < s then
			{ namae=n; saitan_kyori=kyori +. p.saitan_kyori; temae_list=n :: p.temae_list }
		else
			q
	) v
