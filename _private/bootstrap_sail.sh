#!/bin/bash

# Copy environment
cp .env.docker .env

# Add sensitive environment values from CDN
echo >> .env
curl https://environment.trustup.io.test:4000 -H "Authorization: Basic $1" >> .env

# Install vendor dependencies
docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v $(pwd):/var/www/html \
    -w /var/www/html \
    laravelsail/php81-composer:latest \
    composer install --ignore-platform-reqs

# Buil sail image from scratch
./vendor/bin/sail build --no-cache