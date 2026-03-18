#!/bin/bash
set -e

echo "Activating feature 'kubernetes-tools'"

# Install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
mv ./kubectl /usr/local/bin/kubectl

# Verify kubectl installation
if ! command -v kubectl version &> /dev/null; then
    echo "kubectl installation failed."
    exit 1
else
    echo "kubectl installed successfully."
fi

# Install kompose
curl -L https://github.com/kubernetes/kompose/releases/download/v1.37.0/kompose-linux-amd64 -o kompose
chmod +x kompose
mv ./kompose /usr/local/bin/kompose

# Verify kompose installation
if ! command -v kompose version &> /dev/null; then
    echo "kompose installation failed."
    exit 1
else
    echo "kompose installed successfully."
fi

echo "Feature 'kubernetes-tools' activated successfully."