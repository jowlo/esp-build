. ./base/setenv.sh

# repo/tag coming from setenv
export BASE_IMAGE=$REPO:$TAG

export REPO=malachib/esp-open-rtos
export TAG_PREFIX=2017.06.21
export TAG_SUFFIX=lwip2
export TAG=$TAG_PREFIX-$TAG_SUFFIX
export GIT_REPO=https://github.com/ourairquality/esp-open-rtos.git
export GIT_BRANCH=lwip2
