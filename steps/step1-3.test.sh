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

# test 2: if profile.png still exist in local, then fail
if [ -f "profile.png" ]
then
  echo "FAILED ($CURRENT_FILE): profile.png should be deleted, but still exist in local" 1>&2
  EXIT_STATUS=1
fi

# test 3: check if profile.png can be retrieved from the file server
echo "[Info] You might see [DEP0066] DeprecationWarning: OutgoingMessage.prototype._headers is deprecated, which is no issue but described in https://github.com/http-party/http-server/issues/537"
PROFILE_IMAGE_URL="http://localhost:8080/images/profile.png"
HTTP_STATUS_CODE=$(curl -o /dev/null -Isw '%{http_code}\n' "$PROFILE_IMAGE_URL") # https://stackoverflow.com/questions/41875177/check-if-url-returns-200-using-bash
if [ "$HTTP_STATUS_CODE" -ne "200" ]
then
  echo "FAILED ($CURRENT_FILE): file server $PROFILE_IMAGE_URL returned HTTP status = $HTTP_STATUS_CODE" 1>&2
  EXIT_STATUS=1
fi

# test 4: take screenshot
if ! (cd puppeteer && npm run step1-3 1>/dev/null)
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