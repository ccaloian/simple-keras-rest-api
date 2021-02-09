#!/usr/bin/env bash

# Build image and add a descriptive tag
docker build -t image-recognition-app .
 
# List docker images
docker images

# Run flask app
docker run -p 5000:80 --name image-recognition image-recognition-app
