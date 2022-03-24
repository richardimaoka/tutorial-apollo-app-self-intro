#!/bin/sh

cd "$(dirname "$0")" || exit
cd ../ || exit # cd to the git repository root

EXIT_STATUS=0
CURRENT_FILE=$(basename "$0")

# test 1: if index.html still exist in local, then fail
if [ -f "index.html" ]
then
  echo "FAILED ($CURRENT_FILE): index.html should be deleted, but still exist in local" 1>&2
  EXIT_STATUS=1
fi

# if either is missing, then non-zero exit
exit $EXIT_STATUS