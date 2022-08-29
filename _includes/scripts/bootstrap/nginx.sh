#!/bin/bash

mkdir $1

cd $1

git clone $2 .

cp ../../_includes/ssl/certs/trustup.io.test.* ssl/certs

docker-compose build --no-cache

cd ../