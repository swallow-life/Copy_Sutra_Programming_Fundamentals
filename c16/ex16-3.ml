let koushin p v lst =
	List.map (fun { namae=n; saitan_kyori=s; temae_list=t } ->
		let kyori = get_ekikan_kyori lst n p.namae in
		if kyori = infinity then
			p
		else if kyori +. s < p.saitan_kyori then
			{ namae=p.namae; saitan_kyori=kyori +. s; temae_list=p.namae :: t }
		else
			p
	) v
