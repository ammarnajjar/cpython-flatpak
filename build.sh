#!/bin/sh

set -ux

flatpak install flathub org.freedesktop.Platform//18.08 org.freedesktop.Sdk//18.08

flatpak-builder --ccache --require-changes --force-clean --repo=repo --subject="3.8.1rc1 build of CPython, `date`" app org.flatpak.Python.json
flatpak build-update-repo -v --prune --prune-depth=20 repo

# The following commands should be performed once
flatpak --user remote-add --no-gpg-verify nightly-python ./repo || true
flatpak --user -v install nightly-python org.flatpak.Python || true

flatpak update --user org.flatpak.Python

# Create a symlink to the created binary
sudo rm -f /usr/local/bin/python3.8
sudo ln -s $HOME/.local/share/flatpak/app/org.flatpak.Python/current/active/files/bin/python3.8 /usr/local/bin/python3.8
