#!/usr/sbin/bash

# build for Android
. .build-env/bin/activate
export JAVA_HOME=/etc/java-config-2/current-system-vm
export PATH="$JAVA_HOME/bin:$PATH"
buildozer android clean
buildozer -v android debug


# Build for IOs
# TODO


# Build RPM/DEB
# TODO


# Build Windows installer/executable
# TODO

