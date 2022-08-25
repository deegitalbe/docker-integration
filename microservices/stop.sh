#!/bin/bash
for d in */ ; do
    cd $d && ./vendor/bin/sail down && cd ../
done
docker network rm applications