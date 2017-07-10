#!/bin/bash

# TODO: put in failsafe to quit if requisite env variables aren't present
#. ./setenv.sh

docker build --build-arg RTOS_REPO=$GIT_REPO \
  --build-arg RTOS_REPO_BRANCH=$GIT_BRANCH \
  --build-arg BASE_IMAGE="$BASE_IMAGE" \
  --build-arg CACHEBUST=$(date +%s) \
   -t "$REPO:$TAG" .

if [ -z "$TAG_SUFFIX" ]; then
  docker tag $REPO:$TAG $REPO:latest
else
  docker tag $REPO:$TAG $REPO:latest-$TAG_SUFFIX
fi

