#!/bin/bash
docker network create -d bridge applications
for d in */ ; do
    cd $d && ../../_private/bootstrap_sail.sh && cd ../
done
./start.sh