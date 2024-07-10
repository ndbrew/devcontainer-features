#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "ls /home/vscode/.config/kustomize/plugin/viaduct.ai/v1/ksops/ksops" ls /home/vscode/.config/kustomize/plugin/viaduct.ai/v1/ksops/ksops

reportResults
