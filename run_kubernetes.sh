#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=webdeveddie/machinelproject4:v.01

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment machinelproject4-first --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/machinelproject4-first 800:80



