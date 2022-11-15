#!/bin/bash

# Bootstrapping each microservice.
for d in */ ; do
    # Copy environment
    cd $d && ../../_includes/scripts/bootstrap/copy_env.sh
    if [ "$d" == "websocket-trustup-io/" ]
    then
        # Build image using docker-compose
        docker-compose build --no-cache
    else
        # Copy certificates
        ../../_includes/scripts/bootstrap/copy_certs.sh
        # Bootstrap sail
        ../../_includes/scripts/bootstrap/sail.sh $1
    fi
    cd ../
done