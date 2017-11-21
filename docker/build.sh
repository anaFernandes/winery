#!/bin/bash
DIR=$(pwd)

docker build -t winery:latest $DIR
docker run --link mysql:db -ti --rm -v $DIR/../app:/home/winery/app winery
