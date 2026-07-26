#!/usr/bin/env bash

set -oue pipefail

echo "Make Zoitechat executable wrapped using bwrap"
echo "Patch desktop file to use the wrapper script"

chmod +x /usr/bin/zoitechat-wrapper
sed -i 's|Exec=zoitechat|Exec=/usr/bin/zoitechat-wrapper|g' /usr/share/applications/zoitechat.desktop

echo "Make Zoitechat executable wrapped using bwrap complete"
