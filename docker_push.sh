#!/usr/bin/env bash
IMAGE_NAME="$DOCKER_IMAGE_NAME:$DOCKER_IMAGE_TAG"
echo "Building docker image $IMAGE_NAME"
docker build -t "$IMAGE_NAME" .
echo "$DOCKER_HUB_PASSWORD" | docker login -u "$DOCKER_HUB_USER" --password-stdin
docker push "$IMAGE_NAME"