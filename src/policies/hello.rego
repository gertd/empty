package policies.hello

default allowed = false
default version = 9

allowed {
    input.version == version
}

