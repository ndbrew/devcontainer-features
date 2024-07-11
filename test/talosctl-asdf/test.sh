#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "talosctl version --client" talosctl version --client

reportResults
