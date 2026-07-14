#!/usr/bin/env bash

set -euo pipefail

echo "Downloading ubuntu-mono-icons"
curl -L -o temp.zip "https://github.com/prastowoagungwidodo/ubuntu-mono-icons/archive/refs/tags/v0.0.2.zip" && unzip temp.zip && mv ubuntu-mono-icons-0.0.2/*  /usr/share/icons && rm temp.zip && rm -rf ubuntu-mono-icons-0.0.2
echo "ubuntu-mono-icons installed"

