#!/bin/bash

# Cloning proxy repository
git clone git@github.com:henrotaym/nginx-proxy.git .

# Building proxy image
docker-compose build

# Starting
./start.sh