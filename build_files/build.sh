#!/bin/bash

set -ouex pipefail

### Install packages for FartOS

# Install specific FartOS gaming software (RPM Fusion repos are available by default in these builds)
dnf5 install -y \
    steam \
    wine \
    protontricks \
    gamemode \
    libreoffice-writer \
    mesa-vulkan-drivers \
# Remove unnecessary LibreOffice components (keep only writer)
dnf5 -y remove \
    libreoffice-calc \
    libreoffice-impress \
    libreoffice-draw \
    libreoffice-base \
    libreoffice-math \
    libreoffice-core

#### Example for enabling a System Unit File
# systemctl enable podman.socket
