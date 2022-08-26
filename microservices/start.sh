#!/bin/bash

# Creating applications network
docker network create -d bridge applications

# Starting microservices containers
for d in */ ; do
    cd $d && ./vendor/bin/sail up -d && cd ../
done