#!/usr/bin/env bash

# Usage: ci-build-firmware.sh

set -e

: "${TAG:="$(date "+%Y%m%d%H%M%S")"}"

subdir="keyboards/keychron/k3/keymaps/iso_seyahdoo"

if [[ -d "qmk_firmware/$subdir" ]]; then
  rm -rf "qmk_firmware/$subdir"
fi

cp -rp "$subdir" qmk_firmware/keyboards/keychron/k6/keymaps

(cd qmk_firmware &&
  make -j4 keychron/k6/rgb/ansi:ansi-josh COLOR=false &&
  mv keychron_k3_rgb_optical_iso_iso_seyahdoo.bin ../build/"keychron_k3_rgb_optical_iso_iso_seyahdoo-$TAG.bin")
