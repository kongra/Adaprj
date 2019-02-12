#!/bin/sh
gprclean -r -P./adaprj.gpr -f --subdirs=opt
rm -rf obj/gnatprove
