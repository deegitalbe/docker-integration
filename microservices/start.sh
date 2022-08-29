#!/bin/bash

# Creating applications network
../_includes/scripts/create_network.sh

# Starting microservices containers
for d in */ ; do
    cd $d && ./vendor/bin/sail up -d && cd ../
done