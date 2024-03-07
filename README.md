# buildozer_helloworld
Kivy "Hello world" app for Android, IOs (TODO), and possibly others.

Is supposed to provide an example of a minimum app that will package for most known OSes, including GitHub actions.

This is WIP : just started, no guarantee to work.


**Instructions**

1. fork repo
2. make sure dependencies are installed (see *Preparation* below)
3. execute `build_all.sh`

To customize the skeleton to your needs, the following strings can be replaced in the entire repos:

* `buildozer_helloworld` is the canonical name of your app
* `Hello World!` is the full, friendly, human-redable ame of your app
* `org.test` is the package domain


## TODO

* support more OSes and/or package managers
    * IOS
    * Debian/Ubuntu (DEB)
    * RedHat (RPM)
    * Gentoo (ebuid)
    * ArchLinux (PKGBUILD)
    * Windows
    * MacOS
* github actions for build
* directory structure that allows pip installs
* post-packaging commands (deploy app to website, etc)


# Preparation

## PIP requirements

    pip install cython
    pip install kivy
    pip install buildozer

## Java

make sure `$JAVA_HOME` is set

### Debian/Ubuntu

TODO

### Gentoo

    eselect java-vm ...
