#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    echo "This script must be run with sudo."
    exit 1
fi

apt install autoconf libgtk-3-dev libnet1-dev libgtk2.0-dev libpcap-dev -y

cp lib/libnet.so /usr/lib/libnet.so.9
cp lib/libnet.so /usr/lib/libnet.so

./autogen.sh
./configure --with-gtk
#./configure --disable-gtk
make
make install
cd src/
