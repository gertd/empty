git add .
git commit -am "update"
tag=$(svu --strip-prefix)
git tag ${tag}

policy build src -t opcr.io/gertd/empty:${tag}

policy push opcr.io/gertd/empty:${tag}

policy tag opcr.io/gertd/empty:${tag}  opcr.io/gertd/empty:0.0
policy push opcr.io/gertd/empty:0.0

policy tag opcr.io/gertd/empty:${tag}  opcr.io/gertd/empty:0
policy push opcr.io/gertd/empty:0
