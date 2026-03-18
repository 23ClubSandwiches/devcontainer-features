#!/bin/bash
set -e

echo "Activating feature 'dioxus-tools'"

# Install dioxus-cli
curl -sSL https://dioxus.dev/install.sh | bash

# Add dioxus binary to PATH
export PATH="/root/.dx/bin:$PATH"

# Verify installation
if ! command -v dx --version &> /dev/null; then
    echo "dioxus-cli installation failed."
    exit 1
else
    echo "dioxus-cli installed successfully."
fi

echo "Feature 'dioxus-tools' activated successfully."