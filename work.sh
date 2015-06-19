#!/bin/bash

set -e

curl -L -o .repo/local_manifests/manifest_samsung_delos3geur.xml -O -L https://raw.githubusercontent.com/delos3geur/android_local_manifest/android-5.1/manifest_samsung_delos3geur.xml --create-dirs
curl -L -o ./build.sh -O -L https://raw.githubusercontent.com/delos3geur/jenkins/master/build.sh

chmod 755 build.sh

./build.sh
