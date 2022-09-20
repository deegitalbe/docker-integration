#!/bin/bash

# Bootstrapping environment.
../_includes/scripts/bootstrap/copy_env.sh

# Building images
docker-compose build --no-cache .