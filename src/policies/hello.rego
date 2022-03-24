package policies.hello

default allowed = false
default version = 15

allowed {
    input.version == version
}
