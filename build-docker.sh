#!/bin/bash

# docker build . -t test-units

docker run -v $(pwd):/root/src tarscloud/compiler:latest sh -c /root/src/build.sh
