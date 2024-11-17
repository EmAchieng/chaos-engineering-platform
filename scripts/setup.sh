#!/bin/bash

# Start Minikube
minikube start

# Install LitmusChaos
kubectl apply -f https://litmuschaos.github.io/litmus/litmus-operator-v1.13.8.yaml

# Create Nginx Deployment
kubectl apply -f ../experiments/nginx-deployment.yaml
