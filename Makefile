.PHONY: release default

GO ?= go
NAME = gotmpl

default:
	@echo "targets:"
	@echo "- release"

release:
	go run github.com/goreleaser/goreleaser/v2 release --auto-snapshot --clean
