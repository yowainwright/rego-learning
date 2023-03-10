package rest

default allow = false

allow {
	input.method == "GET"
	input.path == ["cars"]
	input.user == "alice"
}

# rego tests
test_car_read_positive {
	in = {
		"method": "GET",
		"path": ["cars"],
		"user": "alice",
	}
	allow == true with input as in
}

test_car_read_negative {
	in = {
		"method": "GET",
		"path": ["nonexistent"],
		"user": "alice",
	}
	allow == false with input as in
}
