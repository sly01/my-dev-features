#!/bin/bash
set -e

# Import the dev container CLI test library (optional but good practice)
source dev-container-features-test-lib

# The actual test
check "jq command exists" jq --version

# Report result
reportResults
