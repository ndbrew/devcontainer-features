#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "ls /home/vscode/.local/share/helm/plugins/helm-secrets" ls /home/vscode/.local/share/helm/plugins/helm-secrets

reportResults
