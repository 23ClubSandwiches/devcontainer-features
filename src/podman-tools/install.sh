#!/bin/bash
set -e

echo "Activating feature 'podman-tools'"

# Install podman
apt update
apt install -y podman

# Verify installation
if ! command -v podman version &> /dev/null; then
    echo "podman installation failed."
    exit 1
else
    echo "podman installed successfully."
fi

# Install podman-compose
apt-get install -y podman-compose

# Verify installation
if ! command -v podman compose version &> /dev/null; then
    echo "podman-compose installation failed."
    exit 1
else
    echo "podman-compose installed successfully."
fi

echo "Feature 'podman-tools' activated successfully."