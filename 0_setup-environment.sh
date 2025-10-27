#!/usr/bin/bash

if [ -f /etc/gentoo-release ]
then
	echo "Detected OS: Gentoo"
	sudo emerge dev-java/openjdk-bin:17 dev-util/ccache
# 	eselect java-vm list
# 	eselect java-vm set system $N
 	sudo eselect java-vm set `eselect java-vm list | grep openjdk-bin-17 | tr -s ' '| cut -f 2 -d ' ' | sed s/]// | sed s/\\\[//`
elif [ -f /etc/debian-release ]
then
	echo "Detected OS: Debian"
fi

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
