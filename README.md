# Chaos Engineering Platform

This project simulates failures in a live-streaming app using LitmusChaos and Kubernetes, and designs recovery mechanisms.

## What is Chaos Engineering?

Chaos Engineering is the practice of experimenting on a system to build confidence in its ability to withstand turbulent conditions in production. The goal is to identify weaknesses and improve the system's resilience by intentionally introducing failures and observing how the system responds. This practice was popularized by Netflix through their [Chaos Monkey](https://netflix.github.io/chaosmonkey/) tool, which randomly disables production instances to ensure that their services can tolerate unexpected disruptions. Netflix later formalized the principles of Chaos Engineering in their [Chaos Engineering](https://principlesofchaos.org/) documentation.

## Prerequisites

- Minikube
- kubectl

## Setup

1. Start Minikube and install LitmusChaos:

    ```sh
    ./scripts/setup.sh
    ```

2. Deploy the Nginx application:

    ```sh
    kubectl apply -f experiments/nginx-deployment.yaml
    ```

## Running the Chaos Experiment

1. Apply the chaos experiment and chaos engine:

    ```sh
    ./scripts/run_experiment.sh
    ```

2. Monitor the chaos engine:

    ```sh
    kubectl get chaosengine -n default
    ```

3. Check the logs of the chaos experiment for detailed information:

    ```sh
    kubectl logs -f <chaos-pod-name> -n litmus
    ```

## Cleanup

1. Clean up the resources:

    ```sh
    ./scripts/cleanup.sh
    ```

## Summary

1. Set up the environment using `setup.sh`.
2. Deploy the Nginx application.
3. Run the chaos experiment using `run_experiment.sh`.
4. Monitor the chaos engine.
5. Clean up the resources using `cleanup.sh`.

This setup will help you simulate failures in a live-streaming app and design recovery mechanisms using LitmusChaos and Kubernetes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
