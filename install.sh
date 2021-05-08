#!/bin/sh

# Config
name=windcontrol
bin=/usr/local/bin/$name
svdir=/etc/runit/sv/$name

# Install windcontrol
sudo rm -f $bin
sudo cp -fv ./$name.sh $bin
sudo chmod 755 $bin

echo $name successfully installed.

test -d ./service/runit || exit 0
readlink /sbin/init | grep -qx runit-init || exit 0

sudo mkdir -p $svdir
sudo cp -rv ./service/runit $svdir/
sudo chmod -R 755 $svdir

echo runit service successfully installed.
