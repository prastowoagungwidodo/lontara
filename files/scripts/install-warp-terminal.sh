#!/usr/bin/env bash

set -euo pipefail

ARCH=$(uname -m)
if [ "$ARCH" == "x86_64" ]; then
  echo "Detected architecture: x86_64"
  echo "Installing Warp Terminal..."
  DOWNLOAD_URL="https://app.warp.dev/get_warp?package=rpm"

  curl -L "${DOWNLOAD_URL}" -o /tmp/warp-terminal.rpm

  dnf install -y /tmp/warp-terminal.rpm

  echo "Warp Terminal installation completed successfully."
else
  echo "Unsupported architecture: $ARCH"
  exit 1
fi
