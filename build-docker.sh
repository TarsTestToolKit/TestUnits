#!/bin/bash

docker build . -t test-units

docker run -v $(pwd):/root/src test-units /root/build.sh