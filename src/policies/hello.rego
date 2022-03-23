package policies.hello

default allowed = false
default version = 8

allowed {
    input.version == version
}

