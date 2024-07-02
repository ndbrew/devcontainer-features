#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "yq --version" yq --version

reportResults
