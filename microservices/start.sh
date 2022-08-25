#!/bin/bash
docker network create -d bridge applications
for d in */ ; do
    cd $d && ./vendor/bin/sail up -d && cd ../
done