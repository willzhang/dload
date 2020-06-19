#!/bin/bash

DOCKER_FILE=Dockerfile.vagrant
DOCKER_USERNAME=willdockerhub
TAG=$(echo $DOCKER_FILE | awk -F '.' '{print $2}')

docker build -t ${DOCKER_USERNAME}/dload:${TAG} -f ${DOCKER_FILE} .
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker push ${DOCKER_USERNAME}/dload:${TAG}
