#!/usr/bin/env bash

deps(){
  apt install libcanberra-gtk-module -y;
  pip install clipboard
}

if [[ $# -ge 1 ]]; then
  deps;
fi

mkdir -p /opt/exliuk;
cp passwd.py /opt/exliuk/passwd.py;
echo "#!/bin/bash
python2.7 /opt/exliuk/passwd.py \$1 \$2" > /usr/bin/exliuk;
chmod +x /usr/bin/exliuk;
exit 0;
