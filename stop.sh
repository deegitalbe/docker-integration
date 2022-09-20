#!/bin/bash

# Stopping proxy
cd _private/proxy && docker-compose down && cd ../../

# Stopping microservices
cd microservices && ./stop.sh && cd ../

# Stopping standalone services
cd standalone && ./stop.sh && cd ../

# Removing applications network
./_includes/scripts/remove_network.sh