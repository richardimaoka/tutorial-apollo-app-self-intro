#!/bin/sh

cd "$(dirname "$0")" || exit

CURRENT_FILE=$(basename "$0")

if [ $# -ne 1 ]
then
  echo "FAILED ($CURRENT_FILE): exactly one parameter expected but got $#" 1>&2
  exit 1
fi

# recursively find the child process IDs into an array, until the leaf child
#   PID  PPID CMD
#   111   011 current-process             <- stored as child_pid_[0]
#   112   111  \ - child-process          <- stored as child_pid_[1]
#   113   112    \ - grand-child-process  <- stored as child_pid_[2]
#   114   113      \ - leaf-child-process <- stored as child_pid_[3]
CHILD_PID="$1"
i=0
while [ -n "$CHILD_PID" ]
do
  # store the child process ID to the array
  eval child_pid_$i="$CHILD_PID"
  i=$((i+1))

  # find the next child process ID
  CHILD_PID=$(./child-pid-of.sh "$CHILD_PID")
done

# at this point:
#   -  child_pid_[i]   = empty
#   -  child_pid_[i-1] = leaf child
# so, the below makes 
#      child_pid_[i]   = leaf child
i=$((i-1))

# then kill all children in the reverse order, from the leaf child, to the current process
while [ "$i" -ge 0 ]
do
  eval kill \$child_pid_"$i"
  i=$((i-1))
done