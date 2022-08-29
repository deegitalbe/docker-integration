#!/bin/bash

# Stopping microservices containers
for d in */ ; do
    cd $d && ./vendor/bin/sail down && cd ../
done

# Removing applications network
../_includes/scripts/remove_network.sh