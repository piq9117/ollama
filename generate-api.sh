#!/usr/bin/env bash

GITROOT=$(git rev-parse --show-toplevel)

rm -rf $GITROOT/generated || true

mkdir $GITROOT/generated

oapi-codegen -package ollama_openapi -generate types,gin $GITROOT/docs/openapi.yaml > $GITROOT/generated/ollama_openapi.go
