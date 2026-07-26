#!/usr/bin/env bash

exec bwrap \
  --unshare-all \
  --share-net \
  --new-session \
  --die-with-parent \
  --ro-bind /usr /usr \
  --ro-bind /lib /lib \
  --ro-bind /lib64 /lib64 \
  --ro-bind /bin /bin \
  --ro-bind /sbin /sbin \
  --ro-bind /etc /etc \
  --dev /dev \
  --dev-bind /dev/dri /dev/dri \
  --proc /proc \
  --tmpfs /tmp \
  --ro-bind /tmp/.X11-unix /tmp/.X11-unix \
  --ro-bind-try /run/systemd/resolve /run/systemd/resolve \
  --ro-bind-try /var/lib/ca-certificates /var/lib/ca-certificates \
  --ro-bind-try /etc/ssl /etc/ssl \
  --ro-bind-try /etc/pki /etc/pki \
  --setenv DISPLAY "$DISPLAY" \
  --setenv XAUTHORITY "$XAUTHORITY" \
  --setenv LANG "$LANG" \
  zoitechat "$@"
