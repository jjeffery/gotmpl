.PHONY: release

GO ?= go
NAME = gotmpl

release:
	goreleaser release --audo-snapshot --rm-dist
