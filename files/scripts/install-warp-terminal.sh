#!/usr/bin/env bash

set -euo pipefail

ARCH=$(uname -m)
if [ "$ARCH" == "x86_64" ]; then
  echo "Detected architecture: x86_64"
  echo "Installing Warp Terminal..."
  DOWNLOAD_URL="https://releases.warp.dev/stable/v0.2026.04.08.08.36.stable_02/warp-terminal-v0.2026.04.08.08.36.stable_02-1.x86_64.rpm"

  curl -L "${DOWNLOAD_URL}" -o /tmp/warp-terminal.rpm

  dnf install -y /tmp/warp-terminal.rpm

  echo "Warp Terminal installation completed successfully."
else
  echo "Unsupported architecture: $ARCH"
  exit 1
fi
