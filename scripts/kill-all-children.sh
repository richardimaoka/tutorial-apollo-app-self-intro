#!/bin/sh

cd "$(dirname "$0")" || exit

CURRENT_FILE=$(basename "$0")

if [ $# -ne 1 ]
then
  echo "FAILED ($CURRENT_FILE): exactly one parameter expected but got $#" 1>&2
  exit 1
fi

CHILD_PID=$(./child-pid-of.sh $1)
i=0
while [ -n "$CHILD_PID" ]
do
  # store the child pid to child_pid_i array
  eval child_pid_$i="$CHILD_PID"
  i=$((i+1))
  CHILD_PID=$(./child-pid-of.sh "$CHILD_PID")
done

echo "$child_pid_0"
echo "$child_pid_1"
echo "$child_pid_2"
echo "$child_pid_3"