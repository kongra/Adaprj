#!/bin/sh
gprbuild -d -P/home/kongra/Pulpit/Adaprj/adaprj.gpr -j2 --subdirs=opt -cargs:Ada -O3 -march=native -Wall -Wuninitialized -pedantic -gnatf -gnatVa -gnatU -gnatwcdfijklmopruvz -gnatn -cargs:C -O3 -march=native -Wall -pedantic -cargs:C++ -O3 -march=native -Wall -pedantic
