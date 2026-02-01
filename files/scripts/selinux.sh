#!/usr/bin/env bash

set -oue pipefail

# apply SELinux policies for trivalent browser
cd ./selinux/
make -f /usr/share/selinux/devel/Makefile trivalent.pp
semodule -i trivalent.pp
