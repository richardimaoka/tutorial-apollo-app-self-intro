#!/bin/sh

cd "$(dirname "$0")" || exit
cd ../ || exit # cd to the git repository root

EXIT_STATUS=0
CURRENT_FILE=$(basename "$0")

# test 1: if client is up
if scripts/keep-curling.sh http://localhost:3000
then
  echo "SUCCESS ($CURRENT_FILE): React client working" 1>&2
  exit 0
else
  echo "FAILED ($CURRENT_FILE): React client not working" 1>&2
  exit 1
fi

# test 2: take a screenshot 
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