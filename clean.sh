#!/bin/bash
gprclean -r -P./telsos.gpr -f --subdirs=opt
rm -rf obj/gnatprove
