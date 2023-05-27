#!/bin/bash

GITHUB_REPO=$1
DOCKER_REPO=$2

git clone https://github.com/$GITHUB_REPO.git
REPO_DIR=$(basename $GITHUB_REPO)

cd $REPO_DIR

docker build -t $DOCKER_REPO .

docker push $DOCKER_REPO

cd ..
rm -rf $REPO_DIR