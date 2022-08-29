#!/bin/bash

# Bootstrapping environment CDN
../_includes/scripts/bootstrap/nginx.sh environment \
    git@github.com:henrotaym/environment.trustup.io.trustup.io.git

# Starting environment CDN
cd environment && docker-compose up -d

# Bootstrapping proxy
../_includes/scripts/bootstrap/nginx.sh proxy \
    git@github.com:henrotaym/nginx-proxy.trustup.io.git
