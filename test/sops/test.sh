#!/bin/bash
set -e

source dev-container-features-test-lib

check "sops version" sops --version
check "which sops" bash -c "which sops | grep /usr/local/bin/sops"

reportResults