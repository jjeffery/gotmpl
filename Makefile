.PHONY: release

GO ?= go
NAME = gotmpl

release:
	mkdir -p bin
	GOOS=linux GOARCH=amd64 $(GO) build -o bin/$(NAME)_linux_amd64 .
	(cd bin && gzip $(NAME)_linux_amd64)
