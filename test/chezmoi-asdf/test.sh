#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "chezmoi --version" chezmoi --version

reportResults
