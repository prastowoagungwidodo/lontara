#!/usr/bin/env bash

set -oue pipefail

FILE="/etc/os-release"
NEW_LOGO="lontara"

# Check if LOGO line exists
if grep -q "^LOGO=" "$FILE"; then
  # If it exists, update it
  sudo sed -i "s/^LOGO=.*/LOGO=\"$NEW_LOGO\"/" "$FILE"
  echo "LOGO updated to $NEW_LOGO"
else
  # If it doesn't exist, append it to the end of the file
  echo "LOGO=\"$NEW_LOGO\"" | sudo tee -a "$FILE"
  echo "LOGO added to $FILE"
fi
