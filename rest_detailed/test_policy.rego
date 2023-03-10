package rest_detailed

test_car_create_negative {
	in = {
		"method": "POST",
		"path": ["cars"],
		"user": "alice",
	}
	allow == false with input as in
}

test_car_create_positive {
	in = {
		"method": "POST",
		"path": ["cars"],
		"user": "charlie",
	}
	allow == true with input as in
}
