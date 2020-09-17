#!/bin/sh
# Koonix 2020-08-24
# This script install the windcontrol script in /usr/bin.
# Run it as root.

# Return error if not run as root.
if [ "$(id -u)" != "0" ]
then
	echo "ERROR: This script must be run as root."
	exit 1
fi

# Install windcontrol.
install_path="/usr/bin/windcontrol"
cp ./windcontrol "$install_path"
chmod 755 /usr//windcontrol "$install_path"
