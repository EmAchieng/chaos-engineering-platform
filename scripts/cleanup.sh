#!/bin/bash

# Delete Chaos Engine
kubectl delete -f ../experiments/chaos-engine.yaml

# Delete Chaos Experiment
kubectl delete -f ../experiments/pod-delete.yaml

# Delete Nginx Deployment
kubectl delete -f ../experiments/nginx-deployment.yaml

# Stop Minikube
minikube stop
