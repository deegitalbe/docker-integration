#!/bin/bash

# Starting microservices
cd microservices && ./start.sh && cd ../

# Starting proxy
cd proxy && ./start.sh && cd ../