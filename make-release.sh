#!/bin/sh
# Consider adding -gnatVa (selected validity checking mode)
gprbuild -d -P./adaprj.gpr -j2 --subdirs=opt \
         -cargs:Ada -O3 -march=native -Wall -Wuninitialized -pedantic -gnatf -gnatU -gnata -gnatwcdfijklmopruvz -gnatn \
         -cargs:C   -O3 -march=native -Wall -pedantic \
         -cargs:C++ -O3 -march=native -Wall -pedantic
