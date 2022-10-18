#!/bin/sh

gotmpl --template simple.tmpl -s env -s env.{{.ENVIRONMENT}} --output simple.bash
