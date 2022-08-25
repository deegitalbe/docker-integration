#!/bin/bash
# COPY DOCKER ENV
cp .env.docker .env
# INSTALL VENDOR DEPENDENCIES
docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v $(pwd):/var/www/html \
    -w /var/www/html \
    laravelsail/php81-composer:latest \
    composer install --ignore-platform-reqs
# Build sail image
./vendor/bin/sail build --no-cache