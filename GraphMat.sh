#!/bin/bash
source /opt/intel/oneapi/setvars.sh
set -ex

cd GraphMat
git submodule update --init --recursive
# apt install libboost-all-dev
make -j$(nproc)
