#!/usr/bin/env bash

set -euo pipefail

echo "Downloading ubuntu-mono-icons"
curl -L -o temp.zip "https://github.com/prastowoagungwidodo/ubuntu-mono-icons/archive/refs/tags/v0.0.2.zip" && unzip temp.zip -d /usr/share/icons && rm temp.zip
echo "ubuntu-mono-icons installed"

