#!/usr/bin/env bash

git add .
git commit -am "update"
git tag $(svu patch)

policy build src -t opcr.io/gertd/empty:$(svu --strip-prefix)
policy push opcr.io/gertd/empty:$(svu --strip-prefix)

policy tag opcr.io/gertd/empty:$(svu --strip-prefix)  opcr.io/gertd/empty:0.0
policy push opcr.io/gertd/empty:0.0

policy tag opcr.io/gertd/empty:$(svu --strip-prefix)  opcr.io/gertd/empty:0
policy push opcr.io/gertd/empty:0
