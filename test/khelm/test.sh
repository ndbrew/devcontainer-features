#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "ls /home/vscode/.config/kustomize/plugin/khelm.mgoltzsche.github.com/v2/chartrenderer/ChartRenderer" ls /home/vscode/.config/kustomize/plugin/khelm.mgoltzsche.github.com/v2/chartrenderer/ChartRenderer

reportResults
