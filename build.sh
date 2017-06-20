#!/bin/bash

REPO=malachib/esp-open-rtos
BASE_IMAGE=malachib/esp-open-rtos:2017.06.20-base
TAG=2017.06.20-mal-lwip
GIT_REPO=https://github.com/malachi-iot/esp-open-rtos.git
GIT_BRANCH=lwip2

docker build --build-arg RTOS_REPO=$GIT_REPO \
  --build-arg RTOS_REPO_BRANCH=$GIT_BRANCH \
  --build-arg BASE_IMAGE="$BASE_IMAGE" \
   -t "$REPO:$TAG" .
