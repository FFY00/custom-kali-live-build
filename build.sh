#!/bin/bash

git clone git://git.kali.org/live-build-config.git
echo 'Copying files...'
cp -rf custom/* live-build-config/kali-config/common
echo 'Starting build...'
live-build-config/build.sh --distribution kali-rolling --variant i3wm --verbose
