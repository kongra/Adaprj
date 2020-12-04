#!/bin/bash
export BUILD_TYPE=debug
export MAIN="$1"
gprbuild -d -P./adaprj.gpr --subdirs=opt
