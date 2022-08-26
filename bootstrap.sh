#!/bin/bash

# Bootstrapping microservices
cd microservices && ./bootstrap.sh $1 && cd ../

# Cloning proxy
git clone git@github.com:henrotaym/nginx-proxy.git ./proxy

# Building proxy image
cd proxy && docker-compose build && cd ../