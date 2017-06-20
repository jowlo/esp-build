REPO=malachib/esp-open-sdk
TAG=2017.06.20

docker build -t "$REPO:$TAG" .
docker tag $REPO:$TAG $REPO:latest
