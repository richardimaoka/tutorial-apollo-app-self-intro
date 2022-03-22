#!/bin/sh

cd "$(dirname "$0")" || exit
cd ../ || exit # cd to the git repository root

EXIT_STATUS=0
CURRENT_FILE=$(basename "$0")

if [ ! -f "index.html" ]
then
  echo "FAILED ($CURRENT_FILE): index.html not found"
  EXIT_STATUS=1
fi

if [ ! -f "profile.png" ]
then
  echo "FAILED ($CURRENT_FILE): profile.png not found"
  EXIT_STATUS=1
fi

if [ $EXIT_STATUS -eq "0" ]
then
  echo "SUCCESS ($CURRENT_FILE): test successful"
fi 

# if either is missing, then non-zero exit
exit $EXIT_STATUS