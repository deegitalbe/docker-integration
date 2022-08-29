#!/bin/bash

# Cloning repositories
../_includes/scripts/clone_repos.sh git@github.com:henrotaym/media.trustup.io.git \
    git@github.com:henrotaym/messaging.trustup.io.git

# Creating network if needed.
../_includes/scripts/create_network.sh

# Bootstrapping sail for each microservice.
for d in */ ; do
    cd $d && ../../_includes/bootstrap/sail.sh $1 && cd ../
done