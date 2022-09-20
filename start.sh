#!/bin/bash

# Creating applications network
./_includes/scripts/create_network.sh

# Starting standalone services
cd standalone && ./start.sh && cd ../

# Starting microservices
cd microservices && ./start.sh && cd ../

# Starting proxy
cd _private/proxy && docker-compose up -d && cd ../../