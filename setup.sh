#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    echo "This script must be run with sudo."
    exit 1
fi

cp lib/libnet.so.9.0.0 /usr/lib/libnet.so.9
cp lib/libnet.so.9.0.0 /usr/lib/libnet.so

./autogen.sh
./configure --disable-gtk
make
make install
cd src/
