#!/usr/bin/env bash

set -e

source ./library_scripts.sh

# nanolayer is a cli utility which keeps container layers as small as possible
# source code: https://github.com/devcontainers-extra/nanolayer
# `ensure_nanolayer` is a bash function that will find any existing nanolayer installations,
# and if missing - will download a temporary copy that automatically get deleted at the end
# of the script
ensure_nanolayer nanolayer_location "v0.5.6"

ppas_cmd=$(if ! [[ -z $PPAS ]]; then echo --ppas "${PPAS}" ; fi)
force_ppas_cmd=$(if [[ $FORCE_PPAS_ON_NON_UBUNTU == "true" ]]; then echo --force-ppas-on-non-ubuntu; else echo  --no-force-ppas-on-non-ubuntu ; fi)

$nanolayer_location install apt-get "$PACKAGES" \
   $ppas_cmd \
   $force_ppas_cmd


