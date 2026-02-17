#!/usr/bin/env bash

set -euo pipefail

sed -i -e '$a\LD_PRELOAD DEFAULT="libhardened_malloc.so libno_rlimit_as.so"' -e '/^LD_PRELOAD[[:space:]]/d' /etc/security/pam_env.conf

# Set ld_preload only for the root user
chmod 600 /etc/ld.so.preload
