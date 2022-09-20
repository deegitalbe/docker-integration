#!/bin/bash

# Stopping microservices containers
for d in */ ; do
    cd $d
    if [ -f ./stop.sh ];
    then
        ./stop.sh
    else
        ./vendor/bin/sail down
    fi
    cd ../
done