package policies.hello

default allowed = false
default version = 10

allowed {
    input.version == version
}

