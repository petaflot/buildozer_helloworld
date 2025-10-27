# buildozer_helloworld
Kivy "Hello world" app for Android, IOs (TODO), and possibly others.

Is supposed to provide an example of a minimal yet comprehensive app that will package for most known OSes, including GitHub actions.

This is WIP : just started, no guarantee to work.


**Instructions**

To test app locally, execute `./buildozer_helloworld`

To build,

1. execute `0_setup-environment.sh`
2. execute `1_build-all.sh`

To customize the skeleton to your needs, the following strings can be replaced in the entire repos:

* `buildozer_helloworld` is the canonical name of your app
* `HelloWorld` is the name of the app's python class
* `Hello World!` is the full, friendly, human-readable name of your app
* `org.test` is the package domain

There are also some files (ie. icons) you might want replaced ; use of `find` utility is recommended.

## Features

Features are configured as git branches. Recommended workflow is:

```
git merge feature_1`
git merge feature_2`
git merge feature_n`
mkdir ../my_project_with_all_features
cp -rpv * !$
cd !$
git init
./0_setup-environment.sh
vim main.py # make your changes here
./1_build-all.sh
```


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

