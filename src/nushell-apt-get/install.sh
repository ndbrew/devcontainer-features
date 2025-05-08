set -e

. ./library_scripts.sh

# nanolayer is a cli utility which keeps container layers as small as possible
# source code: https://github.com/devcontainers-extra/nanolayer
# `ensure_nanolayer` is a bash function that will find any existing nanolayer installations, 
# and if missing - will download a temporary copy that automatically get deleted at the end 
# of the script
ensure_nanolayer nanolayer_location "v0.5.6"

curl -fsSL https://apt.fury.io/nushell/gpg.key | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/fury-nushell.gpg
echo "deb https://apt.fury.io/nushell/ /" | sudo tee /etc/apt/sources.list.d/fury.list

$nanolayer_location \
    install \
    devcontainer-feature \
    "ghcr.io/ndbrew/devcontainer-features/apt-get-packages:1.0.8" \
    --option packages='nushell'

rm /etc/apt/trusted.gpg.d/fury-nushell.gpg /etc/apt/sources.list.d/fury.list
echo 'Done!'
