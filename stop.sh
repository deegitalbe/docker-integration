#!/bin/bash

# Stopping proxy
cd _private/proxy && docker-compose down && cd ../../

# Stopping microservices
cd microservices && ./stop.sh && cd ../