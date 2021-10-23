#!/bin/bash
source /opt/intel/oneapi/setvars.sh
set -ex

cd spec
cat accel-1.4.tar.xz.* | tar xfJ -
./install.sh -f -u linux-suse10-amd64
source ./shrc
runspec --flagsurl=http://www.spec.org/accel/flags/Intel-compiler-linux64.xml --config=intel-omp.cfg --tune=base --action build openmp
