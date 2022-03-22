#!/bin/sh

cd "$(dirname "$0")" || exit
cd ../ || exit # cd to the git repository root

EXIT_STATUS=0
CURRENT_FILE=$(basename "$0")

# test 1: if index.html does not exist, then fail
if [ ! -f "index.html" ]
then
  echo "FAILED ($CURRENT_FILE): index.html not found" 1>&2
  EXIT_STATUS=1
fi

# test 2: if profile.png does not exist, then fail
if [ ! -f "profile.png" ]
then
  echo "FAILED ($CURRENT_FILE): profile.png not found" 1>&2
  EXIT_STATUS=1
fi

if [ $EXIT_STATUS -eq "0" ]
then
  echo "SUCCESS ($CURRENT_FILE): test successful"
fi 

# if either is missing, then non-zero exit
exit $EXIT_STATUS