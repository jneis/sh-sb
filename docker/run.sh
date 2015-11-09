#!/bin/bash

echo "Usage: bash run.sh <image> <name> <shared-folder> <port>"

IMAGE=$1
CONTAINER_NAME=$2
SHARED_FOLDER=$(readlink -f $3)
PORT=$4

if [$PORT == '']
then
  docker run -it --rm --name $CONTAINER_NAME -v $SHARED_FOLDER:/workspace $IMAGE bash
else
  docker run -it --rm --name $CONTAINER_NAME -v $SHARED_FOLDER:/workspace -p $PORT:$PORT $IMAGE bash
fi

