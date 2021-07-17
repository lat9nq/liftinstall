#!/bin/bash -ex

ORIGINAL_UID=$(id -u)
ORIGINAL_GID=$(id -g)

# the UID for the container yuzu user is 1027
sudo chown -R 1027 ./
docker run -v $(pwd):/liftinstall -t yuzuemu/build-environments:linux-liftinstall /bin/bash /liftinstall/.travis/build.sh sudo chown -R ${ORIGINAL_UID}:${ORIGINAL_GID} ./
