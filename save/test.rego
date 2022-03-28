package policies.test

import future.keywords.in

default only_super_user_allowed_to_update_pull_schedule = false
default only_super_user_allowed_to_update_pull_schedule_future = false

only_super_user_allowed_to_update_pull_schedule {
	some i
	"super-admin" = input.user.attributes.roles[i]
}

test_super_admin_can_set_pull_schedule {
	request_data := {
		"resource": {
			"permissions": ["some permission"],
			"body": {"pull_schedule": {}},
		},
		"user": {"attributes": {"roles": ["super-admin"]}},
	}

	only_super_user_allowed_to_update_pull_schedule with input as request_data
}

only_super_user_allowed_to_update_pull_schedule_future {
	"super-admin" in input.user.attributes.roles
}

test_super_admin_can_set_pull_schedule_future {
	request_data := {
		"resource": {
			"permissions": ["some permission"],
			"body": {"pull_schedule": {}},
		},
		"user": {"attributes": {"roles": ["super-admin"]}},
	}

	only_super_user_allowed_to_update_pull_schedule_future with input as request_data
}
