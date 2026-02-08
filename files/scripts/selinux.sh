#!/usr/bin/env bash

set -oue pipefail

dnf install -y --setopt=install_weak_deps=False policycoreutils-devel

# apply SELinux policies for trivalent browser
cd ./selinux/
make -f /usr/share/selinux/devel/Makefile trivalent.pp
semodule -i trivalent.pp
restorecon -FRv /usr
