#!/bin/bash

mkdir $1

cd $1

git clone $2 .

docker-compose build --no-cache

cd ../