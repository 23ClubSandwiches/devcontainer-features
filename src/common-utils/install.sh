#!/bin/bash
set -e

echo "Activating feature 'common-utils'"

# Update package cache and install GPG keyrings
cp custom.sources.list /etc/apt/sources.list.d/custom.sources.list
apt-get update
apt-get install -y debian-archive-keyring debian-keyring
apt-get install -y ubuntu-keyring
apt-get install -y curl unzip
apt-get upgrade -y

echo "Feature 'common-utils' activated successfully."
