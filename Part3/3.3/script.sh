#!/bin/bash

# Check if the right number of arguments are passed
if [ "$#" -ne 2 ]; then
    echo "Usage: ./builder.sh github_repo docker_repo"
    exit 1
fi

# Set variables
GITHUB_REPO=$1
DOCKER_REPO=$2

# Clone the GitHub repository
git clone https://github.com/$GITHUB_REPO.git
REPO_DIR=$(basename $GITHUB_REPO)

# Navigate to the cloned repository
cd $REPO_DIR

# Build the Docker image
docker build -t $DOCKER_REPO .

# Push to Docker Hub
# Docker login command can be added here, if needed
docker push $DOCKER_REPO

# Navigate back and remove the cloned repository
cd ..
rm -rf $REPO_DIR

echo "Done."