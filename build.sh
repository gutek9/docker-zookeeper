#!/bin/bash

if [ $# -ne 1 ]; then
        echo "Please provide tag. Usage: $0 [TAG]"
        exit 1
fi

IMAGE=gutek9/docker-zookeeper
TAG=$1

docker build . -t $IMAGE:latest && docker tag $IMAGE:latest $IMAGE:$TAG && docker push $IMAGE
