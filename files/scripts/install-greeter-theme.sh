#!/usr/bin/env bash

set -euo pipefail

curl -sSL https://github.com/paranoid73/lightdm-webkit-theme-tactical/archive/refs/tags/v1.0.0.zip -o /tmp/lightdm-webkit-theme-tactical.zip && unzip -o /tmp/lightdm-webkit-theme-tactical.zip -d /usr/share/lightdm-webkit/themes/ && mv /usr/share/lightdm-webkit/themes/lightdm-webkit-theme-tactical-1.0.0 /usr/share/lightdm-webkit/themes/tactical && rm -f /tmp/lightdm-webkit-theme-tactical.zip
