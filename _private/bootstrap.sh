#!/bin/bash

# Bootstrapping nginx for each directory.
for d in */ ; do
    cd $d && ../../_includes/scripts/bootstrap/nginx.sh && cd ../
done
