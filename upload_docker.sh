#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=webdeveddie/machinelproject4

# Step 2:  
# Authenticate & tag
docker login --username=webdeveddie
docker tag 9a2b3da60458 webdeveddie/machinelproject4:v.01
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push webdeveddie/machinelproject4