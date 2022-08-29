#!/bin/bash

# Bootstrapping environment CDN
../_includes/scripts/bootstrap/nginx.sh environment \
    git@github.com:henrotaym/environment.trustup.io.git

# Starting environment CDN
cd environment && docker-compose up -d && cd ../

# Bootstrapping proxy
../_includes/scripts/bootstrap/nginx.sh proxy \
    git@github.com:henrotaym/nginx-proxy.git
