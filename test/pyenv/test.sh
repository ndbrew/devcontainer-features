#!/bin/bash
set -e

source dev-container-features-test-lib

check "pyenv version" pyenv --version
check "which sops" bash -c "which pyenv | grep /usr/share/pyenv/bin/pyenv"

reportResults