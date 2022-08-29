#!/bin/bash

# Creating required network
./_includes/scripts/create_network.sh

# Bootstrapping private services
cd _private && ./bootstrap.sh && cd ../

# Starting environment CDN (used by projects to retrieve private env variable)
cd _private/environment && docker-compose up -d && cd ../../

# Bootstrapping microservices
cd microservices && ./bootstrap.sh $1 && cd ../

# Stopping environment CDN
cd _private/environment && docker-compose down