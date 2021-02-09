#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath="ccaloian/image-recognition"

# Run the Docker Hub container with kubernetes
kubectl run imagerecognition \
    --image=$dockerpath \
    --port=80 \
    --labels app=imagerecognition

# wait 60s for the pod to be ready before forwarding
sleep 120

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward imagerecognition 5000:80
