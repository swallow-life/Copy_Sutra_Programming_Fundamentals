(* 目的：誕生日（月と日）を受け取ると星座を返す *)
(* seiza : int -> int -> string *)
let seiza month day =
	if month = 1 then
		if 1 <= day && day <= 20 then "Capricorn"
		else if 21 <= day && day <= 31 then "Aquarius"
		else ""
	else if month = 2 then
		if 1 <= day && day <= 19 then "Aquarius"
		else if 20 <= day && day <= 29 then "Pisces"
		else ""
	else if month = 3 then
		if 1 <= day && day <= 20 then "Pisces"
		else if 21 <= day && day <= 31 then "Aries"
		else ""
	else if month = 4 then
		if 1 <= day && day <= 20 then "Aries"
		else if 21 <= day && day <= 30 then "Taurus"
		else ""
	else if month = 5 then
		if 1 <= day && day <= 20 then "Taurus"
		else if 21 <= day && day <= 31 then "Gemini"
		else ""
	else if month = 6 then
		if 1 <= day && day <= 21 then "Gemini"
		else if 22 <= day && day <= 30 then "Cancer"
		else ""
	else if month = 7 then
		if 1 <= day && day <= 23 then "Cancer"
		else if 24 <= day && day <= 31 then "Leo"
		else ""
	else if month = 8 then
		if 1 <= day && day <= 23 then "Leo"
		else if 24 <= day && day <= 31 then "Virgo"
		else ""
	else if month = 9 then
		if 1 <= day && day <= 23 then "Virgo"
		else if 24 <= day && day <= 30 then "Libra"
		else ""
	else if month = 10 then
		if 1 <= day && day <= 23 then "Libra"
		else if 23 <= day && day <= 31 then "Scorpio"
		else ""
	else if month = 11 then
		if 1 <= day && day <= 22 then "Scorpio"
		else if 23 <= day && day <= 30 then "Sagittarius"
		else ""
	else if month = 12 then
		if 1 <= day && day <= 22 then "Sagittarius"
		else if 23 <= day && day <= 31 then "Capricorn"
		else ""
	else
		"under construction"

(* テスト *)
let test1 = seiza 4 20 = "Aries"
let test2 = seiza 5 20 = "Taurus"
let test4 = seiza 6 21 = "Gemini"
let test3 = seiza 7 23 = "Cancer"
let test5 = seiza 8 23 = "Leo"
let test6 = seiza 9 23 = "Virgo"
let test7 = seiza 10 23 = "Libra"
let test8 = seiza 11 22 = "Scorpio"
let test9 = seiza 12 22 = "Sagittarius"
let test10 = seiza 1 20 = "Capricorn"
let test11 = seiza 2 19 = "Aquarius"
let test12 = seiza 3 20 = "Pisces"
