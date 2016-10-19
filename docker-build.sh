#!/bin/bash
mkdir -p build

docker build -t goshinobi/h2s-build -f build.Dockerfile .
docker run -v `pwd`/build:/build goshinobi/h2s-build
docker build -t goshinobi/h2s -f Dockerfile .

rm -rf build

