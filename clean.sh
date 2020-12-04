#!/bin/bash
gprclean -r -P./adaprj.gpr -f --subdirs=opt
rm -rf obj/gnatprove
