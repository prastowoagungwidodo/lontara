#!/usr/bin/env bash

set -oue pipefail

echo "Make Zoitechat executable wrapped using bwrap"
echo "Patch desktop file to use the wrapper script"

// Wrapper script located at /usr/local/bin/zoitechat-wrapper.sh
// Change Exec line in desktop file to point to the wrapper script

chmod +x /usr/local/bin/zoitechat-wrapper.sh
sed -i 's|Exec=zoitechat|Exec=/usr/local/bin/zoitechat-wrapper.sh|g' /usr/share/applications/zoitechat.desktop

echo "Make Zoitechat executable wrapped using bwrap complete"
