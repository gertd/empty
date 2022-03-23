package policies.hello

default allowed = false
default version = 5

allowed {
    input.version == version
}

