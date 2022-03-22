#!/bin/sh

cd "$(dirname "$0")" || exit

CURRENT_FILE=$(basename "$0")

if [ $# -ne 1 ]
then
  echo "FAILED ($CURRENT_FILE): exactly one parameter expected but got $#" 1>&2
  exit 1
fi

CHILD_PID=$(./child-pid-of.sh $1)

while [ -n "$CHILD_PID" ]
do
  echo "$CHILD_PID"
  CHILD_PID=$(./child-pid-of.sh "$CHILD_PID")
done