#!/bin/bash
set -e

echo "Activating feature 'common-utils'"

# Update package cache and install GPG keyrings
apt-get update
apt-get install -y debian-archive-keyring debian-keyring
apt-get install -y ubuntu-archive-keyring ubuntu-keyring
apt-get upgrade -y

echo "Feature 'common-utils' activated successfully."
