#!/bin/bash
export BUILD_TYPE=release
export MAIN="$1"
gprbuild -d -P./adaprj.gpr --subdirs=opt \
         -cargs:C   -O3 -march=native -Wall -pedantic \
         -cargs:C++ -O3 -march=native -Wall -pedantic
