#!/bin/bash

export GOOS=linux
export GOARCH=amd64
export CGO_ENABLED=0

mkdir -p build

go build -o build/h2s github.com/goshinobi/h2sproxy/cmd/h2s

docker build -t goshinobi/h2s -f Dockerfile .

rm -rf build

