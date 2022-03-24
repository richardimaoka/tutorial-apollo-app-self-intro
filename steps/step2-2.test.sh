#!/bin/sh

cd "$(dirname "$0")" || exit
cd ../ || exit # cd to the git repository root

EXIT_STATUS=0
CURRENT_FILE=$(basename "$0")

# test 1: take a screenshot 
if ! (cd puppeteer && npm run step2-2 1>/dev/null)
then
  echo "FAILED ($CURRENT_FILE): failed to take the screenshot" 1>&2
  EXIT_STATUS=1
fi

if [ $EXIT_STATUS -eq "0" ]
then
  echo "SUCCESS ($CURRENT_FILE): test successful"
fi 

# if either is missing, then non-zero exit
exit $EXIT_STATUS