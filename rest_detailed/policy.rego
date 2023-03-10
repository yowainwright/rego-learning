package rest_detailed

default allow = false

allow {
	user_is_employee
	user_is_manager
}

users := {
	"alice": {"manager": "charlie", "title": "salesperson"},
	"bob": {"manager": "charlie", "title": "salesperson"},
	"charlie": {"manager": "dave", "title": "manager"},
	"dave": {"manager": null, "title": "ceo"},
}

user_is_employee {
	users[input.user]
}

user_is_manager {
	u := users[input.user]
	not u.title == "salesperson"
}
