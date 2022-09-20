#!/bin/bash

# Bootstrapping sail & environment for each microservice.
for d in */ ; do
    cd $d \
        && ../../_includes/scripts/bootstrap/copy_env.sh \
        && ../../_includes/scripts/bootstrap/sail.sh $1 \
        && cd ../
done