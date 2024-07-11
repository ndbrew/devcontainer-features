#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "argocd version --client" argocd version --client

reportResults
