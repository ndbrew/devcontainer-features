#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "velero version --client-only" velero version --client-only

reportResults
