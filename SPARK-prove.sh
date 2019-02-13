#!/bin/bash
if [ $# -eq 0 ]
then
    cmd="gnatprove -P./adaprj.gpr -j2 --level=0"
    echo "executing: $cmd"
    eval $cmd
else
    cmd="gnatprove -P./adaprj.gpr -j2 --level=0 -u $@"
    echo "executing: $cmd"
    eval $cmd
fi
