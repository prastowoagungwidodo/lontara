#!/usr/bin/env bash
set -euo pipefail

# Installs DMZ White and DMZ Black cursor themes

DMZ_WHITE_URL="https://github.com/rhizoome/dmz-cursors/releases/download/v1.0/dmz-white.tar.xz"
DMZ_BLACK_URL="https://github.com/rhizoome/dmz-cursors/releases/download/v1.0/dmz-black.tar.xz"

INSTALL_DIR="/usr/share/icons"
TMP_DIR="$(mktemp -d)"

cleanup() {
  rm -rf "$TMP_DIR"
}
trap cleanup EXIT

echo "Downloading DMZ cursor themes..."

curl -L "$DMZ_WHITE_URL" -o "$TMP_DIR/dmz-white.tar.xz"
curl -L "$DMZ_BLACK_URL" -o "$TMP_DIR/dmz-black.tar.xz"

echo "Extracting archives..."

tar -xJf "$TMP_DIR/dmz-white.tar.xz" -C "$TMP_DIR"
tar -xJf "$TMP_DIR/dmz-black.tar.xz" -C "$TMP_DIR"

echo "Installing themes to $INSTALL_DIR..."

find "$TMP_DIR" -maxdepth 1 -type d \( -name "dmz-white" -o -name "dmz-black" \) \
  -exec cp -a {} "$INSTALL_DIR/" \;
