#!/bin/bash
source /opt/intel/oneapi/setvars.sh
set -ex

cd graph500
tee make.inc << EOF
CC = icc
CFLAGS = -g -std=c99 -Wall -O3 -march=native -flto
LDLIBS = -lm -lrt
BUILD_OPENMP = Yes
CFLAGS_OPENMP = -fopenmp
EOF

make -j$(nproc)
