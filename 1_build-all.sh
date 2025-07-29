#!/usr/sbin/bash

DOMAINE=`grep package.domain buildozer.spec | sed s/\ //g | cut -f 2 -d '='`
APPNAME=`grep package.name buildozer.spec | sed s/\ //g | cut -f 2 -d '='`

# build for Android
. .build-env/bin/activate
export JAVA_HOME=/etc/java-config-2/current-system-vm
export PATH="$JAVA_HOME/bin:$PATH"
buildozer android clean
buildozer -v android debug && \
read -p "${DOMAIN}.${APPNAME} compilation finished ; press [enter] to install"
adb install `ls -t bin/*.apk | head -1` && \
echo "${DOMAIN}.${APPNAME} installed ; watching log"

#ch.engrenage.hyperwatch/org.kivy.android.PythonActivity
adb logcat | grep --color=never ${DOMAIN}.${APPNAME}

# Build for IOs
# TODO


# Build RPM/DEB
# TODO


# Build Windows installer/executable
# TODO

