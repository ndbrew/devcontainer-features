#!/bin/bash
set -e

source dev-container-features-test-lib

check "bw version" bw --version
check "which bw" bash -c "which bw | grep /usr/local/bin/bw"

reportResults