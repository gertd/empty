package policies.hello

default allowed = false
default version = 11

allowed {
    input.version == version
}

allowed {
    data.roles.role == "root"
}

roles {
    res.get("roles").roles
}