#!/bin/bash

# Bootstrapping microservices
cd microservices && ./bootstrap.sh $1 && cd ../

# Bootstrapping proxy
cd proxy && ./bootstrap.sh && cd ../