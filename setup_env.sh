#! /bin/bash

sudo sysctl -w kernel.unprivileged_userns_clone=0

task setup
cd poky
source oe-init-build-env 
cp -r ../../conf .

cat <<EOF
Setup complete. To build the image, run the following commands:
  $ bitbake core-image-base
  $ sudo dd if=tmp/deploy/images/raspberrypi4/core-image-base-raspberrypi4.rpi-sdimg of=/dev/sdd bs=4M status=progress
EOF
