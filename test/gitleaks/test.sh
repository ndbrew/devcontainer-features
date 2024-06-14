#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "gitleaks version" gitleaks version

reportResults
