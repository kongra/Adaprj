#!/bin/sh
export BUILD=debug
gprbuild -vm -d -P./adaprj.gpr --subdirs=opt
