#!/bin/bash

# Variables
REGISTRY_URL="your.private.registry"
SERVICES_DIR="./services"
IMAGE_TAG="latest"

# Login to the private registry
docker login -u your-registry-username -p your-registry-password $REGISTRY_URL

# Iterate through services and build/push images
for service_dir in $SERVICES_DIR/*; do
    if [ -f "$service_dir/Dockerfile" ]; then
        service_name=$(basename $service_dir)
        image_name="$REGISTRY_URL/$service_name:$IMAGE_TAG"
        
        # Build the Docker image
        docker build -t $image_name $service_dir

        # Push the image to the registry
        docker push $image_name
    fi
done
