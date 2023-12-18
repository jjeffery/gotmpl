//go:build tools
// +build tools

package main

// Instructions for tracking tool dependencies for a module
// https://go.dev/wiki/Modules#how-can-i-track-tool-dependencies-for-a-module
// This references go issues 25922. The comment in this long issue thread that I found the
// most useful is https://github.com/golang/go/issues/25922#issuecomment-1038394599.
//
// Some points to note:
// - The tools never get installed. Instead of running the command 'wire', run the command
//   'go run github.com/google/wire/cmd/wire'. This will always run the version specified
//    in the go.mod file.
// - *IMPORTANT* If you modify this file, (ie add or remove a tool), you must run the
//    command 'go mod tidy'.

import _ "github.com/goreleaser/goreleaser"
