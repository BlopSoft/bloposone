#!/bin/sh

lb config -d sid \
          --debian-installer live \
          --debian-installer-distribution bookworm \
          --debian-installer-gui false \
          --archive-areas "main contrib non-free-firmware non-free" \
          --debootstrap-options "--variant=minbase" \
          --iso-publisher 'Blop OS for home use' \
          --iso-volume bloposone \
          --clean \
          --color \
          --image-name bloposone
          
sudo lb build
