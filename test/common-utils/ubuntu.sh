#!/bin/bash

# This test file will be executed against an auto-generated devcontainer.json that
# includes the 'common-utils' Feature with no options, testing on Ubuntu base image.
#
# For more information, see: https://github.com/devcontainers/cli/blob/main/docs/features/test.md
#
# These scripts are run as 'root' by default. Although that can be changed
# with the '--remote-user' flag.

set -e

# Optional: Import test library bundled with the devcontainer CLI
# See https://github.com/devcontainers/cli/blob/HEAD/docs/features/test.md#dev-container-features-test-lib
# Provides the 'check' and 'reportResults' commands.
source dev-container-features-test-lib

# Feature-specific tests
# Verify that Debian archive keyrings are installed
check "debian-archive-keyring installed" bash -c "apt list --installed 2>/dev/null | grep -q debian-archive-keyring"
check "debian-keyring installed" bash -c "apt list --installed 2>/dev/null | grep -q debian-keyring"
check "apt cache updated and functional" bash -c "apt-cache search bash > /dev/null"

# Report results
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults
