#!/bin/bash -ex

docker run -v $(pwd):/liftinstall -t yuzuemu/build-environments:linux-liftinstall /bin/bash /liftinstall/.travis/build.sh $(id -u) $(id -g)
