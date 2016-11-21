
curl-android-ios
================

#Library Versions
curl-7.51.0
OpenSSL-1.0.2j

This forked project has the applied pull request that fixes build on android and updated Curl & OpenSSL commits. The pre-built binaries were not updated for iOS, and the binaries for Android have not been tested.

The intent of this fork was to update the build scripts to test newer versions of the curl and openssl libs for my project

Please see https://github.com/gcesarmza/curl-android-ios for more details!

# Building
* Clone this repo `git clone https://github.com/jsuppe/curl-android-ios.git`
* Clone submodules `git submodule init && git submodule update`
* Make sure you have installed autoconf, automake and libtool or install them with `apt-get` or `brew`
* When building on Mac OS make sure you have Xcode Command Line Developer Tools installed
```
xcode-select --install
```

## Building for Android:
* Download Android NDK
```
cd curl-android-ios/curl-compile-scripts
export NDK_ROOT=PATH_WHERE_NDK_IS
./build_Android.sh
```

## Building for iOS
```
cd curl-android-ios/curl-compile-scripts
./build_iOS.sh
```
