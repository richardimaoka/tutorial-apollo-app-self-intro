#!/bin/sh

CURRENT_FILE=$(basename "$0")

if [ $# -ne 1 ]
then
  echo "FAILED ($CURRENT_FILE): exactly one parameter expected but got $#" 1>&2
fi

ps -fxo pid,ppid | awk '$1=="'"$1"'" {print $2}' 