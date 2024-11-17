#!/bin/bash

# Apply Chaos Experiment
kubectl apply -f ../experiments/pod-delete.yaml

# Apply Chaos Engine
kubectl apply -f ../experiments/chaos-engine.yaml

# Monitor Chaos Engine
kubectl get chaosengine -n default
