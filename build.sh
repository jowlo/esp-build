#!/bin/bash

. ./setenv.sh

docker build --build-arg RTOS_REPO=$GIT_REPO \
  --build-arg RTOS_REPO_BRANCH=$GIT_BRANCH \
  --build-arg BASE_IMAGE="$BASE_IMAGE" \
  --build-arg CACHEBUST=$(date +%s) \
   -t "$REPO:$TAG" .

docker tag $REPO:$TAG $REPO:latest-$TAG_SUFFIX
