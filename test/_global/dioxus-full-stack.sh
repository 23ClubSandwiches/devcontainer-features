#!/bin/bash

# The 'test/_global' folder is a special test folder that is not tied to a single feature.
#
# This test file is executed against a running container constructed
# from the value of 'dioxus-full-stack' in the test/_global/scenarios.json file.
#
# The value of a scenarios element is any properties available in the 'devcontainer.json'.
# Scenarios are useful for testing specific options in a feature, or to test a combination of features.
#
# This test can be run with the following command (from the root of this repo)
#    devcontainer features test --global-scenarios-only .

set -e

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib

echo -e "Testing Dioxus full-stack (common-utils + rust-tools + dioxus-tools)...\n"

# Feature-specific tests
# Verify the complete Dioxus development stack is functional
check "rustc is available" rustc --version
check "cargo is available" cargo --version
check "rustup is available" rustup --version
check "dioxus-cli is available" dx --version

# Report result
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults
