#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "nu -v" nu -v

reportResults
