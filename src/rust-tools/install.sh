#!/bin/bash
set -e

echo "Activating feature 'rust-tools'"

# Install rust via rustup
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh

# Verify installation
if ! command -v cargo --version &> /dev/null; then
    echo "rust installation failed."
    exit 1
else
    echo "rust installed successfully."
fi

echo "Feature 'rust-tools' activated successfully."