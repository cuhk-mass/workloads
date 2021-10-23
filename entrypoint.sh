#!/bin/bash

# https://stackoverflow.com/questions/12314451/accessing-bash-command-line-args-vs
# Syntax	Effective result
# $*	$1 $2 $3 … ${N}
# $@	$1 $2 $3 … ${N}
# "$*"	"$1c$2c$3c…c${N}"
# "$@"	"$1" "$2" "$3" … "${N}"
source /opt/intel/oneapi/setvars.sh &>/dev/null && bash -c "$*"
