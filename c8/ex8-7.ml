(* 駅と駅の接続情報を格納する *)
type ekikan_t = {
	kiten : string;
	shuten : string;
	keiyu : string;
	kyori_km : float;
	jikan_min : int;
}
