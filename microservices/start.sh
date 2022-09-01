#!/bin/bash

# Creating applications network
../_includes/scripts/create_network.sh

# Starting microservices containers
for d in */ ; do
    cd $d
    if [ test -f ./start.sh ]
    then
        ./start.sh
    else
        ./vendor/bin/sail up -d
    fi
    cd ../
done