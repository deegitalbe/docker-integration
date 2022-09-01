#!/bin/bash

# Stopping microservices containers
for d in */ ; do
    cd $d
    if [ test -f ./stop.sh ]
    then
        ./stop.sh
    else
        ./vendor/bin/sail down
    fi
    cd ../
done

# Removing applications network
../_includes/scripts/remove_network.sh