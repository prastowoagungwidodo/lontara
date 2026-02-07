![Lontara](https://static.lontara.app/logo.png)

[![bluebuild build badge](https://github.com/prastowoagungwidodo/lontara/actions/workflows/build.yml/badge.svg)](https://github.com/prastowoagungwidodo/lontara/actions/workflows/build.yml)

Lontara is a GNU/Linux desktop operating system based on Fedora Atomic Desktop. It's designed for comfortable (easy and secure) everyday use.

## Features
- Pre-Installed [Trivalent](https://github.com/secureblue/Trivalent) Browser (Chromium based browser with security patch)
- Kernel Hardening using kernel arguments and sysctl configuration
- USB Guard
- Homebrew


## Installation

> [!WARNING]  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/prastowoagungwidodo/lontara:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/prastowoagungwidodo/lontara:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## ISO

If build on Fedora Atomic, you can generate an offline ISO with the instructions available [here](https://blue-build.org/learn/universal-blue/#fresh-install-from-an-iso). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/prastowoagungwidodo/lontara
```
