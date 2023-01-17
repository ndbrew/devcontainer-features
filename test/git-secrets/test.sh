#!/bin/bash
set -e

source dev-container-features-test-lib

check "git secrets" git secrets
check "which git-secrets" bash -c "which git-secrets | grep /usr/local/bin/git-secrets"

reportResults
