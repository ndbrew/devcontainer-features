#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "helm version" helm version

reportResults
