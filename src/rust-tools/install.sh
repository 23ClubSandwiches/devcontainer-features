#!/bin/bash
set -e

echo "Activating feature 'rust-tools'"

# Install GNU Compiler Collection
apt install -y gcc

# Install rust via rustup
curl -o /tmp/rustup.sh --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf
chmod +x /tmp/rustup.sh
/tmp/rustup.sh -y --verbose --no-modify-path --default-toolchain stable

# Add cargo to PATH
export PATH="/root/.cargo/bin:$PATH"

# Verify installation
if ! command -v cargo --version &> /dev/null; then
    echo "rust installation failed."
    exit 1
else
    echo "rust installed successfully."
fi

echo "Feature 'rust-tools' activated successfully."