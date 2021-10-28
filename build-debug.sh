#!/bin/bash
export BUILD_TYPE=debug
export MAIN="$1"
gprbuild -d -P./telsos.gpr --subdirs=opt
