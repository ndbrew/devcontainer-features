#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "ping -V" ping -V

reportResults
