.PHONY: release

GO ?= go
NAME = gotmpl

release:
	mkdir -p bin
	GOOS=linux GOARCH=amd64 $(GO) build -o bin/$(NAME) .
	(cd bin && tar cvfz $(NAME)_linux_amd64.tgz $(NAME))
