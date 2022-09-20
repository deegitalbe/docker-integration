#!/bin/bash

# Install vendor dependencies
docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v $(pwd):/var/www/html \
    -w /var/www/html \
    laravelsail/php81-composer:latest \
    composer install --ignore-platform-reqs

# Buil sail image from scratch
./vendor/bin/sail build --no-cache

if [ -f ./bootstrap.sh ];
then
    ./bootstrap.sh
fi