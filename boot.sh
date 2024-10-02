#!/usr/bin/bash

set -euo pipefail
set -x

path="${1}"

qemu-system-x86_64 \
    -enable-kvm \
    -cpu host \
    -m 8G \
    -bios /usr/share/edk2/ovmf/OVMF_CODE.fd \
    -snapshot \
    -drive file="${path}/output/qcow2/disk.qcow2"
