#!/bin/bash

# Cloning repositories
../_private/clone_repos.sh git@github.com:henrotaym/media.trustup.io.git \
    git@github.com:henrotaym/messaging.trustup.io.git

# Creating applications network.
docker network create -d bridge applications

# Bootstrapping sail for each microservice.
for d in */ ; do
    cd $d && ../../_private/bootstrap_sail.sh $1 && cd ../
done

# Starting
./start.sh