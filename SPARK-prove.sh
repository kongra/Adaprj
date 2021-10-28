#!/bin/bash
export MAIN="$1"
if [ $# -eq 0 ]
then
    cmd="gnatprove -P./telsos.gpr -j2 --level=0"
    echo "executing: $cmd"
    eval $cmd
else
    cmd="gnatprove -P./telsos.gpr -j2 --level=0 -u $@"
    echo "executing: $cmd"
    eval $cmd
fi
