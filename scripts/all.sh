#!/bin/sh

EXIT_STATUS=0
CURRENT_FILE=$(basename "$0")

cd "$(dirname "$0")" || exit
./cleanup.sh

cd ../ || exit 

steps/step1-1.sh
steps/step1-2-file-server.sh &
FILE_SERVER_PID=$!
sleep 2
steps/step1-2.test.sh 
scripts/kill-all-children.sh "$FILE_SERVER_PID"

# if ! kill -- -"$FILE_SERVER_PGID"
# then 
#   echo "FAILED ($CURRENT_FILE): could not stop file server with pgid=$FILE_SERVER_PGID (pid=$FILE_SERVER_PID)"
#   EXIT_STATUS=1
# else 
#   echo "SUCCESS ($CURRENT_FILE): stopped file server with pgid=$FILE_SERVER_PGID (pid=$FILE_SERVER_PID)"
# fi


scripts/cleanup.sh

# # exit $EXIT_STATUS