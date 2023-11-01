#!/bin/bash

# Variables
REGISTRY_URL="your.private.registry"
SERVICES_DIR="./services"

# Get the Git commit hash
GIT_COMMIT_HASH=$(git rev-parse --short HEAD)

# Login to the private registry
docker login -u your-registry-username -p your-registry-password $REGISTRY_URL

# Iterate through services and build/push images
for service_dir in $SERVICES_DIR/*; do
    if [ -f "$service_dir/Dockerfile" ]; then
        service_name=$(basename $service_dir)
        image_name="$REGISTRY_URL/$service_name:$GIT_COMMIT_HASH"

        # Build the Docker image with the custom version tag
        docker build -t $image_name --build-arg APP_VERSION=$GIT_COMMIT_HASH $service_dir
        docker push $image_name
    fi
done
