#!/usr/sbin/bash

## Java VM setup, version must be niether too high nor too low
#
# emerge --ask dev-java/openjdk-bin:17
# eselect java-vm list
# eselect java-vm set system openjdk-bin-17
#
# emerge --ask dev-util/ccache
#
## setup build environment ; this is absurd because buildozer _creates_ a venv for the build!
## but it's needed because kivy and jnius MUST NOT be installed in the venv in which buildozer
## is running/called
#
# python -m venv .build
# . .venv_build/bin/activate
# pip install buildozer
# buildozer init
# pip install cython
# mkdir ~/.local/bin
## this, or add $JAVA_HOME tp $PATH
# ln -s /usr/lib64/openjdk-17/bin/java{,c} ~/.local/bin
# export PATH="~/.local/bin:${PATH}"
# buildozer android update

# . .build/bin/activate
export JAVA_HOME=/etc/java-config-2/current-system-vm
export PATH="${HOME}/.local/bin/:${PATH}"
buildozer android clean
buildozer -v android debug && \
adb install `ls -t bin/*.apk | head -1`


DOMAINE=`grep package.domain buildozer.spec | sed s/\ //g | cut -f 2 -d '='`
APPNAME=`grep package.name buildozer.spec | sed s/\ //g | cut -f 2 -d '='`
read -p "${DOMAIN}.${APPNAME} compililation succeeded ; press [enter] to install and log"

#ch.engrenage.hyperwatch/org.kivy.android.PythonActivity
adb logcat | grep --color=never ${DOMAIN}.${APPNAME}
