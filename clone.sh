#!/bin/bash

# Bootstrapping private services
cd _private && ./clone.sh && cd ../

# Bootstrapping microservices
cd microservices && ./clone.sh $1 && cd ../