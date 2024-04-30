#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    echo "This script must be run with sudo."
    exit 1
fi

./autogen.sh
./configure --disable-gtk
make
make install
cd src/
