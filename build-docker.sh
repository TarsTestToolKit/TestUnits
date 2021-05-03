#!/bin/bash

# docker build . -t test-units

docker run -v $(pwd):/root/src mcfranklee/tars-buildenv:latest sh -c /root/src/build.sh