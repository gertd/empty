SHELL 	   := $(shell which bash)

NO_COLOR   :=\033[0m
OK_COLOR   :=\033[32;01m
ERR_COLOR  :=\033[31;01m
WARN_COLOR :=\033[36;01m
ATTN_COLOR :=\033[33;01m

.PHONY: all 
all: login build tag push logout

.PHONY: login
login:
	@echo -e "$(ATTN_COLOR)==> $@ $(NO_COLOR)"

.PHONY: build
build:
	@echo -e "$(ATTN_COLOR)==> $@ $(NO_COLOR)"
	policy build src -t opcr.io/gertd/empty:$(svu patch --strip-prefix)

.PHONY: tag
tag:
	@echo -e "$(ATTN_COLOR)==> $@ $(NO_COLOR)"

.PHONY: push
push:
	@echo -e "$(ATTN_COLOR)==> $@ $(NO_COLOR)"
	policy push opcr.io/gertd/empty:$(svu --strip-prefix)

.PHONY: logout
logout:
	@echo -e "$(ATTN_COLOR)==> $@ $(NO_COLOR)"


.PHONE: update
update:
	git add .
	git commit -am "update"
	tag=$(svu --strip-prefix)
	git tag ${tag}
	policy build src -t opcr.io/gertd/empty:${tag}
	policy push opcr.io/gertd/empty:${tag}
