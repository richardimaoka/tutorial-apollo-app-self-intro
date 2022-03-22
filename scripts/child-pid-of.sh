#!/bin/sh

EXIT_STATUS=0
CURRENT_FILE=$(basename "$0")

if [ $# -ne 1 ]
then
  echo "FAILED ($CURRENT_FILE): exactly one parameter expected but got $#" 1>&2
fi

ps -fxo pid,ppid | awk '$2=="'"$1"'" {print $1}' 