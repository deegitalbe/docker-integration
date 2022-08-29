#!/bin/bash

# Starting microservices
cd microservices && ./start.sh && cd ../

# Starting proxy
cd _private/proxy && docker-compose up -d && cd ../../