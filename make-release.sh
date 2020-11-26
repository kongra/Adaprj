#!/bin/sh
export BUILD=release
gprbuild -d -P./adaprj.gpr --subdirs=opt \
         -cargs:C   -O3 -march=native -Wall -pedantic \
         -cargs:C++ -O3 -march=native -Wall -pedantic
