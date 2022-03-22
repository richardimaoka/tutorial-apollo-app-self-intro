#!/bin/sh

CURRENT_FILE=$(basename "$0")

if [ $# -eq 0 ]
then
  echo "FAILED ($CURRENT_FILE): exactly one parameter expected but got 0 parameter" 1>&2
  exit 1
elif [ $# -ne 1 ]
then
  echo "FAILED ($CURRENT_FILE): exactly one parameter expected but got $# parameters = $*" 1>&2
  exit 1
fi

ps -fxo pid,ppid | awk '$2=="'"$1"'" {print $1}' 