package policies.test

only_super_user_allowed_to_update_pull_schedule {
    input.user.attributes.roles["super-admin"]
}

test_super_admin_can_set_pull_schedule {
     request_data := {
         "resource": {
             "permissions": [
                 "some permission"
             ],
             "body": {
                 "pull_schedule": {},
             },
         },
         "user": {
             "attributes": {
                 "roles": [
                     "super-admin"
                 ]
             }
         }
     }

     only_super_user_allowed_to_update_pull_schedule with input as request_data
 }