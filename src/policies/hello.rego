package policies.hello

# default to a "closed" system, 
# only grant access when explicitly granted

default allowed = false
version = 1

allowed {
    input.role == "web-admin"
}

allowed {
    input.version == version
}

