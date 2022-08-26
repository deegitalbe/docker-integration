#!/bin/bash

# Stopping proxy
cd proxy && ./stop.sh && cd ../

# Stopping microservices
cd microservices && ./stop.sh && cd ../