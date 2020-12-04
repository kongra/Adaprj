#!/bin/bash
export MAIN="$1"
if [ $# -eq 0 ]
then
    cmd="gnatprove -P./adaprj.gpr -j2 --mode=flow"
    echo "executing: $cmd"
    eval $cmd
else
    cmd="gnatprove -P./adaprj.gpr -j2 --mode=flow -u $@"
    echo "executing: $cmd"
    eval $cmd
fi
