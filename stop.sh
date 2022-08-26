#!/bin/bash

# Stopping proxy
cd proxy && docker-compose down && cd ../

# Stopping microservices
cd microservices && ./stop.sh && cd ../