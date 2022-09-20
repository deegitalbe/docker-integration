#!/bin/bash

# Copy environment
cp .env.docker .env

# Add sensitive environment values from CDN
echo >> .env
curl https://environment.trustup.io.test:4000 >> .env