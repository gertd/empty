package policies.hello

default allowed = false
default version = 13

allowed {
    input.version == version
}
