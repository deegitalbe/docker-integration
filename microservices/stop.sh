#!/bin/bash

# Stopping microservices containers
for d in */ ; do
    cd $d && ./vendor/bin/sail down && cd ../
done

# Removing applications network
docker network rm applications