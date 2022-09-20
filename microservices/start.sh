#!/bin/bash

# Starting microservices containers
for d in */ ; do
    cd $d
    if [ -f ./start.sh ];
    then
        ./start.sh
    else
        ./vendor/bin/sail up -d
    fi
    cd ../
done