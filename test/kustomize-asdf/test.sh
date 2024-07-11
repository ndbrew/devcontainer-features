#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "kustomize version" kustomize version

reportResults
