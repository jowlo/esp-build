#!/bin/bash

REPO=malachib/esp-open-rtos
BASE_IMAGE=malachib/esp-open-sdk:2017.06.20
TAG_PREFIX=2017.06.20
TAG_SUFFIX=mal-lwip
TAG=$TAG_PREFIX-$TAG_SUFFIX
GIT_REPO=https://github.com/malachi-iot/esp-open-rtos.git
GIT_BRANCH=lwip2

docker build --build-arg RTOS_REPO=$GIT_REPO \
  --build-arg RTOS_REPO_BRANCH=$GIT_BRANCH \
  --build-arg BASE_IMAGE="$BASE_IMAGE" \
  --build-arg CACHEBUST=$(date +%s) \
   -t "$REPO:$TAG" .

docker tag $TAG $REPO:latest-$TAG_SUFFIX
