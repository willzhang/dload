#!/bin/bash

DOCKER_HUB=willdockerhub
DOCKER_FILE=Dockerfile.helm
TAG=$(ls ${DOCKERFILE} | awk -F . '{print $2}')

docker build -t ${DOCKER_HUB}/alpine-storage:${TAG} -f ${DOCKERFILE}

docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker push ${DOCKER_HUB}/alpine-storage:${TAG}
