package policies.hello

default allowed = false
default version = 7

allowed {
    input.version == version
}

