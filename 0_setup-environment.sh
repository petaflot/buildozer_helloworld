#!/usr/sbin/bash

#
# setup build environment
#

# emerge --ask dev-java/openjdk:8
# eselect java-vm list
# eselect java-vm set system $N
#
# emerge --ask dev-util/ccache

python -m venv .build-env
. .build-env/bin/activate
pip install cython
pip install setuptools # python >= 3.12
pip install buildozer
buildozer init
buildozer update
# DO NOT INSTALL kivy,jnius
#mkdir ~/.local/bin
#ln -s /usr/lib64/openjdk-8/bin/java{,c} ~/.local/bin
#export PATH="${HOME}/.local/bin:${PATH}"

#
# setup app environment
#
python -m venv .venv
. .venv/bin/activate
pip install -r requirements.txt
