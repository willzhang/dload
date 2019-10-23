#!/bin/bash

SHELL_SCRIPT=helm.sh
DOCKER_HUB=willdockerhub
TAG=$(echo $SHELL_SCRIPT | awk -F '.' '{print $1}')

cat > $SHELL_SCRIPT << EOF
#!/bin/bash
wget https://get.helm.sh/helm-${version}-linux-amd64.tar.gz
EOF

docker build -t ${DOCKER_HUB}/alpine-storage:${TAG} --build-arg SHELL_NAME=${SHELL_SCRIPT} .
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker push ${DOCKER_HUB}/alpine-storage:${TAG}
