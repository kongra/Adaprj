#!/bin/bash
export BUILD_TYPE=release
export MAIN="$1"
gprbuild -d -P./telsos.gpr --subdirs=opt \
         -cargs:C   -O2 -march=native -Wall -pedantic \
         -cargs:C++ -O2 -march=native -Wall -pedantic
