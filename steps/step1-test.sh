#!/bin/sh

cd "$(dirname "$0")" || exit
cd ../ || exit # cd to the git repository root

EXIT_STATUS=0

if [ ! -f "index.html" ]
then
  echo "index.html not found after step 1"
  EXIT_STATUS=1
fi

if [ ! -f "profile.png" ]
then
  echo "profile.png not found after step 1"
  EXIT_STATUS=1
fi

# if either is missing, then non-zero exit
exit $EXIT_STATUS