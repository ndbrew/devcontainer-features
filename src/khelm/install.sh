#!/usr/bin/env bash

# VERBOSITY=0
set -e

if [ "$(id -u)" -ne 0 ]; then
	echo -e 'Script must be run as root. Use sudo, su, or add "USER root" to your Dockerfile before running this script.'
	exit 1
fi

# Checks if packages are installed and installs them if not
check_packages() {
	if ! dpkg -s "$@" >/dev/null 2>&1; then
		if [ "$(find /var/lib/apt/lists/* | wc -l)" = "0" ]; then
			echo "Running apt-get update..."
			apt-get update -y
		fi
		apt-get -y install --no-install-recommends "$@"
	fi
}

# making sure curl is there, you never know
check_packages ca-certificates curl

if [ "$VERSION" == "latest" ]; then
	VERSION=$(curl -sL https://api.github.com/repos/mgoltzsche/khelm/releases/latest | jq -r ".tag_name")
fi

mkdir -p ${_REMOTE_USER_HOME}/.config/kustomize/plugin/khelm.mgoltzsche.github.com/v2/chartrenderer
curl -L -o ${_REMOTE_USER_HOME}/.config/kustomize/plugin/khelm.mgoltzsche.github.com/v2/chartrenderer/ChartRenderer https://github.com/mgoltzsche/khelm/releases/download/${VERSION}/khelm-linux-amd64
chmod +x ${_REMOTE_USER_HOME}/.config/kustomize/plugin/khelm.mgoltzsche.github.com/v2/chartrenderer/ChartRenderer

# Clean up
apt-get clean
rm -rf /var/lib/apt/lists/*

echo "Done!"
