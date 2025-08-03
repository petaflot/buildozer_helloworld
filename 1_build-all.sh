#!/usr/sbin/bash

DOMAINE=`grep package.domain buildozer.spec | sed s/\ //g | cut -f 2 -d '='`
APPNAME=`grep package.name buildozer.spec | sed s/\ //g | cut -f 2 -d '='`

# build for Android
. .build-env/bin/activate
export JAVA_HOME=/etc/java-config-2/current-system-vm
export PATH="$JAVA_HOME/bin:$PATH"
buildozer android clean
# TODO upstream: buildozer should not exit with 0 if compilation fails!
buildozer -v android debug && \
read -p "${DOMAIN}.${APPNAME} compilation finished ; press [enter] to install"
adb install `ls -t bin/*.apk | head -1` && \
echo -e "#\n#${DOMAIN}.${APPNAME} installed ; watching log\n#"

# clearing obsolete log entries first
adb logcat -c
adb logcat | grep --color=never ${DOMAIN}.${APPNAME} | tee /tmp/${DOMAIN}.${APPNAME}.log

# Build for iOS
# TODO


# Build RPM/DEB
# TODO


# Build Windows installer/executable
# TODO

