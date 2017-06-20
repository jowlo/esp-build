. ./setenv.sh

docker build -t "$REPO:$TAG" .
docker tag $REPO:$TAG $REPO:latest
