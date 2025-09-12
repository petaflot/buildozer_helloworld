# buildozer_helloworld
Kivy "Hello world" app for Android, IOs (TODO), and possibly others.

Is supposed to provide an example of a minimal yet comprehensive app that will package for most known OSes, including GitHub actions.

This is WIP : just started, no guarantee to work.


**Instructions**

1. execute `0_setup-environment.sh`
2. execute `1_build-all.sh`

To test app locally, execute `buildozer_helloworld`

To customize the skeleton to your needs, the following strings can be replaced in the entire repos:

* `buildozer_helloworld` is the canonical name of your app
* `HelloWorld` is the name of the app's python class
* `Hello World!` is the full, friendly, human-redable ame of your app
* `org.test` is the package domain

There are also some files (ie. icons) you might want replaced ; use of `find` utility is recommended.

## Branches

This project is organised in branches that each provide a specific feature and should be merged based on individual needs. Current branches are:

* main (minimal, does nothing besides opening a window)
* icon (bootsplash (TODO) and icon support)

## Requested branches

Branches that are requested and are WIP one way or another:

* Datetime with **pendulum**
* Location (GPS etc)
* Compass
* Accelerometer
* Vibrator
* Sound recording
* Camera
* Phone (dial, answer, record)
* Messaging (SMS)

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
* post-packaging commands (deploy app to website, etc)
