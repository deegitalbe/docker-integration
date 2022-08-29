#!/bin/bash

# Bootstrapping sail for each microservice.
for d in */ ; do
    cd $d && ../../_includes/scripts/bootstrap/sail.sh $1 && cd ../
done