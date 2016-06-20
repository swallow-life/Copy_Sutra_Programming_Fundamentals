let koushin p v =
	List.map (fun { namae=n; saitan_kyori=s; temae_list=t } ->
		let kyori = get_ekikan_kyori global_ekikan_list n p.namae in
		if kyori = infinity then
			p
		else if kyori +. s < p.saitan_kyori then
			{ namae=p.namae; saitan_kyori=kyori +. s; temae_list=p.namae :: t }
		else
			p
	) v