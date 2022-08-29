#!/bin/bash

# Copying ssl certificates
cp ../../_includes/ssl/certs/trustup.io.test.* ssl/certs

# Building image
docker-compose build --no-cache