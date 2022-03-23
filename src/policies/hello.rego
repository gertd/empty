package policies.hello

default allowed = false
default version = 6

allowed {
    input.version == version
}

