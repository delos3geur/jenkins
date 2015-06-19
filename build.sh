#!/bin/bash

set -e

make clean && make clobber

repo sync -c -d -f -j32

export USE_CCACHE=1
export CCACHE_NLEVELS=4
export CCACHE_DIR=/home/yajnab/.ccache
ccache -M 70G

. build/envsetup.sh
lunch omni_delos3geur-eng
time make -j8 bacon

make clean

