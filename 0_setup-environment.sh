#!/usr/sbin/bash

# Required system packages
#	Gentoo:
# 		emerge dev-java/openjdk-bin:17
# 		eselect java-vm list
# 		eselect java-vm set system $N
#
# 		emerge dev-util/ccache

#
# setup build environment
#
python -m venv .build-env
. .build-env/bin/activate
pip install `cat build-env.freeze`
buildozer init
buildozer update
# DO NOT INSTALL kivy,jnius

#
# setup app environment
#
python -m venv .venv
. .venv/bin/activate
pip install -r requirements.txt
