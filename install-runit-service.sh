#!/bin/sh
# Koonix 2020-08-24
# This script installs the runit service of windcontrol.
# Must be executed as root.

# Config
install_dir="/etc/runit/sv/windcontrol"

# Return error and exit if not run as root.
if [ "$(id -u)" != "0" ]
then
	echo "ERROR: This script must be run as root."
	exit 1
fi

# Check the init system and return error if it's not runit.
initsystem=$(stat /sbin/init | awk '/File:/ {print $4}')

if [ ! "$initsystem" = "runit-init" ] && [ ! "$1" = "-f" ]; then
    echo 'ERROR: "runit" not detected as your init system!'
    echo 'Use option -f to install anyway.'
    exit 1
fi

# Install the service..
mkdir -p "$install_dir"
cp -r ./autorun/runit "$install_dir"
chmod -R 755 "$install_dir"
