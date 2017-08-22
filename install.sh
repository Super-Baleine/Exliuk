#!/usr/bin/env bash

if [ ! -z "$1" ];then
  apt install libcanberra-gtk-module -y;
  pip install clipboard
fi

mkdir -p /opt/exliuk;
cp passwd.py /opt/exliuk/passwd.py;
echo "#!/bin/bash
python2.7 /opt/exliuk/passwd.py \$1 \$2" > /usr/bin/exliuk;
chmod +x /usr/bin/exliuk;
exit 0;
