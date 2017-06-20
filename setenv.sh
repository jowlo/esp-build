. ./base/setenv.sh

# repo/tag coming from setenv
export BASE_IMAGE=$REPO:$TAG

export REPO=malachib/esp-open-rtos
#BASE_IMAGE=malachib/esp-open-sdk:2017.06.20
export TAG_PREFIX=2017.06.20
export TAG_SUFFIX=mal-lwip
export TAG=$TAG_PREFIX-$TAG_SUFFIX
export GIT_REPO=https://github.com/malachi-iot/esp-open-rtos.git
export GIT_BRANCH=lwip2
